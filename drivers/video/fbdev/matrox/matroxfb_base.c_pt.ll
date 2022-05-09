; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_base.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+matroxfb_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_register_driver\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matroxfb_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matroxfb_wait_for_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_wait_for_sync\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_wait_for_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_wait_for_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_wait_for_sync\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_wait_for_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matroxfb_enable_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_enable_irq\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_enable_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.board = type { i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.video_board = type { i32, i32, i32, ptr }
%struct.matrox_switch = type { ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.matrox_altout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.anon.109 = type { %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RGBT = type { i8, %struct.anon.110, %struct.anon.110, %struct.anon.110, %struct.anon.110, i8 }
%struct.anon.110 = type { i8, i8 }
%struct.anon.111 = type { i32, i32 }
%struct.anon.112 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i32, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, ptr, %struct.anon.81, %struct.anon.82, %struct.anon.85, [3 x %struct.anon.87], [5 x ptr], [5 x ptr], i32, %struct.anon.88, %struct.anon.89, i32, i32, ptr, %struct.anon.90, %struct.anon.91, i32, i32, i32, i32, %struct.anon.92, i32, %struct.anon.93, %struct.fb_ops, %struct.matrox_bios, %struct.anon.96, %struct.anon.97, %struct.anon.99, [16 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%union.anon.78 = type { ptr }
%struct.matroxfb_par = type { i32, i32, %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i8, i32, i32, i32, i32 }
%struct.anon.81 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.82 = type { %struct.matrox_vsync, i32, i32, ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.85 = type { %struct.rw_semaphore, %struct.anon.86 }
%struct.anon.86 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.87 = type { i32, ptr, ptr, i32, i32 }
%struct.anon.88 = type { i32, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { ptr }
%struct.anon.89 = type { i32, %struct.vaddr_t, i32 }
%struct.anon.90 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.91 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.92 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_bios = type { i8, i32, [128 x i8], %struct.anon.94, %struct.anon.95 }
%struct.anon.94 = type { i8, i8, i8 }
%struct.anon.95 = type { i8, i8 }
%struct.anon.96 = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32, i32 }
%struct.anon.97 = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32, [4 x %struct.anon.98] }
%struct.anon.98 = type { i32, i32 }
%struct.anon.99 = type { %struct.anon.100, %struct.anon.101, %struct.anon.102 }
%struct.anon.100 = type { i32, i32 }
%struct.anon.101 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.102 = type { i8, [3 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.matroxfb_driver = type { %struct.list_head, ptr, ptr, ptr }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_vblank = type { i32, i32, i32, i32, [4 x i32] }
%struct.matroxioc_output_mode = type { i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_control = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.matroxfb_dh_fb_info = type { %struct.fb_info, i32, i32, ptr, %struct.anon.83, %struct.anon.84, i8, [16 x i32] }
%struct.anon.83 = type { i32, %struct.vaddr_t, i32, i32, i32, i32, i32 }
%struct.anon.84 = type { i32, %struct.vaddr_t, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"matroxfb\00", [23 x i8] zeroinitializer }, align 32
@matroxfb_enable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017matroxfb: someone disabled IRQ [%08X]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"matroxfb_enable_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/video/fbdev/matrox/matroxfb_base.c\00", [53 x i8] zeroinitializer }, align 32
@matroxfb_enable_irq._entry_ptr = internal global ptr @matroxfb_enable_irq._entry, section ".printk_index", align 4
@matroxfb_driver_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @matroxfb_driver_list, ptr @matroxfb_driver_list }, [24 x i8] zeroinitializer }, align 32
@matroxfb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @matroxfb_list, ptr @matroxfb_list }, [24 x i8] zeroinitializer }, align 32
@matroxfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @matroxfb_devices, ptr @matroxfb_probe, ptr @pci_remove_matrox, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_matroxfb_base__305_2604_matroxfb_init6 = internal global ptr @matroxfb_init, section ".initcall6.init", align 4
@__exitcall_matrox_done = internal global ptr @matrox_done, section ".exitcall.exit", align 4
@__kstrtab_matroxfb_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_register_driver to i32), ptr @__kstrtab_matroxfb_register_driver, ptr @__kstrtabns_matroxfb_register_driver }, section "___ksymtab+matroxfb_register_driver", align 4
@__kstrtab_matroxfb_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_unregister_driver to i32), ptr @__kstrtab_matroxfb_unregister_driver, ptr @__kstrtabns_matroxfb_unregister_driver }, section "___ksymtab+matroxfb_unregister_driver", align 4
@__kstrtab_matroxfb_wait_for_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_wait_for_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_wait_for_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_wait_for_sync to i32), ptr @__kstrtab_matroxfb_wait_for_sync, ptr @__kstrtabns_matroxfb_wait_for_sync }, section "___ksymtab+matroxfb_wait_for_sync", align 4
@__kstrtab_matroxfb_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_enable_irq to i32), ptr @__kstrtab_matroxfb_enable_irq, ptr @__kstrtabns_matroxfb_enable_irq }, section "___ksymtab+matroxfb_enable_irq", align 4
@matroxfb_devices = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 4139, i32 1305, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1307, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1311, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1306, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1312, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1330, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1313, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 1317, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4139, i32 9511, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@dev_list = internal constant { [22 x %struct.board], [160 x i8] } { [22 x %struct.board] [%struct.board { i16 4139, i16 1305, i16 255, i16 0, i16 0, i32 32, i32 230000, i32 0, ptr @vbMillennium, ptr @.str.17 }, %struct.board { i16 4139, i16 1307, i16 255, i16 0, i16 0, i32 2, i32 220000, i32 1, ptr @vbMillennium2, ptr @.str.18 }, %struct.board { i16 4139, i16 1311, i16 255, i16 0, i16 0, i32 2, i32 250000, i32 1, ptr @vbMillennium2A, ptr @.str.19 }, %struct.board { i16 4139, i16 1306, i16 2, i16 0, i16 0, i32 17, i32 180000, i32 2, ptr @vbMystique, ptr @.str.20 }, %struct.board { i16 4139, i16 1306, i16 255, i16 0, i16 0, i32 19, i32 220000, i32 3, ptr @vbMystique, ptr @.str.21 }, %struct.board { i16 4139, i16 1310, i16 2, i16 0, i16 0, i32 17, i32 180000, i32 2, ptr @vbMystique, ptr @.str.22 }, %struct.board { i16 4139, i16 1310, i16 255, i16 0, i16 0, i32 19, i32 220000, i32 3, ptr @vbMystique, ptr @.str.23 }, %struct.board { i16 4139, i16 4096, i16 255, i16 0, i16 0, i32 19, i32 230000, i32 4, ptr @vbG100, ptr @.str.24 }, %struct.board { i16 4139, i16 4097, i16 255, i16 0, i16 0, i32 19, i32 230000, i32 4, ptr @vbG100, ptr @.str.25 }, %struct.board { i16 4139, i16 1312, i16 255, i16 0, i16 0, i32 12831, i32 250000, i32 5, ptr @vbG200, ptr @.str.26 }, %struct.board { i16 4139, i16 1330, i16 255, i16 0, i16 0, i32 12831, i32 250000, i32 5, ptr @vbG200eW, ptr @.str.27 }, %struct.board { i16 4139, i16 1313, i16 255, i16 4139, i16 -256, i32 12831, i32 220000, i32 5, ptr @vbG200, ptr @.str.28 }, %struct.board { i16 4139, i16 1313, i16 255, i16 4139, i16 -254, i32 12831, i32 230000, i32 5, ptr @vbG200, ptr @.str.29 }, %struct.board { i16 4139, i16 1313, i16 255, i16 4139, i16 -253, i32 12831, i32 250000, i32 5, ptr @vbG200, ptr @.str.30 }, %struct.board { i16 4139, i16 1313, i16 255, i16 4139, i16 -252, i32 12831, i32 230000, i32 5, ptr @vbG200, ptr @.str.31 }, %struct.board { i16 4139, i16 1313, i16 255, i16 4362, i16 50, i32 12831, i32 230000, i32 5, ptr @vbG200, ptr @.str.28 }, %struct.board { i16 4139, i16 1313, i16 255, i16 0, i16 0, i32 12831, i32 230000, i32 5, ptr @vbG200, ptr @.str.32 }, %struct.board { i16 4139, i16 1317, i16 128, i16 4139, i16 8569, i32 16159, i32 360000, i32 6, ptr @vbG400, ptr @.str.33 }, %struct.board { i16 4139, i16 1317, i16 128, i16 0, i16 0, i32 16159, i32 300000, i32 6, ptr @vbG400, ptr @.str.34 }, %struct.board { i16 4139, i16 1317, i16 255, i16 0, i16 0, i32 20255, i32 360000, i32 7, ptr @vbG400, ptr @.str.35 }, %struct.board { i16 4139, i16 9511, i16 255, i16 0, i16 0, i32 20255, i32 360000, i32 8, ptr @vbG400, ptr @.str.36 }, %struct.board { i16 0, i16 0, i16 255, i16 0, i16 0, i32 0, i32 0, i32 0, ptr null, ptr null }], [160 x i8] zeroinitializer }, align 32
@dev = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@memtype = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@noinit = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@novga = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nobios = internal global { i32, [28 x i8] } zeroinitializer, align 32
@no_pci_retry = internal global { i32, [28 x i8] } zeroinitializer, align 32
@inv24 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sgram = internal global { i1, [31 x i8] } zeroinitializer, align 32
@cross4MB = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&minfo->lock.DAC\00", [47 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&minfo->lock.accel\00", [45 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&minfo->crtc2.lock\00", [45 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&minfo->altout.lock\00", [44 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&minfo->fbcon.mm_lock\00", [42 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&minfo->crtc1.vsync.wait\00", [39 x i8] zeroinitializer }, align 32
@matroxfb_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&minfo->crtc2.vsync.wait\00", [39 x i8] zeroinitializer }, align 32
@vbMillennium = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 8388608, i32 8388608, i32 16, ptr @matrox_millennium }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Millennium (PCI)\00", [47 x i8] zeroinitializer }, align 32
@vbMillennium2 = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 16777216, i32 8388608, i32 18, ptr @matrox_millennium }, [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Millennium II (PCI)\00", [44 x i8] zeroinitializer }, align 32
@vbMillennium2A = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 16777216, i32 8388608, i32 19, ptr @matrox_millennium }, [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Millennium II (AGP)\00", [44 x i8] zeroinitializer }, align 32
@vbMystique = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 8388608, i32 8388608, i32 17, ptr @matrox_mystique }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mystique (PCI)\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mystique 220 (PCI)\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mystique (AGP)\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mystique 220 (AGP)\00", [45 x i8] zeroinitializer }, align 32
@vbG100 = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 8388608, i32 8388608, i32 20, ptr @matrox_G100 }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MGA-G100 (PCI)\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MGA-G100 (AGP)\00", [17 x i8] zeroinitializer }, align 32
@vbG200 = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 16777216, i32 16777216, i32 21, ptr @matrox_G100 }, [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MGA-G200 (PCI)\00", [17 x i8] zeroinitializer }, align 32
@vbG200eW = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 8388608, i32 8388608, i32 21, ptr @matrox_G100 }, [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MGA-G200eW (PCI)\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MGA-G200 (AGP)\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mystique G200 (AGP)\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Millennium G200 (AGP)\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Marvel G200 (AGP)\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"G200 (AGP)\00", [21 x i8] zeroinitializer }, align 32
@vbG400 = internal global { %struct.video_board, [16 x i8] } { %struct.video_board { i32 33554432, i32 16777216, i32 26, ptr @matrox_G100 }, [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Millennium G400 MAX (AGP)\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"G400 (AGP)\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"G450\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"G550\00", [27 x i8] zeroinitializer }, align 32
@matrox_millennium = external dso_local global %struct.matrox_switch, align 4
@matrox_mystique = external dso_local global %struct.matrox_switch, align 4
@matrox_G100 = external dso_local global %struct.matrox_switch, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@initMatrox2.intel_82437 = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4653, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vesafb_defined = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 1, i32 39721, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 -1, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@initMatrox2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016matroxfb: Matrox %s detected\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"initMatrox2\00", [20 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr = internal global ptr @initMatrox2._entry, section ".printk_index", align 4
@dfp_type = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@panellink_output = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str.74, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@initMatrox2._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 1703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013matroxfb: control registers are not available, matroxfb disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.41 = internal global ptr @initMatrox2._entry.39, section ".printk_index", align 4
@initMatrox2._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 1707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013matroxfb: video RAM is not available in PCI address space, matroxfb disabled\0A\00", [48 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.44 = internal global ptr @initMatrox2._entry.42, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"matroxfb MMIO\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"matroxfb FB\00", [20 x i8] zeroinitializer }, align 32
@mem = internal global { i32, [28 x i8] } zeroinitializer, align 32
@initMatrox2._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.38, ptr @.str.3, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013matroxfb: cannot ioremap(%lX, 16384), matroxfb disabled\0A\00", [37 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.49 = internal global ptr @initMatrox2._entry.47, section ".printk_index", align 4
@initMatrox2._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.38, ptr @.str.3, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013matroxfb: cannot ioremap(%lX, %d), matroxfb disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.52 = internal global ptr @initMatrox2._entry.50, section ".printk_index", align 4
@initMatrox2._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.38, ptr @.str.3, i32 1752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014matroxfb: Disabling PCI retries due to i82437 present\0A\00", [39 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.55 = internal global ptr @initMatrox2._entry.53, section ".printk_index", align 4
@initMatrox2._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.38, ptr @.str.3, i32 1774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013matroxfb: cannot determine memory size\0A\00", [54 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.58 = internal global ptr @initMatrox2._entry.56, section ".printk_index", align 4
@mtrr = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"matrox\00", [25 x i8] zeroinitializer }, align 32
@fh = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fv = internal global { i32, [28 x i8] } zeroinitializer, align 32
@colors = internal constant { [8 x %struct.anon.109], [96 x i8] } { [8 x %struct.anon.109] [%struct.anon.109 { %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 8 }, %struct.anon.109 { %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 15, i32 1, i32 0 }, i32 16 }, %struct.anon.109 { %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 16 }, %struct.anon.109 { %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 32 }, %struct.anon.109 { %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 4 }, %struct.anon.109 { %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 24 }, %struct.anon.109 { %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0 }, %struct.anon.109 { %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 6, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0 }], [96 x i8] zeroinitializer }, align 32
@depth = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@grayscale = internal global { i32, [28 x i8] } zeroinitializer, align 32
@noaccel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@matroxfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @matroxfb_open, ptr @matroxfb_release, ptr null, ptr null, ptr @matroxfb_check_var, ptr @matroxfb_set_par, ptr @matroxfb_setcolreg, ptr null, ptr @matroxfb_blank, ptr @matroxfb_pan_display, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @matroxfb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hotplug = internal global { i1, [31 x i8] } zeroinitializer, align 32
@videomode = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@defaultmode = internal constant { %struct.fb_videomode, [40 x i8] } { %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@hslen = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vslen = internal global { i32, [28 x i8] } zeroinitializer, align 32
@left = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@right = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@upper = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@lower = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@xres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@yres = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sync = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@maxclk = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pixclock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nopan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@initMatrox2._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.38, ptr @.str.3, i32 1927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016matroxfb: %dx%dx%dbpp (virtual: %dx%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.62 = internal global ptr @initMatrox2._entry.60, section ".printk_index", align 4
@initMatrox2._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.38, ptr @.str.3, i32 1929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016matroxfb: framebuffer at 0x%lX, mapped to 0x%p, size %d\0A\00", [37 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.65 = internal global ptr @initMatrox2._entry.63, section ".printk_index", align 4
@initMatrox2._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.38, ptr @.str.3, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.68 = internal global ptr @initMatrox2._entry.66, section ".printk_index", align 4
@initMatrox2._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.38, ptr @.str.3, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016fb%d: initializing hardware\0A\00", [33 x i8] zeroinitializer }, align 32
@initMatrox2._entry_ptr.71 = internal global ptr @initMatrox2._entry.69, section ".printk_index", align 4
@dfp = internal global { i32, [28 x i8] } zeroinitializer, align 32
@outputs = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@setDefaultOutputs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 1625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013matroxfb: Unknown outputs setting\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setDefaultOutputs\00", [46 x i8] zeroinitializer }, align 32
@setDefaultOutputs._entry_ptr = internal global ptr @setDefaultOutputs._entry, section ".printk_index", align 4
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Panellink output\00", [47 x i8] zeroinitializer }, align 32
@matroxfb_decode_var.table = internal constant { [5 x %struct.RGBT], [46 x i8] } { [5 x %struct.RGBT] [%struct.RGBT { i8 8, %struct.anon.110 { i8 0, i8 8 }, %struct.anon.110 { i8 0, i8 8 }, %struct.anon.110 { i8 0, i8 8 }, %struct.anon.110 zeroinitializer, i8 3 }, %struct.RGBT { i8 15, %struct.anon.110 { i8 10, i8 5 }, %struct.anon.110 { i8 5, i8 5 }, %struct.anon.110 { i8 0, i8 5 }, %struct.anon.110 { i8 15, i8 1 }, i8 2 }, %struct.RGBT { i8 16, %struct.anon.110 { i8 11, i8 5 }, %struct.anon.110 { i8 5, i8 6 }, %struct.anon.110 { i8 0, i8 5 }, %struct.anon.110 zeroinitializer, i8 2 }, %struct.RGBT { i8 24, %struct.anon.110 { i8 16, i8 8 }, %struct.anon.110 { i8 8, i8 8 }, %struct.anon.110 { i8 0, i8 8 }, %struct.anon.110 zeroinitializer, i8 2 }, %struct.RGBT { i8 32, %struct.anon.110 { i8 16, i8 8 }, %struct.anon.110 { i8 8, i8 8 }, %struct.anon.110 { i8 0, i8 8 }, %struct.anon.110 { i8 24, i8 8 }, i8 2 }], [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Matrox\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MATROX\00", [25 x i8] zeroinitializer }, align 32
@disabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@initialized = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dev:\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"depth:\00", [25 x i8] zeroinitializer }, align 32
@matroxfb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 2353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013matroxfb: unsupported color depth\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"matroxfb_setup\00", [17 x i8] zeroinitializer }, align 32
@matroxfb_setup._entry_ptr = internal global ptr @matroxfb_setup._entry, section ".printk_index", align 4
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xres:\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"yres:\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vslen:\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hslen:\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"left:\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"right:\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"upper:\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lower:\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pixclock:\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sync:\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vesa:\00", [26 x i8] zeroinitializer }, align 32
@vesa = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maxclk:\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fh:\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fv:\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mem:\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mode:\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"outputs:\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dfp:\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgram\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdram\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"memtype:\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inverse\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"accel\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pan\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pciretry\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vga\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bios\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtrr\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inv24\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cross4MB\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"grayscale\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfp\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"matroxfb_base\00", [18 x i8] zeroinitializer }, align 32
@vesamap = internal global [53 x %struct.anon.111] [%struct.anon.111 { i32 -1, i32 271 }, %struct.anon.111 { i32 257, i32 258 }, %struct.anon.111 { i32 256, i32 257 }, %struct.anon.111 { i32 384, i32 263 }, %struct.anon.111 { i32 259, i32 259 }, %struct.anon.111 { i32 392, i32 264 }, %struct.anon.111 { i32 261, i32 260 }, %struct.anon.111 { i32 400, i32 265 }, %struct.anon.111 { i32 263, i32 261 }, %struct.anon.111 { i32 408, i32 266 }, %struct.anon.111 { i32 284, i32 262 }, %struct.anon.111 { i32 272, i32 514 }, %struct.anon.111 { i32 385, i32 519 }, %struct.anon.111 { i32 275, i32 515 }, %struct.anon.111 { i32 393, i32 520 }, %struct.anon.111 { i32 278, i32 516 }, %struct.anon.111 { i32 401, i32 521 }, %struct.anon.111 { i32 281, i32 517 }, %struct.anon.111 { i32 409, i32 522 }, %struct.anon.111 { i32 285, i32 518 }, %struct.anon.111 { i32 273, i32 770 }, %struct.anon.111 { i32 386, i32 775 }, %struct.anon.111 { i32 276, i32 771 }, %struct.anon.111 { i32 394, i32 776 }, %struct.anon.111 { i32 279, i32 772 }, %struct.anon.111 { i32 402, i32 777 }, %struct.anon.111 { i32 282, i32 773 }, %struct.anon.111 { i32 410, i32 778 }, %struct.anon.111 { i32 286, i32 774 }, %struct.anon.111 { i32 434, i32 1538 }, %struct.anon.111 { i32 388, i32 1543 }, %struct.anon.111 { i32 437, i32 1539 }, %struct.anon.111 { i32 396, i32 1544 }, %struct.anon.111 { i32 440, i32 1540 }, %struct.anon.111 { i32 404, i32 1545 }, %struct.anon.111 { i32 443, i32 1541 }, %struct.anon.111 { i32 412, i32 1546 }, %struct.anon.111 { i32 447, i32 1542 }, %struct.anon.111 { i32 274, i32 1026 }, %struct.anon.111 { i32 387, i32 1031 }, %struct.anon.111 { i32 277, i32 1027 }, %struct.anon.111 { i32 395, i32 1032 }, %struct.anon.111 { i32 280, i32 1028 }, %struct.anon.111 { i32 403, i32 1033 }, %struct.anon.111 { i32 283, i32 1029 }, %struct.anon.111 { i32 411, i32 1034 }, %struct.anon.111 { i32 287, i32 1030 }, %struct.anon.111 { i32 16, i32 1291 }, %struct.anon.111 { i32 18, i32 1282 }, %struct.anon.111 { i32 258, i32 1283 }, %struct.anon.111 { i32 260, i32 1284 }, %struct.anon.111 { i32 262, i32 1285 }, %struct.anon.111 zeroinitializer], section ".init.data", align 4
@RSptr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@matroxfb_init_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 2281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Invalid vesa mode 0x%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"matroxfb_init_params\00", [43 x i8] zeroinitializer }, align 32
@matroxfb_init_params._entry_ptr = internal global ptr @matroxfb_init_params._entry, section ".printk_index", align 4
@timmings = internal unnamed_addr constant [15 x %struct.anon.112] [%struct.anon.112 { i32 640, i32 400, i32 48, i32 16, i32 39, i32 8, i32 96, i32 2, i32 70 }, %struct.anon.112 { i32 640, i32 480, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 60 }, %struct.anon.112 { i32 800, i32 600, i32 144, i32 24, i32 28, i32 8, i32 112, i32 6, i32 60 }, %struct.anon.112 { i32 1024, i32 768, i32 160, i32 32, i32 30, i32 4, i32 128, i32 4, i32 60 }, %struct.anon.112 { i32 1280, i32 1024, i32 224, i32 32, i32 32, i32 4, i32 136, i32 4, i32 60 }, %struct.anon.112 { i32 1600, i32 1200, i32 272, i32 48, i32 32, i32 5, i32 152, i32 5, i32 60 }, %struct.anon.112 { i32 768, i32 576, i32 144, i32 16, i32 28, i32 6, i32 112, i32 4, i32 60 }, %struct.anon.112 { i32 960, i32 720, i32 144, i32 24, i32 28, i32 8, i32 112, i32 4, i32 60 }, %struct.anon.112 { i32 1152, i32 864, i32 192, i32 32, i32 30, i32 4, i32 128, i32 4, i32 60 }, %struct.anon.112 { i32 1408, i32 1056, i32 256, i32 40, i32 32, i32 5, i32 144, i32 5, i32 60 }, %struct.anon.112 { i32 640, i32 350, i32 48, i32 16, i32 39, i32 8, i32 96, i32 2, i32 70 }, %struct.anon.112 { i32 1056, i32 344, i32 96, i32 24, i32 59, i32 44, i32 160, i32 2, i32 70 }, %struct.anon.112 { i32 1056, i32 400, i32 96, i32 24, i32 39, i32 8, i32 160, i32 2, i32 70 }, %struct.anon.112 { i32 1056, i32 480, i32 96, i32 24, i32 36, i32 12, i32 160, i32 3, i32 60 }, %struct.anon.112 { i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0 }], section ".init.data", align 4
@switch.table.matroxfb_set_par = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 31, i32 39, i32 29, i32 25, i32 24], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.126 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 48, i64 49, i64 50]
@__sancov_gen_cov_switch_values.128 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.129 = internal global [14 x i64] [i64 12, i64 32, i64 1074021920, i64 1074032376, i64 1074032378, i64 2147774200, i64 2147774201, i64 2147774203, i64 2149598738, i64 2154321408, i64 3221516026, i64 3221771803, i64 3221771804, i64 3225703972]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.132 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.133 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.135 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 4, i64 8, i64 15, i64 16, i64 24, i64 32]
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 237, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 249, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"matroxfb_driver_list\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1965, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"matroxfb_list\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1964, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"matroxfb_driver\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2164, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"matroxfb_devices\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2128, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"dev_list\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1427, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1255, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [8 x i8] c"memtype\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1273, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"noinit\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1250, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"novga\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1248, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"nobios\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1249, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"no_pci_retry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1247, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"inv24\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1242, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"sgram\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [9 x i8] c"cross4MB\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1243, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2102, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2103, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2104, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2105, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2106, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2108, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2109, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"vbMillennium\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1336, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1435, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [14 x i8] c"vbMillennium2\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1343, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1442, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"vbMillennium2A\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1350, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1449, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [11 x i8] c"vbMystique\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1358, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1458, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1465, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1472, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1479, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"vbG100\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1366, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1488, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1495, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"vbG200\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1373, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1502, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [9 x i8] c"vbG200eW\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1379, i32 27 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1509, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1516, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1523, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1530, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1537, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1551, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"vbG400\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1387, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1558, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1565, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1572, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1579, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [12 x i8] c"intel_82437\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1640, i32 36 }
@___asan_gen_.320 = private unnamed_addr constant [15 x i8] c"vesafb_defined\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 135, i32 33 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1654, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [9 x i8] c"dfp_type\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1272, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"panellink_output\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 870, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1703, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1707, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1711, i32 7 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1714, i32 7 }
@___asan_gen_.356 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1240, i32 21 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1728, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1736, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1752, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1774, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant [5 x i8] c"mtrr\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1253, i32 12 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1788, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [3 x i8] c"fh\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1269, i32 21 }
@___asan_gen_.392 = private unnamed_addr constant [3 x i8] c"fv\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1268, i32 21 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"colors\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1228, i32 84 }
@___asan_gen_.398 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1257, i32 12 }
@___asan_gen_.401 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1254, i32 12 }
@___asan_gen_.404 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1245, i32 12 }
@___asan_gen_.407 = private unnamed_addr constant [13 x i8] c"matroxfb_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1202, i32 28 }
@___asan_gen_.410 = private unnamed_addr constant [8 x i8] c"hotplug\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [10 x i8] c"videomode\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1277, i32 13 }
@___asan_gen_.414 = private unnamed_addr constant [12 x i8] c"defaultmode\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1590, i32 34 }
@___asan_gen_.417 = private unnamed_addr constant [6 x i8] c"hslen\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1265, i32 21 }
@___asan_gen_.420 = private unnamed_addr constant [6 x i8] c"vslen\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1262, i32 21 }
@___asan_gen_.423 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1263, i32 21 }
@___asan_gen_.426 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1264, i32 21 }
@___asan_gen_.429 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1260, i32 21 }
@___asan_gen_.432 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1261, i32 21 }
@___asan_gen_.435 = private unnamed_addr constant [5 x i8] c"xres\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1258, i32 21 }
@___asan_gen_.438 = private unnamed_addr constant [5 x i8] c"yres\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1259, i32 21 }
@___asan_gen_.441 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1267, i32 12 }
@___asan_gen_.444 = private unnamed_addr constant [7 x i8] c"maxclk\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1270, i32 21 }
@___asan_gen_.447 = private unnamed_addr constant [9 x i8] c"pixclock\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1266, i32 21 }
@___asan_gen_.450 = private unnamed_addr constant [6 x i8] c"nopan\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1246, i32 12 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1925, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1928, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1938, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1943, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant [4 x i8] c"dfp\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1271, i32 12 }
@___asan_gen_.480 = private unnamed_addr constant [8 x i8] c"outputs\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1274, i32 13 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1625, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 871, i32 11 }
@___asan_gen_.495 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 543, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1093, i32 20 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1094, i32 25 }
@___asan_gen_.505 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 174, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 710, i32 17 }
@___asan_gen_.510 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2336, i32 38 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2341, i32 26 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2343, i32 31 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2353, i32 6 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2355, i32 33 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2357, i32 31 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2359, i32 31 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2361, i32 31 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2363, i32 31 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2365, i32 31 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2367, i32 31 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2369, i32 31 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2371, i32 31 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2373, i32 31 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2375, i32 31 }
@___asan_gen_.562 = private unnamed_addr constant [5 x i8] c"vesa\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1256, i32 21 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2377, i32 31 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2379, i32 31 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2381, i32 31 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2383, i32 31 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2385, i32 31 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2387, i32 31 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2389, i32 31 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2416, i32 30 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2418, i32 30 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2420, i32 30 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2422, i32 30 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2424, i32 31 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2429, i32 27 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2433, i32 27 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2435, i32 31 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2437, i32 31 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2439, i32 31 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2441, i32 31 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2443, i32 31 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2445, i32 31 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2447, i32 31 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2449, i32 31 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2451, i32 31 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2453, i32 31 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2455, i32 31 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2313, i32 8 }
@___asan_gen_.643 = private unnamed_addr constant [6 x i8] c"RSptr\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2209, i32 58 }
@___asan_gen_.646 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.653 = private constant [46 x i8] c"../drivers/video/fbdev/matrox/matroxfb_base.c\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 2281, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant [30 x i8] c"switch.table.matroxfb_set_par\00", align 1
@llvm.compiler.used = appending global [198 x ptr] [ptr @__exitcall_matrox_done, ptr @__initcall__kmod_matroxfb_base__305_2604_matroxfb_init6, ptr @__ksymtab_matroxfb_enable_irq, ptr @__ksymtab_matroxfb_register_driver, ptr @__ksymtab_matroxfb_unregister_driver, ptr @__ksymtab_matroxfb_wait_for_sync, ptr @initMatrox2._entry, ptr @initMatrox2._entry.39, ptr @initMatrox2._entry.42, ptr @initMatrox2._entry.47, ptr @initMatrox2._entry.50, ptr @initMatrox2._entry.53, ptr @initMatrox2._entry.56, ptr @initMatrox2._entry.60, ptr @initMatrox2._entry.63, ptr @initMatrox2._entry.66, ptr @initMatrox2._entry.69, ptr @initMatrox2._entry_ptr, ptr @initMatrox2._entry_ptr.41, ptr @initMatrox2._entry_ptr.44, ptr @initMatrox2._entry_ptr.49, ptr @initMatrox2._entry_ptr.52, ptr @initMatrox2._entry_ptr.55, ptr @initMatrox2._entry_ptr.58, ptr @initMatrox2._entry_ptr.62, ptr @initMatrox2._entry_ptr.65, ptr @initMatrox2._entry_ptr.68, ptr @initMatrox2._entry_ptr.71, ptr @matrox_done, ptr @matroxfb_enable_irq._entry, ptr @matroxfb_enable_irq._entry_ptr, ptr @matroxfb_init_params._entry, ptr @matroxfb_init_params._entry_ptr, ptr @matroxfb_setup._entry, ptr @matroxfb_setup._entry_ptr, ptr @setDefaultOutputs._entry, ptr @setDefaultOutputs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @matroxfb_driver_list, ptr @matroxfb_list, ptr @matroxfb_driver, ptr @matroxfb_devices, ptr @dev_list, ptr @dev, ptr @memtype, ptr @noinit, ptr @novga, ptr @nobios, ptr @no_pci_retry, ptr @inv24, ptr @sgram, ptr @cross4MB, ptr @matroxfb_probe.__key, ptr @.str.4, ptr @matroxfb_probe.__key.5, ptr @.str.6, ptr @matroxfb_probe.__key.7, ptr @.str.8, ptr @matroxfb_probe.__key.9, ptr @.str.10, ptr @matroxfb_probe.__key.11, ptr @.str.12, ptr @matroxfb_probe.__key.13, ptr @.str.14, ptr @matroxfb_probe.__key.15, ptr @.str.16, ptr @vbMillennium, ptr @.str.17, ptr @vbMillennium2, ptr @.str.18, ptr @vbMillennium2A, ptr @.str.19, ptr @vbMystique, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @vbG100, ptr @.str.24, ptr @.str.25, ptr @vbG200, ptr @.str.26, ptr @vbG200eW, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @vbG400, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @initMatrox2.intel_82437, ptr @vesafb_defined, ptr @.str.37, ptr @.str.38, ptr @dfp_type, ptr @panellink_output, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @mem, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @mtrr, ptr @.str.59, ptr @fh, ptr @fv, ptr @colors, ptr @depth, ptr @grayscale, ptr @noaccel, ptr @matroxfb_ops, ptr @hotplug, ptr @videomode, ptr @defaultmode, ptr @hslen, ptr @vslen, ptr @left, ptr @right, ptr @upper, ptr @lower, ptr @xres, ptr @yres, ptr @sync, ptr @maxclk, ptr @pixclock, ptr @nopan, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @dfp, ptr @outputs, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @matroxfb_decode_var.table, ptr @.str.75, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @disabled, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @vesa, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @RSptr, ptr @.str.123, ptr @.str.124, ptr @switch.table.matroxfb_set_par], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_enable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_driver_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_devices to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_list to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memtype to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noinit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @novga to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nobios to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_pci_retry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgram to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cross4MB to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbMillennium to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbMillennium2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbMillennium2A to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbMystique to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbG100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbG200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbG200eW to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbG400 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2.intel_82437 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vesafb_defined to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfp_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panellink_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtrr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @colors to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grayscale to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hotplug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videomode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defaultmode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hslen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vslen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @upper to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lower to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxclk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pixclock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nopan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initMatrox2._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outputs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setDefaultOutputs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_decode_var.table to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vesa to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RSptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_init_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.matroxfb_set_par to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @matroxfb_enable_irq(ptr noundef %minfo, i32 noundef %reenable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %accelerator = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %0 = ptrtoint ptr %accelerator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accelerator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp = icmp eq i32 %1, 26
  %. = select i1 %cmp, i32 544, i32 32
  %irq_flags = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %irq_flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.else14

if.then1:                                         ; preds = %entry
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %2 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcidev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @matrox_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %minfo) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %irq_flags) #13
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %vbase, align 4
  %7 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %8 = tail call i32 @llvm.bswap.i32(i32 %.) #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 7704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #13, !srcloc !375
  %9 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack46 = load i32, ptr %vbase, align 4
  %10 = inttoptr i32 %.unpack46 to ptr
  %add.ptr.i50 = getelementptr i8, ptr %10, i32 7708
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #13, !srcloc !376
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !377
  %or = or i32 %12, %.
  %13 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack47 = load i32, ptr %vbase, align 4
  %14 = inttoptr i32 %.unpack47 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %add.ptr.i51 = getelementptr i8, ptr %14, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %15) #13, !srcloc !375
  br label %cleanup

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reenable)
  %tobool15.not = icmp eq i32 %reenable, 0
  br i1 %tobool15.not, label %if.else14.cleanup_crit_edge, label %if.then16

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %if.else14
  %vbase18 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %vbase18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack48 = load i32, ptr %vbase18, align 4
  %17 = inttoptr i32 %.unpack48 to ptr
  %add.ptr.i52 = getelementptr i8, ptr %17, i32 7708
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #13, !srcloc !376
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !377
  %and = and i32 %19, %.
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %.)
  %cmp21.not = icmp eq i32 %and, %.
  br i1 %cmp21.not, label %if.then16.cleanup_crit_edge, label %do.end

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %19) #16
  %or26 = or i32 %19, %.
  %20 = ptrtoint ptr %vbase18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack49 = load i32, ptr %vbase18, align 4
  %21 = inttoptr i32 %.unpack49 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %22 = tail call i32 @llvm.bswap.i32(i32 %or26) #13
  %add.ptr.i53 = getelementptr i8, ptr %21, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %22) #13, !srcloc !375
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then16.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %if.end6, %if.then4
  %retval.0 = phi i32 [ -22, %if.then4 ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.else14.cleanup_crit_edge ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matrox_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %dev_id, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %vbase, align 4
  %1 = inttoptr i32 %.unpack to ptr
  %add.ptr.i = getelementptr i8, ptr %1, i32 7700
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !376
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !377
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack29 = load i32, ptr %vbase, align 4
  %5 = inttoptr i32 %.unpack29 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 7704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 536870912) #13, !srcloc !375
  %crtc1 = getelementptr inbounds %struct.matrox_fb_info, ptr %dev_id, i32 0, i32 11
  %cnt = getelementptr inbounds %struct.matrox_fb_info, ptr %dev_id, i32 0, i32 11, i32 0, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %cnt, align 4
  tail call fastcc void @matroxfb_crtc1_panpos(ptr noundef %dev_id)
  tail call void @__wake_up(ptr noundef %crtc1, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handled.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %if.then8

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack28 = load i32, ptr %vbase, align 4
  %9 = inttoptr i32 %.unpack28 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %add.ptr.i31 = getelementptr i8, ptr %9, i32 7704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 131072) #13, !srcloc !375
  %crtc2 = getelementptr inbounds %struct.matrox_fb_info, ptr %dev_id, i32 0, i32 12
  %cnt13 = getelementptr inbounds %struct.matrox_fb_info, ptr %dev_id, i32 0, i32 12, i32 0, i32 1
  %10 = ptrtoint ptr %cnt13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cnt13, align 4
  %inc14 = add i32 %11, 1
  store i32 %inc14, ptr %cnt13, align 4
  tail call void @__wake_up(ptr noundef %crtc2, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.end.if.end18_crit_edge
  %handled.1 = phi i32 [ 1, %if.then8 ], [ %handled.0, %if.end.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %tobool19.not = icmp ne i32 %handled.1, 0
  %cond = zext i1 %tobool19.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @matroxfb_wait_for_sync(ptr noundef %minfo, i32 noundef %crtc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %crtc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %crtc, label %entry.cleanup55_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %crtc1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %accelerator = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %1 = ptrtoint ptr %accelerator to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %accelerator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %cmp.not = icmp eq i32 %2, 26
  br i1 %cmp.not, label %if.end, label %sw.bb1.cleanup55_crit_edge

sw.bb1.cleanup55_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %crtc2 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %vs.0 = phi ptr [ %crtc2, %if.end ], [ %crtc1, %sw.bb ]
  %call = tail call i32 @matroxfb_enable_irq(ptr noundef %minfo, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %sw.epilog.cleanup55_crit_edge

sw.epilog.cleanup55_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end4:                                          ; preds = %sw.epilog
  %cnt5 = getelementptr inbounds %struct.matrox_vsync, ptr %vs.0, i32 0, i32 1
  %3 = ptrtoint ptr %cnt5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt5, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 294) #13
  %5 = ptrtoint ptr %cnt5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cnt5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp10.not = icmp eq i32 %4, %6
  br i1 %cmp10.not, label %if.then18, label %if.end4.cleanup55_crit_edge

if.end4.cleanup55_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.then18:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call2094 = call i32 @prepare_to_wait_event(ptr noundef %vs.0, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %8 = ptrtoint ptr %cnt5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %9)
  %cmp23.not95.not = icmp eq i32 %4, %9
  br i1 %cmp23.not95.not, label %if.then18.if.end39_crit_edge, label %if.then18.for.end_crit_edge

if.then18.for.end_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then18.if.end39_crit_edge:                     ; preds = %if.then18
  br label %if.end39

if.end39:                                         ; preds = %cleanup.if.end39_crit_edge, %if.then18.if.end39_crit_edge
  %__ret19.198 = phi i32 [ %__ret19.1, %cleanup.if.end39_crit_edge ], [ 10, %if.then18.if.end39_crit_edge ]
  %call2097 = phi i32 [ %call20, %cleanup.if.end39_crit_edge ], [ %call2094, %if.then18.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2097)
  %tobool40.not = icmp eq i32 %call2097, 0
  br i1 %tobool40.not, label %cleanup, label %if.end39.if.end46_crit_edge

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

cleanup:                                          ; preds = %if.end39
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret19.198) #13
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %vs.0, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %10 = ptrtoint ptr %cnt5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cnt5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %11)
  %cmp23.not = icmp eq i32 %4, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool27.not = icmp eq i32 %call43, 0
  %spec.store.select58 = select i1 %tobool27.not, i32 1, i32 %call43
  %__ret19.1 = select i1 %cmp23.not, i32 %call43, i32 %spec.store.select58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.1)
  %tobool33.not = icmp eq i32 %__ret19.1, 0
  %not.cmp23.not = xor i1 %cmp23.not, true
  %12 = select i1 %not.cmp23.not, i1 true, i1 %tobool33.not
  br i1 %12, label %cleanup.for.end_crit_edge, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then18.for.end_crit_edge
  %__ret19.1.lcssa = phi i32 [ 10, %if.then18.for.end_crit_edge ], [ %__ret19.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %vs.0, ptr noundef nonnull %__wq_entry) #13
  br label %if.end46

if.end46:                                         ; preds = %for.end, %if.end39.if.end46_crit_edge
  %__ret19.282 = phi i32 [ %__ret19.1.lcssa, %for.end ], [ %call2097, %if.end39.if.end46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.282)
  %cmp48 = icmp slt i32 %__ret19.282, 0
  br i1 %cmp48, label %if.end46.cleanup55_crit_edge, label %if.end50

if.end46.cleanup55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.282)
  %cmp51 = icmp eq i32 %__ret19.282, 0
  br i1 %cmp51, label %if.then52, label %if.end50.cleanup55_crit_edge

if.end50.cleanup55_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup55

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call53 = call i32 @matroxfb_enable_irq(ptr noundef %minfo, i32 noundef 1)
  br label %cleanup55

cleanup55:                                        ; preds = %if.then52, %if.end50.cleanup55_crit_edge, %if.end46.cleanup55_crit_edge, %if.end4.cleanup55_crit_edge, %sw.epilog.cleanup55_crit_edge, %sw.bb1.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ -110, %if.then52 ], [ -19, %sw.bb1.cleanup55_crit_edge ], [ -19, %entry.cleanup55_crit_edge ], [ %call, %sw.epilog.cleanup55_crit_edge ], [ %__ret19.282, %if.end46.cleanup55_crit_edge ], [ 0, %if.end50.cleanup55_crit_edge ], [ 0, %if.end4.cleanup55_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @matroxfb_register_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @matroxfb_driver_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv, ptr noundef nonnull @matroxfb_driver_list, ptr noundef %0) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drv, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %drv, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @matroxfb_driver_list, ptr %prev3.i.i, align 4
  store volatile ptr %drv, ptr @matroxfb_driver_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %.pn22 = load ptr, ptr @matroxfb_list, align 4
  %cmp.not24 = icmp eq ptr %.pn22, @matroxfb_list
  br i1 %cmp.not24, label %list_add.exit.for.end_crit_edge, label %for.body.lr.ph

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add.exit
  %probe = getelementptr inbounds %struct.matroxfb_driver, ptr %drv, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn25 = phi ptr [ %.pn22, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %drivers_count = getelementptr i8, ptr %.pn25, i32 1736
  %4 = ptrtoint ptr %drivers_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drivers_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp1 = icmp eq i32 %5, 5
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %minfo.026 = getelementptr i8, ptr %.pn25, i32 -1116
  %6 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %probe, align 4
  %call = tail call ptr %7(ptr noundef %minfo.026) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %drivers_data = getelementptr i8, ptr %.pn25, i32 1716
  %8 = ptrtoint ptr %drivers_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drivers_count, align 4
  %arrayidx = getelementptr [5 x ptr], ptr %drivers_data, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %arrayidx, align 4
  %drivers = getelementptr i8, ptr %.pn25, i32 1696
  %11 = load i32, ptr %drivers_count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %drivers_count, align 4
  %arrayidx5 = getelementptr [5 x ptr], ptr %drivers, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %drv, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %13 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, @matroxfb_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %list_add.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @matroxfb_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %drv, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %.pn48 = load ptr, ptr @matroxfb_list, align 4
  %cmp.not50 = icmp eq ptr %.pn48, @matroxfb_list
  br i1 %cmp.not50, label %list_del.exit.for.end24_crit_edge, label %for.cond1.preheader.lr.ph

list_del.exit.for.end24_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.cond1.preheader.lr.ph:                        ; preds = %list_del.exit
  %tobool.not = icmp eq ptr %drv, null
  %remove = getelementptr inbounds %struct.matroxfb_driver, ptr %drv, i32 0, i32 3
  br label %for.cond1.preheader

for.cond.loopexit:                                ; preds = %if.end19.for.cond.loopexit_crit_edge, %for.cond1.preheader.for.cond.loopexit_crit_edge
  %8 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, @matroxfb_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end24_crit_edge, label %for.cond.loopexit.for.cond1.preheader_crit_edge

for.cond.loopexit.for.cond1.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader

for.cond.loopexit.for.end24_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end24

for.cond1.preheader:                              ; preds = %for.cond.loopexit.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %.pn51 = phi ptr [ %.pn48, %for.cond1.preheader.lr.ph ], [ %.pn, %for.cond.loopexit.for.cond1.preheader_crit_edge ]
  %minfo.052 = getelementptr i8, ptr %.pn51, i32 -1116
  %drivers_count = getelementptr i8, ptr %.pn51, i32 1736
  %9 = ptrtoint ptr %drivers_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drivers_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp245.not = icmp eq i32 %10, 0
  br i1 %cmp245.not, label %for.cond1.preheader.for.cond.loopexit_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %drivers = getelementptr i8, ptr %.pn51, i32 1696
  %drivers_data = getelementptr i8, ptr %.pn51, i32 1716
  br label %for.body3

for.body3:                                        ; preds = %if.end19.for.body3_crit_edge, %for.body3.lr.ph
  %i.046 = phi i32 [ 0, %for.body3.lr.ph ], [ %i.1, %if.end19.for.body3_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr %drivers, i32 0, i32 %i.046
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %12, %drv
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %13 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remove, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then6

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx8 = getelementptr [5 x ptr], ptr %drivers_data, i32 0, i32 %i.046
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx8, align 4
  tail call void %14(ptr noundef %minfo.052, ptr noundef %16) #13
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %drivers_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drivers_count, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %drivers_count, align 4
  %arrayidx11 = getelementptr [5 x ptr], ptr %drivers, i32 0, i32 %dec
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx, align 4
  %22 = load i32, ptr %drivers_count, align 4
  %arrayidx16 = getelementptr [5 x ptr], ptr %drivers_data, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr [5 x ptr], ptr %drivers_data, i32 0, i32 %i.046
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx18, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nuw i32 %i.046, 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  %i.1 = phi i32 [ %i.046, %if.end ], [ %inc, %if.else ]
  %26 = ptrtoint ptr %drivers_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drivers_count, align 4
  %cmp2 = icmp ult i32 %i.1, %27
  br i1 %cmp2, label %if.end19.for.body3_crit_edge, label %if.end19.for.cond.loopexit_crit_edge

if.end19.for.cond.loopexit_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.loopexit

if.end19.for.body3_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.end24:                                        ; preds = %for.cond.loopexit.for.end24_crit_edge, %list_del.exit.for.end24_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @matrox_done() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @matroxfb_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_init() #4 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #13
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @matroxfb_setup(ptr noundef %2) #17
  %.b = load i1, ptr @disabled, align 4
  br i1 %.b, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %.b10 = load i1, ptr @initialized, align 4
  br i1 %.b10, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @initialized, align 4
  %call7 = call fastcc i32 @matrox_init() #17
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %err.0 = phi i32 [ 0, %if.end4.if.end8_crit_edge ], [ %call7, %if.then6 ]
  store i1 true, ptr @hotplug, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ -19, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @matroxfb_crtc1_panpos(ptr noundef %minfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %panpos = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %panpos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %panpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %2 = ptrtoint ptr %panpos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %panpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp9 = icmp sgt i32 %3, -1
  br i1 %cmp9, label %if.then11, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then11:                                        ; preds = %if.then
  %4 = ptrtoint ptr %panpos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %panpos, align 4
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %5 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %vbase, align 4
  %6 = inttoptr i32 %.unpack to ptr
  %add.ptr.i = getelementptr i8, ptr %6, i32 8158
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %.tr = trunc i32 %3 to i16
  %8 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack39 = load i32, ptr %vbase, align 4
  %9 = inttoptr i32 %.unpack39 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @arm_heavy_mb() #13
  %10 = and i16 %.tr, 255
  %add.ptr.i41 = getelementptr i8, ptr %9, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i41, i16 %10) #13, !srcloc !381
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp19.not = icmp eq i8 %7, 0
  br i1 %cmp19.not, label %if.then11.if.end26_crit_edge, label %if.then21

if.then11.if.end26_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then21:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack40 = load i32, ptr %vbase, align 4
  %12 = inttoptr i32 %.unpack40 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i42 = getelementptr i8, ptr %12, i32 8158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i42, i8 %7) #13, !srcloc !383
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.then11.if.end26_crit_edge, %if.then.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %entry.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_probe(ptr noundef %pdev, ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  %cmd.i = alloca i32, align 4
  %mga_option.i = alloca i32, align 4
  %cmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #13
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !384
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %1 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %subsystem_vendor, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %3 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %subsystem_device, align 2
  %vendor2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %5 = ptrtoint ptr %vendor2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor2, align 8
  %device6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %7 = phi i16 [ 4139, %entry ], [ %22, %for.inc.for.body_crit_edge ]
  %b.0160 = phi ptr [ @dev_list, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %6)
  %cmp.not = icmp eq i16 %7, %6
  br i1 %cmp.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %device = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = ptrtoint ptr %device6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp8.not = icmp eq i16 %9, %11
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %rev = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 2
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rev, align 4
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  %16 = zext i8 %15 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %16)
  %cmp13 = icmp ult i16 %13, %16
  br i1 %cmp13, label %lor.lhs.false10.for.inc_crit_edge, label %if.end

lor.lhs.false10.for.inc_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false10
  %svid15 = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 3
  %17 = ptrtoint ptr %svid15 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %svid15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool16.not = icmp eq i16 %18, 0
  br i1 %tobool16.not, label %if.end.if.end35_crit_edge, label %if.then17

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %2)
  %cmp21.not = icmp eq i16 %18, %2
  br i1 %cmp21.not, label %lor.lhs.false23, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false23:                                  ; preds = %if.then17
  %sid24 = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 4
  %19 = ptrtoint ptr %sid24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sid24, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %4)
  %cmp27.not = icmp eq i16 %20, %4
  br i1 %cmp27.not, label %lor.lhs.false23.if.end35_crit_edge, label %lor.lhs.false23.for.inc_crit_edge

lor.lhs.false23.for.inc_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false23.if.end35_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.inc:                                          ; preds = %lor.lhs.false23.for.inc_crit_edge, %if.then17.for.inc_crit_edge, %lor.lhs.false10.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.board, ptr %b.0160, i32 1
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false23.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %23 = load i32, ptr @dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp36 = icmp sgt i32 %23, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr @dev, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 4, ptr noundef nonnull %cmd) #13
  %call40 = call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 3636) #18
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %pcidev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pdev, ptr %pcidev, align 8
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dead, align 4
  %usecount = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %usecount to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %usecount, align 4
  %userusecount = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %userusecount to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %userusecount, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %30 = load i32, ptr @memtype, align 4
  %devflags = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31
  %memtype = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 18
  %31 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %memtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp48.not = icmp eq i32 %30, -1
  br i1 %cmp48.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  store i32 0, ptr @noinit, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd, align 4
  %and = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %if.end51.if.end63_crit_edge, label %if.then53

if.end51.if.end63_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %34 = load i32, ptr @novga, align 4
  %35 = load i32, ptr @nobios, align 4
  %36 = load i32, ptr @noinit, align 4
  store i32 1, ptr @novga, align 4
  store i32 1, ptr @nobios, align 4
  store i32 0, ptr @noinit, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %if.end51.if.end63_crit_edge
  %.sink164 = phi i32 [ %34, %if.then53 ], [ 1, %if.end51.if.end63_crit_edge ]
  %.sink163 = phi i32 [ %35, %if.then53 ], [ 1, %if.end51.if.end63_crit_edge ]
  %.sink = phi i32 [ %36, %if.then53 ], [ 0, %if.end51.if.end63_crit_edge ]
  %37 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink164, ptr %37, align 8
  %39 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink163, ptr %39, align 4
  %41 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %41, align 4
  %43 = load i32, ptr @no_pci_retry, align 4
  %nopciretry = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 4
  %44 = ptrtoint ptr %nopciretry to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %nopciretry, align 8
  %45 = load i32, ptr @inv24, align 4
  %mga_24bpp_fix = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 1
  %46 = ptrtoint ptr %mga_24bpp_fix to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mga_24bpp_fix, align 4
  %47 = ptrtoint ptr %devflags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %devflags, align 8
  %.b = load i1, ptr @sgram, align 4
  %48 = zext i1 %.b to i32
  %sgram = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 6
  %49 = ptrtoint ptr %sgram to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %sgram, align 8
  %50 = load i32, ptr @cross4MB, align 4
  %cross4MB = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 29, i32 2
  %51 = ptrtoint ptr %cross4MB to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %cross4MB, align 4
  %lock = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 24
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @matroxfb_probe.__key, i16 noundef signext 3) #13
  %accel = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 24, i32 1
  call void @__raw_spin_lock_init(ptr noundef %accel, ptr noundef nonnull @.str.6, ptr noundef nonnull @matroxfb_probe.__key.5, i16 noundef signext 3) #13
  %crtc2 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 12
  %lock75 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 12, i32 4
  call void @__init_rwsem(ptr noundef %lock75, ptr noundef nonnull @.str.8, ptr noundef nonnull @matroxfb_probe.__key.7) #13
  %altout = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 13
  call void @__init_rwsem(ptr noundef %altout, ptr noundef nonnull @.str.10, ptr noundef nonnull @matroxfb_probe.__key.9) #13
  %mm_lock = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %mm_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @matroxfb_probe.__key.11) #13
  %irq_flags = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %irq_flags, align 4
  %crtc1 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %crtc1, ptr noundef nonnull @.str.14, ptr noundef nonnull @matroxfb_probe.__key.13) #13
  call void @__init_waitqueue_head(ptr noundef %crtc2, ptr noundef nonnull @.str.16, ptr noundef nonnull @matroxfb_probe.__key.15) #13
  %panpos = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 11, i32 3
  %53 = ptrtoint ptr %panpos to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %panpos, align 4
  store i32 1, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 16), align 4
  %base.i = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 8
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %lowlevel.i = getelementptr inbounds %struct.video_board, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %lowlevel.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lowlevel.i, align 4
  %hw_switch.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 22
  %58 = ptrtoint ptr %hw_switch.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %hw_switch.i, align 8
  %accelID.i = getelementptr inbounds %struct.video_board, ptr %55, i32 0, i32 2
  %59 = ptrtoint ptr %accelID.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %accelID.i, align 4
  %accelerator.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 8
  %61 = ptrtoint ptr %accelerator.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %accelerator.i, align 8
  %maxclk.i = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 6
  %62 = ptrtoint ptr %maxclk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %maxclk.i, align 4
  %max_pixel_clock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 20
  %64 = ptrtoint ptr %max_pixel_clock.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_pixel_clock.i, align 8
  %name.i = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 9
  %65 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %66) #16
  %plnwt.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 29, i32 4
  %67 = ptrtoint ptr %plnwt.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %plnwt.i, align 4
  %chip.i = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 7
  %68 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip.i, align 4
  %chip2.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 25
  %70 = ptrtoint ptr %chip2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %chip2.i, align 4
  %flags.i = getelementptr inbounds %struct.board, ptr %b.0160, i32 0, i32 5
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %72, 4
  %srcorg.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 29, i32 5
  %73 = ptrtoint ptr %srcorg.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i, ptr %srcorg.i, align 8
  %and5.i = and i32 %72, 1
  %video64bits.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 10
  %74 = ptrtoint ptr %video64bits.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and5.i, ptr %video64bits.i, align 8
  %and8.i = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %vgastep.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 13
  %75 = ptrtoint ptr %vgastep.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %vgastep.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end63
  %and13.i = and i32 %72, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %vgastep24.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 13
  br i1 %tobool14.not.i, label %if.else22.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %vgastep24.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 16, ptr %vgastep24.i, align 4
  br label %if.end29.i

if.else22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %vgastep24.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8, ptr %vgastep24.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else22.i, %if.then15.i, %if.then.i
  %.sink654.i = phi i32 [ 1, %if.then15.i ], [ 1, %if.else22.i ], [ 4, %if.then.i ]
  %.sink653.i = phi i32 [ 3, %if.then15.i ], [ 4, %if.else22.i ], [ 3, %if.then.i ]
  %textmode19.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 14
  %78 = ptrtoint ptr %textmode19.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink654.i, ptr %textmode19.i, align 8
  %text_type_aux21.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 9
  %79 = ptrtoint ptr %text_type_aux21.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink653.i, ptr %text_type_aux21.i, align 4
  %and31.i = lshr i32 %72, 8
  %and31.lobit.i = and i32 %and31.i, 1
  %support32MB.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 7
  %80 = ptrtoint ptr %support32MB.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and31.lobit.i, ptr %support32MB.i, align 4
  %and34.i = lshr i32 %72, 9
  %and34.lobit.i = and i32 %and34.i, 1
  %81 = xor i32 %and34.lobit.i, 1
  %82 = ptrtoint ptr %devflags to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %devflags, align 8
  %and38.i = lshr i32 %72, 11
  %and38.lobit.i = and i32 %and38.i, 1
  %crtc2.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 11
  %83 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and38.lobit.i, ptr %crtc2.i, align 4
  %and43.i = lshr i32 %72, 12
  %and43.lobit.i = and i32 %and43.i, 1
  %maven_capable.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 12
  %84 = ptrtoint ptr %maven_capable.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and43.lobit.i, ptr %maven_capable.i, align 8
  %and48.i = lshr i32 %72, 3
  %and48.lobit.i = and i32 %and48.i, 1
  %dualhead.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 22
  %85 = ptrtoint ptr %dualhead.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and48.lobit.i, ptr %dualhead.i, align 8
  %86 = load i32, ptr @dfp_type, align 4
  %dfp_type.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 20
  %87 = ptrtoint ptr %dfp_type.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %dfp_type.i, align 8
  %and54.i = lshr i32 %72, 14
  %and54.lobit.i = and i32 %and54.i, 1
  %g450dac.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 19
  %88 = ptrtoint ptr %g450dac.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and54.lobit.i, ptr %g450dac.i, align 4
  %vgastep59.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 13
  %89 = ptrtoint ptr %vgastep59.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vgastep59.i, align 4
  %mul.i = mul i32 %90, %.sink654.i
  %textstep.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 15
  %91 = ptrtoint ptr %textstep.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul.i, ptr %textstep.i, align 4
  %div.i = udiv i32 65536, %.sink654.i
  %textvram.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 16
  %92 = ptrtoint ptr %textvram.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div.i, ptr %textvram.i, align 8
  %default_src.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 4
  %93 = ptrtoint ptr %default_src.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %default_src.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.lobit.i)
  %tobool.not.i.i = icmp eq i32 %and54.lobit.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %default_src3.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 4
  %94 = ptrtoint ptr %default_src3.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %default_src3.i.i, align 4
  br label %if.end12.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end29.i
  %95 = load i32, ptr @dfp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool7.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.if.end12.i.i_crit_edge, label %if.else.i.i.if.end12.sink.split.i.i_crit_edge

if.else.i.i.if.end12.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.sink.split.i.i

if.else.i.i.if.end12.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i.i

if.end12.sink.split.i.i:                          ; preds = %if.else.i.i.if.end12.sink.split.i.i_crit_edge, %if.then.i.i
  %default_src11.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 4
  %96 = ptrtoint ptr %default_src11.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %default_src11.i.i, align 8
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end12.sink.split.i.i, %if.else.i.i.if.end12.i.i_crit_edge
  %97 = load i8, ptr @outputs, align 1
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %97, label %if.end12.i.i.do.end.i.i_crit_edge [
    i8 0, label %if.end12.i.i.setDefaultOutputs.exit.i_crit_edge
    i8 48, label %if.end12.i.i.for.inc.i.i_crit_edge
    i8 49, label %if.then28.i.i
    i8 50, label %land.lhs.true.i.i
  ]

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end12.i.i.setDefaultOutputs.exit.i_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setDefaultOutputs.exit.i

if.end12.i.i.do.end.i.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then28.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.lobit.i)
  %tobool37.not.i.i = icmp eq i32 %and38.lobit.i, 0
  br i1 %tobool37.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.2.i.i.do.end.i.i_crit_edge, %for.inc.1.i.i.do.end.i.i_crit_edge, %land.lhs.true.1.i.i.do.end.i.i_crit_edge, %for.inc.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end12.i.i.do.end.i.i_crit_edge
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #16
  br label %setDefaultOutputs.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.then28.i.i, %if.end12.i.i.for.inc.i.i_crit_edge
  %.sink.i.i = phi i32 [ 1, %if.then28.i.i ], [ 0, %if.end12.i.i.for.inc.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.for.inc.i.i_crit_edge ]
  %99 = ptrtoint ptr %default_src.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink.i.i, ptr %default_src.i.i, align 8
  %100 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @outputs, i32 0, i32 1), align 1
  %101 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %100, label %for.inc.i.i.do.end.i.i_crit_edge [
    i8 0, label %for.inc.i.i.setDefaultOutputs.exit.i_crit_edge
    i8 48, label %if.then20.1.i.i
    i8 49, label %for.inc.i.i.for.inc.1.i.i_crit_edge
    i8 50, label %land.lhs.true.1.i.i
  ]

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

for.inc.i.i.setDefaultOutputs.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setDefaultOutputs.exit.i

for.inc.i.i.do.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.lobit.i)
  %tobool37.not.1.i.i = icmp eq i32 %and38.lobit.i, 0
  br i1 %tobool37.not.1.i.i, label %land.lhs.true.1.i.i.do.end.i.i_crit_edge, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

land.lhs.true.1.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then20.1.i.i:                                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then20.1.i.i, %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %.sink66.i.i = phi i32 [ 0, %if.then20.1.i.i ], [ 2, %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge ], [ 1, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %default_src23.1.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 4
  %102 = ptrtoint ptr %default_src23.1.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink66.i.i, ptr %default_src23.1.i.i, align 4
  %103 = load i8, ptr getelementptr inbounds ([8 x i8], ptr @outputs, i32 0, i32 2), align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %103, label %for.inc.1.i.i.do.end.i.i_crit_edge [
    i8 0, label %for.inc.1.i.i.setDefaultOutputs.exit.i_crit_edge
    i8 48, label %if.then20.2.i.i
    i8 49, label %if.then28.2.i.i
    i8 50, label %land.lhs.true.2.i.i
  ]

for.inc.1.i.i.setDefaultOutputs.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %setDefaultOutputs.exit.i

for.inc.1.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.lobit.i)
  %tobool37.not.2.i.i = icmp eq i32 %and38.lobit.i, 0
  br i1 %tobool37.not.2.i.i, label %land.lhs.true.2.i.i.do.end.i.i_crit_edge, label %if.then38.2.i.i

land.lhs.true.2.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then38.2.i.i:                                  ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %default_src41.2.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 4
  %105 = ptrtoint ptr %default_src41.2.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %default_src41.2.i.i, align 8
  br label %setDefaultOutputs.exit.i

if.then28.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %default_src31.2.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 4
  %106 = ptrtoint ptr %default_src31.2.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %default_src31.2.i.i, align 8
  br label %setDefaultOutputs.exit.i

if.then20.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %default_src23.2.i.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 4
  %107 = ptrtoint ptr %default_src23.2.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %default_src23.2.i.i, align 8
  br label %setDefaultOutputs.exit.i

setDefaultOutputs.exit.i:                         ; preds = %if.then20.2.i.i, %if.then28.2.i.i, %if.then38.2.i.i, %for.inc.1.i.i.setDefaultOutputs.exit.i_crit_edge, %for.inc.i.i.setDefaultOutputs.exit.i_crit_edge, %do.end.i.i, %if.end12.i.i.setDefaultOutputs.exit.i_crit_edge
  store i8 0, ptr @outputs, align 1
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %flags.i, align 4
  %and67.i = and i32 %109, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %setDefaultOutputs.exit.i.if.end79.i_crit_edge, label %if.then69.i

setDefaultOutputs.exit.i.if.end79.i_crit_edge:    ; preds = %setDefaultOutputs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79.i

if.then69.i:                                      ; preds = %setDefaultOutputs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2
  %data.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 2
  %110 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call7.i.i, ptr %data.i, align 8
  %output.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 1
  %111 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @panellink_output, ptr %output.i, align 4
  %default_src.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 4
  %112 = ptrtoint ptr %default_src.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %default_src.i, align 8
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx.i, align 8
  %mode.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 3
  %115 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 128, ptr %mode.i, align 4
  %panellink.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 21
  %116 = ptrtoint ptr %panellink.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %panellink.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then69.i, %setDefaultOutputs.exit.i.if.end79.i_crit_edge
  %117 = ptrtoint ptr %cross4MB to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cross4MB, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp81.i = icmp slt i32 %118, 0
  br i1 %cmp81.i, label %if.then83.i, label %if.end79.i.if.end88.i_crit_edge

if.end79.i.if.end88.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  %and85.i = and i32 %109, 16
  %119 = ptrtoint ptr %cross4MB to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %and85.i, ptr %cross4MB, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then83.i, %if.end79.i.if.end88.i_crit_edge
  %and90.i = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  %120 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pcidev, align 8
  %resource101.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 47
  %arrayidx106.i = getelementptr %struct.pci_dev, ptr %121, i32 0, i32 47, i32 1
  %..i = select i1 %tobool91.not.i, i32 20, i32 16
  %arrayidx106.resource101.i = select i1 %tobool91.not.i, ptr %arrayidx106.i, ptr %resource101.i
  %resource101.arrayidx106.i = select i1 %tobool91.not.i, ptr %resource101.i, ptr %arrayidx106.i
  %122 = ptrtoint ptr %resource101.arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %ctrlptr_phys.0.i = load i32, ptr %resource101.arrayidx106.i, align 8
  %123 = ptrtoint ptr %arrayidx106.resource101.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %video_base_phys.0.i = load i32, ptr %arrayidx106.resource101.i, align 8
  %124 = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 23
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %..i, ptr %124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctrlptr_phys.0.i)
  %tobool111.not.i = icmp eq i32 %ctrlptr_phys.0.i, 0
  br i1 %tobool111.not.i, label %do.end115.i, label %if.end118.i

do.end115.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #15
  %call117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  br label %if.end98

if.end118.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %video_base_phys.0.i)
  %tobool119.not.i = icmp eq i32 %video_base_phys.0.i, 0
  br i1 %tobool119.not.i, label %do.end123.i, label %if.end126.i

do.end123.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #15
  %call125.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #16
  br label %if.end98

if.end126.i:                                      ; preds = %if.end118.i
  %126 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %call128.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %ctrlptr_phys.0.i, i32 noundef 16384, ptr noundef nonnull @.str.45, i32 noundef 0) #13
  %tobool129.not.i = icmp eq ptr %call128.i, null
  br i1 %tobool129.not.i, label %if.end126.i.if.end98_crit_edge, label %if.end131.i

if.end126.i.if.end98_crit_edge:                   ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98

if.end131.i:                                      ; preds = %if.end126.i
  %call132.i = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %video_base_phys.0.i, i32 noundef %129, ptr noundef nonnull @.str.46, i32 noundef 0) #13
  %tobool133.not.i = icmp eq ptr %call132.i, null
  br i1 %tobool133.not.i, label %if.end131.i.failCtrlMR.i_crit_edge, label %if.end135.i

if.end131.i.failCtrlMR.i_crit_edge:               ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %failCtrlMR.i

if.end135.i:                                      ; preds = %if.end131.i
  %video.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 18
  %len_maximum.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 18, i32 4
  %130 = ptrtoint ptr %len_maximum.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %len_maximum.i, align 8
  %131 = load i32, ptr @mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %131)
  %cmp136.i = icmp ult i32 %131, 1024
  br i1 %cmp136.i, label %if.end140.thread.i, label %if.end140.i

if.end140.thread.i:                               ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul139.i = shl nuw nsw i32 %131, 10
  br label %if.then143.i

if.end140.i:                                      ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %131)
  %cmp141.i = icmp ult i32 %131, 1048576
  br i1 %cmp141.i, label %if.end140.i.if.then143.i_crit_edge, label %if.end140.i.if.end145.i_crit_edge

if.end140.i.if.end145.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145.i

if.end140.i.if.then143.i_crit_edge:               ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then143.i

if.then143.i:                                     ; preds = %if.end140.i.if.then143.i_crit_edge, %if.end140.thread.i
  %132 = phi i32 [ %mul139.i, %if.end140.thread.i ], [ %131, %if.end140.i.if.then143.i_crit_edge ]
  %mul144.i = shl nuw nsw i32 %132, 10
  store i32 %mul144.i, ptr @mem, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then143.i, %if.end140.i.if.end145.i_crit_edge
  %133 = load i32, ptr @mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool146.not.i = icmp ne i32 %133, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %129)
  %cmp147.i = icmp ult i32 %133, %129
  %or.cond.i = select i1 %tobool146.not.i, i1 %cmp147.i, i1 false
  %memsize.0.i = select i1 %or.cond.i, i32 %133, i32 %129
  %call151.i = call ptr @ioremap(i32 noundef %ctrlptr_phys.0.i, i32 noundef 16384) #13
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 19, i32 1
  %134 = ptrtoint ptr %vbase.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call151.i, ptr %vbase.i, align 8
  %tobool155.not.i = icmp eq ptr %call151.i, null
  br i1 %tobool155.not.i, label %do.end159.i, label %if.end162.i

do.end159.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #15
  %call161.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %ctrlptr_phys.0.i) #16
  br label %failVideoMR.i

if.end162.i:                                      ; preds = %if.end145.i
  %mmio.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 19
  %135 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %ctrlptr_phys.0.i, ptr %mmio.i, align 4
  %len.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 19, i32 2
  %136 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 16384, ptr %len.i, align 4
  %137 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %video_base_phys.0.i, ptr %video.i, align 8
  %call168.i = call ptr @ioremap_wc(i32 noundef %video_base_phys.0.i, i32 noundef %memsize.0.i) #13
  %vbase170.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 18, i32 1
  %138 = ptrtoint ptr %vbase170.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call168.i, ptr %vbase170.i, align 4
  %tobool175.not.i = icmp eq ptr %call168.i, null
  br i1 %tobool175.not.i, label %do.end179.i, label %if.end182.i

do.end179.i:                                      ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #15
  %call181.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %video_base_phys.0.i, i32 noundef %memsize.0.i) #16
  br label %failCtrlIO.i

if.end182.i:                                      ; preds = %if.end162.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #13
  %139 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %cmd.i, align 4, !annotation !384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mga_option.i) #13
  %140 = ptrtoint ptr %mga_option.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %mga_option.i, align 4, !annotation !384
  %141 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pcidev, align 8
  %call184.i = call i32 @pci_read_config_dword(ptr noundef %142, i32 noundef 64, ptr noundef nonnull %mga_option.i) #13
  %143 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pcidev, align 8
  %call186.i = call i32 @pci_read_config_dword(ptr noundef %144, i32 noundef 4, ptr noundef nonnull %cmd.i) #13
  %145 = ptrtoint ptr %mga_option.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mga_option.i, align 4
  %and187.i = and i32 %146, 2147483647
  store i32 %and187.i, ptr %mga_option.i, align 4
  %147 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cmd.i, align 4
  %and188.i = and i32 %148, -33
  store i32 %and188.i, ptr %cmd.i, align 4
  %call189.i = call i32 @pci_dev_present(ptr noundef nonnull @initMatrox2.intel_82437) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %if.end182.i.if.end207.i_crit_edge, label %if.then191.i

if.end182.i.if.end207.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207.i

if.then191.i:                                     ; preds = %if.end182.i
  %149 = ptrtoint ptr %mga_option.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mga_option.i, align 4
  %and192.i = and i32 %150, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %land.lhs.true194.i, label %if.then191.i.if.end203.i_crit_edge

if.then191.i.if.end203.i_crit_edge:               ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end203.i

land.lhs.true194.i:                               ; preds = %if.then191.i
  %151 = ptrtoint ptr %nopciretry to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %nopciretry, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool196.not.i = icmp eq i32 %152, 0
  br i1 %tobool196.not.i, label %do.end200.i, label %land.lhs.true194.i.if.end203.i_crit_edge

land.lhs.true194.i.if.end203.i_crit_edge:         ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end203.i

do.end200.i:                                      ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #15
  %call202.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #16
  br label %if.end203.i

if.end203.i:                                      ; preds = %do.end200.i, %land.lhs.true194.i.if.end203.i_crit_edge, %if.then191.i.if.end203.i_crit_edge
  %153 = ptrtoint ptr %mga_option.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mga_option.i, align 4
  %or204.i = or i32 %154, 536870912
  store i32 %or204.i, ptr %mga_option.i, align 4
  %155 = ptrtoint ptr %nopciretry to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %nopciretry, align 8
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.end203.i, %if.end182.i.if.end207.i_crit_edge
  %156 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pcidev, align 8
  %158 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cmd.i, align 4
  %call209.i = call i32 @pci_write_config_dword(ptr noundef %157, i32 noundef 4, i32 noundef %159) #13
  %160 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pcidev, align 8
  %162 = ptrtoint ptr %mga_option.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mga_option.i, align 4
  %call211.i = call i32 @pci_write_config_dword(ptr noundef %161, i32 noundef 64, i32 noundef %163) #13
  %164 = ptrtoint ptr %mga_option.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mga_option.i, align 4
  %hw.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 8
  %166 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %hw.i, align 4
  %167 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pcidev, align 8
  %call213.i = call i32 @pci_write_config_dword(ptr noundef %168, i32 noundef 68, i32 noundef 15360) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mga_option.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #13
  call void @matroxfb_read_pins(ptr noundef nonnull %call7.i.i) #13
  %169 = ptrtoint ptr %hw_switch.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_switch.i, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %call215.i = call i32 %172(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215.i)
  %tobool216.not.i = icmp eq i32 %call215.i, 0
  br i1 %tobool216.not.i, label %if.end218.i, label %if.end207.i.failVideoIO.i_crit_edge

if.end207.i.failVideoIO.i_crit_edge:              ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %failVideoIO.i

if.end218.i:                                      ; preds = %if.end207.i
  %len220.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 18, i32 2
  %call221.i = call fastcc i32 @matroxfb_getmemory(ptr noundef nonnull %call7.i.i, i32 noundef %memsize.0.i, ptr noundef %len220.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221.i)
  %tobool222.not.i = icmp eq i32 %call221.i, 0
  br i1 %tobool222.not.i, label %if.end218.i.do.end229.i_crit_edge, label %lor.lhs.false.i

if.end218.i.do.end229.i_crit_edge:                ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end229.i

lor.lhs.false.i:                                  ; preds = %if.end218.i
  %173 = ptrtoint ptr %len220.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %len220.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool225.not.i = icmp eq i32 %174, 0
  br i1 %tobool225.not.i, label %lor.lhs.false.i.do.end229.i_crit_edge, label %if.end232.i

lor.lhs.false.i.do.end229.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end229.i

do.end229.i:                                      ; preds = %lor.lhs.false.i.do.end229.i_crit_edge, %if.end218.i.do.end229.i_crit_edge
  %call231.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #16
  br label %failVideoIO.i

if.end232.i:                                      ; preds = %lor.lhs.false.i
  %ydstorg.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 31, i32 17
  %175 = ptrtoint ptr %ydstorg.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %ydstorg.i, align 4
  %176 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %video_base_phys.0.i, ptr %video.i, align 8
  %len_usable.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 18, i32 3
  %177 = ptrtoint ptr %len_usable.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %174, ptr %len_usable.i, align 4
  %178 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i, align 4
  %maxdisplayable.i = getelementptr inbounds %struct.video_board, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %maxdisplayable.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %maxdisplayable.i, align 4
  %182 = call i32 @llvm.umin.i32(i32 %174, i32 %181) #13
  %183 = ptrtoint ptr %len_usable.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %len_usable.i, align 4
  %184 = load i32, ptr @mtrr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool250.not.i = icmp eq i32 %184, 0
  br i1 %tobool250.not.i, label %if.end232.i.if.end255.i_crit_edge, label %if.then251.i

if.end232.i.if.end255.i_crit_edge:                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end255.i

if.then251.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #15
  %wc_cookie.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 30
  %185 = ptrtoint ptr %wc_cookie.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %wc_cookie.i, align 4
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.then251.i, %if.end232.i.if.end255.i_crit_edge
  %186 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool257.not.i = icmp eq i32 %187, 0
  br i1 %tobool257.not.i, label %if.then258.i, label %if.end255.i.if.end260.i_crit_edge

if.end255.i.if.end260.i_crit_edge:                ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end260.i

if.then258.i:                                     ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #15
  %call259.i = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 960, i32 noundef 32, ptr noundef nonnull @.str.59, i32 noundef 0) #13
  br label %if.end260.i

if.end260.i:                                      ; preds = %if.then258.i, %if.end255.i.if.end260.i_crit_edge
  call void @matroxfb_g450_connect(ptr noundef nonnull %call7.i.i) #13
  %188 = ptrtoint ptr %hw_switch.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw_switch.i, align 8
  %reset.i = getelementptr inbounds %struct.matrox_switch, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %reset.i, align 4
  call void %191(ptr noundef nonnull %call7.i.i) #13
  %hfmin.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 8, i32 11
  %192 = ptrtoint ptr %hfmin.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %hfmin.i, align 4
  %193 = load i32, ptr @fh, align 4
  %hfmax.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 8, i32 12
  %194 = ptrtoint ptr %hfmax.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %hfmax.i, align 8
  %vfmin.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 8, i32 18
  %195 = ptrtoint ptr %vfmin.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %vfmin.i, align 2
  %196 = load i32, ptr @fv, align 4
  %conv266.i = trunc i32 %196 to i16
  %vfmax.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 8, i32 19
  %197 = ptrtoint ptr %vfmax.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv266.i, ptr %vfmax.i, align 4
  %dpms.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 8, i32 16
  %198 = ptrtoint ptr %dpms.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %dpms.i, align 2
  %199 = load i32, ptr @depth, align 4
  %sub.i = add i32 %199, -1
  %arrayidx271.i = getelementptr [8 x %struct.anon.109], ptr @colors, i32 0, i32 %sub.i
  %200 = call ptr @memcpy(ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 8), ptr %arrayidx271.i, i32 12)
  %green.i = getelementptr [8 x %struct.anon.109], ptr @colors, i32 0, i32 %sub.i, i32 1
  %201 = call ptr @memcpy(ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 9), ptr %green.i, i32 12)
  %blue.i = getelementptr [8 x %struct.anon.109], ptr @colors, i32 0, i32 %sub.i, i32 2
  %202 = call ptr @memcpy(ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 10), ptr %blue.i, i32 12)
  %bits_per_pixel.i = getelementptr [8 x %struct.anon.109], ptr @colors, i32 0, i32 %sub.i, i32 4
  %203 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %bits_per_pixel.i, align 4
  store i32 %204, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 6), align 4
  %205 = load i32, ptr @grayscale, align 4
  store i32 %205, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 7), align 4
  store i32 0, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 25), align 4
  %206 = load i32, ptr @noaccel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool278.not.i = icmp eq i32 %206, 0
  br i1 %tobool278.not.i, label %if.end260.i.if.end281.i_crit_edge, label %if.then279.i

if.end260.i.if.end281.i_crit_edge:                ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end281.i

if.then279.i:                                     ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #15
  %207 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 16), align 4
  %and280.i = and i32 %207, -2
  store i32 %and280.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 16), align 4
  br label %if.end281.i

if.end281.i:                                      ; preds = %if.then279.i, %if.end260.i.if.end281.i_crit_edge
  %fbops.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 32
  %208 = call ptr @memcpy(ptr %fbops.i, ptr @matroxfb_ops, i32 92)
  %fbops284.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 20
  %209 = ptrtoint ptr %fbops284.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %fbops.i, ptr %fbops284.i, align 8
  %cmap.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 37
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 27
  %210 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %cmap.i, ptr %pseudo_palette.i, align 4
  %flags287.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 2
  %211 = ptrtoint ptr %flags287.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 14272, ptr %flags287.i, align 8
  %212 = ptrtoint ptr %len_usable.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %len_usable.i, align 4
  %and290.i = and i32 %213, -4096
  store i32 %and290.i, ptr %len_usable.i, align 4
  %cmap292.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 12
  %call293.i = call i32 @fb_alloc_cmap(ptr noundef %cmap292.i, i32 noundef 256, i32 noundef 1) #13
  %.b.i = load i1, ptr @hotplug, align 4
  br i1 %.b.i, label %if.end281.i.if.end300.i_crit_edge, label %if.then295.i

if.end281.i.if.end300.i_crit_edge:                ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end300.i

if.then295.i:                                     ; preds = %if.end281.i
  call void @__sanitizer_cov_trace_pc() #15
  %214 = load i8, ptr @videomode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool298.not.i = icmp eq i8 %214, 0
  %cond.i = select i1 %tobool298.not.i, ptr null, ptr @videomode
  %215 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 6), align 4
  %call299.i = call i32 @fb_find_mode(ptr noundef nonnull @vesafb_defined, ptr noundef nonnull %call7.i.i, ptr noundef %cond.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @defaultmode, i32 noundef %215) #13
  br label %if.end300.i

if.end300.i:                                      ; preds = %if.then295.i, %if.end281.i.if.end300.i_crit_edge
  %216 = load i32, ptr @hslen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool301.not.i = icmp eq i32 %216, 0
  br i1 %tobool301.not.i, label %if.end300.i.if.end303.i_crit_edge, label %if.then302.i

if.end300.i.if.end303.i_crit_edge:                ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end303.i

if.then302.i:                                     ; preds = %if.end300.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %216, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 22), align 4
  br label %if.end303.i

if.end303.i:                                      ; preds = %if.then302.i, %if.end300.i.if.end303.i_crit_edge
  %217 = load i32, ptr @vslen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool304.not.i = icmp eq i32 %217, 0
  br i1 %tobool304.not.i, label %if.end303.i.if.end306.i_crit_edge, label %if.then305.i

if.end303.i.if.end306.i_crit_edge:                ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end306.i

if.then305.i:                                     ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %217, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 23), align 4
  br label %if.end306.i

if.end306.i:                                      ; preds = %if.then305.i, %if.end303.i.if.end306.i_crit_edge
  %218 = load i32, ptr @left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %218)
  %cmp307.not.i = icmp eq i32 %218, -1
  br i1 %cmp307.not.i, label %if.end306.i.if.end310.i_crit_edge, label %if.then309.i

if.end306.i.if.end310.i_crit_edge:                ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end310.i

if.then309.i:                                     ; preds = %if.end306.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %218, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 18), align 4
  br label %if.end310.i

if.end310.i:                                      ; preds = %if.then309.i, %if.end306.i.if.end310.i_crit_edge
  %219 = load i32, ptr @right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %219)
  %cmp311.not.i = icmp eq i32 %219, -1
  br i1 %cmp311.not.i, label %if.end310.i.if.end314.i_crit_edge, label %if.then313.i

if.end310.i.if.end314.i_crit_edge:                ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end314.i

if.then313.i:                                     ; preds = %if.end310.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %219, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 19), align 4
  br label %if.end314.i

if.end314.i:                                      ; preds = %if.then313.i, %if.end310.i.if.end314.i_crit_edge
  %220 = load i32, ptr @upper, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %220)
  %cmp315.not.i = icmp eq i32 %220, -1
  br i1 %cmp315.not.i, label %if.end314.i.if.end318.i_crit_edge, label %if.then317.i

if.end314.i.if.end318.i_crit_edge:                ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end318.i

if.then317.i:                                     ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %220, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 20), align 4
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.then317.i, %if.end314.i.if.end318.i_crit_edge
  %221 = load i32, ptr @lower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %221)
  %cmp319.not.i = icmp eq i32 %221, -1
  br i1 %cmp319.not.i, label %if.end318.i.if.end322.i_crit_edge, label %if.then321.i

if.end318.i.if.end322.i_crit_edge:                ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322.i

if.then321.i:                                     ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %221, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 21), align 4
  br label %if.end322.i

if.end322.i:                                      ; preds = %if.then321.i, %if.end318.i.if.end322.i_crit_edge
  %222 = load i32, ptr @xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool323.not.i = icmp eq i32 %222, 0
  br i1 %tobool323.not.i, label %if.end322.i.if.end325.i_crit_edge, label %if.then324.i

if.end322.i.if.end325.i_crit_edge:                ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end325.i

if.then324.i:                                     ; preds = %if.end322.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %222, ptr @vesafb_defined, align 4
  br label %if.end325.i

if.end325.i:                                      ; preds = %if.then324.i, %if.end322.i.if.end325.i_crit_edge
  %223 = load i32, ptr @yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool326.not.i = icmp eq i32 %223, 0
  br i1 %tobool326.not.i, label %if.end325.i.if.end328.i_crit_edge, label %if.then327.i

if.end325.i.if.end328.i_crit_edge:                ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end328.i

if.then327.i:                                     ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %223, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 1), align 4
  br label %if.end328.i

if.end328.i:                                      ; preds = %if.then327.i, %if.end325.i.if.end328.i_crit_edge
  %224 = load i32, ptr @sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %224)
  %cmp329.not.i = icmp eq i32 %224, -1
  br i1 %cmp329.not.i, label %if.else332.i, label %if.end328.i.if.end348.sink.split.i_crit_edge

if.end328.i.if.end348.sink.split.i_crit_edge:     ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end348.sink.split.i

if.else332.i:                                     ; preds = %if.end328.i
  %225 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 24), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %225)
  %cmp333.i = icmp eq i32 %225, -1
  br i1 %cmp333.i, label %if.then335.i, label %if.else332.i.if.end348.i_crit_edge

if.else332.i.if.end348.i_crit_edge:               ; preds = %if.else332.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end348.i

if.then335.i:                                     ; preds = %if.else332.i
  store i32 0, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 24), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %223)
  %cmp336.i = icmp ult i32 %223, 400
  br i1 %cmp336.i, label %if.then335.i.if.end348.sink.split.i_crit_edge, label %if.else340.i

if.then335.i.if.end348.sink.split.i_crit_edge:    ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end348.sink.split.i

if.else340.i:                                     ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %223)
  %cmp341.i = icmp ult i32 %223, 480
  br i1 %cmp341.i, label %if.else340.i.if.end348.sink.split.i_crit_edge, label %if.else340.i.if.end348.i_crit_edge

if.else340.i.if.end348.i_crit_edge:               ; preds = %if.else340.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end348.i

if.else340.i.if.end348.sink.split.i_crit_edge:    ; preds = %if.else340.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end348.sink.split.i

if.end348.sink.split.i:                           ; preds = %if.else340.i.if.end348.sink.split.i_crit_edge, %if.then335.i.if.end348.sink.split.i_crit_edge, %if.end328.i.if.end348.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %224, %if.end328.i.if.end348.sink.split.i_crit_edge ], [ 1, %if.then335.i.if.end348.sink.split.i_crit_edge ], [ 2, %if.else340.i.if.end348.sink.split.i_crit_edge ]
  store i32 %.sink.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 24), align 4
  br label %if.end348.i

if.end348.i:                                      ; preds = %if.end348.sink.split.i, %if.else340.i.if.end348.i_crit_edge, %if.else332.i.if.end348.i_crit_edge
  %226 = load i32, ptr @fv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool350.not.i = icmp eq i32 %226, 0
  br i1 %tobool350.not.i, label %if.end362thread-pre-split.i, label %if.then351.i

if.then351.i:                                     ; preds = %if.end348.i
  %227 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 20), align 4
  %228 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 1), align 4
  %add.i = add i32 %228, %227
  %229 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 21), align 4
  %add352.i = add i32 %add.i, %229
  %230 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 23), align 4
  %add353.i = add i32 %add352.i, %230
  %mul354.i = mul i32 %add353.i, %226
  %231 = load i32, ptr @fh, align 4
  %232 = add i32 %231, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %mul354.i)
  %.not.i = icmp ult i32 %232, %mul354.i
  br i1 %.not.i, label %if.then351.i.if.then364.i_crit_edge, label %if.then360.i

if.then351.i.if.then364.i_crit_edge:              ; preds = %if.then351.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i

if.then360.i:                                     ; preds = %if.then351.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %mul354.i, ptr @fh, align 4
  br label %if.end362.i

if.end362thread-pre-split.i:                      ; preds = %if.end348.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pr.i = load i32, ptr @fh, align 4
  br label %if.end362.i

if.end362.i:                                      ; preds = %if.end362thread-pre-split.i, %if.then360.i
  %233 = phi i32 [ %.pr.i, %if.end362thread-pre-split.i ], [ %mul354.i, %if.then360.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %tobool363.not.i = icmp eq i32 %233, 0
  br i1 %tobool363.not.i, label %if.end362.i.if.end376.i_crit_edge, label %if.end362.i.if.then364.i_crit_edge

if.end362.i.if.then364.i_crit_edge:               ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then364.i

if.end362.i.if.end376.i_crit_edge:                ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end376.i

if.then364.i:                                     ; preds = %if.end362.i.if.then364.i_crit_edge, %if.then351.i.if.then364.i_crit_edge
  %234 = phi i32 [ %233, %if.end362.i.if.then364.i_crit_edge ], [ %231, %if.then351.i.if.then364.i_crit_edge ]
  %235 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 18), align 4
  %236 = load i32, ptr @vesafb_defined, align 4
  %add365.i = add i32 %236, %235
  %237 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 19), align 4
  %add366.i = add i32 %add365.i, %237
  %238 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 22), align 4
  %add367.i = add i32 %add366.i, %238
  %mul368.i = mul i32 %add367.i, %234
  %239 = load i32, ptr @maxclk, align 4
  %240 = add i32 %239, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %mul368.i)
  %.not652.i = icmp ult i32 %240, %mul368.i
  br i1 %.not652.i, label %if.then364.i.if.end376.i_crit_edge, label %if.then374.i

if.then364.i.if.end376.i_crit_edge:               ; preds = %if.then364.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end376.i

if.then374.i:                                     ; preds = %if.then364.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %mul368.i, ptr @maxclk, align 4
  br label %if.end376.i

if.end376.i:                                      ; preds = %if.then374.i, %if.then364.i.if.end376.i_crit_edge, %if.end362.i.if.end376.i_crit_edge
  %241 = load i32, ptr @maxclk, align 4
  %add377.i = add i32 %241, 499
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %add377.i)
  %242 = icmp ult i32 %add377.i, 500
  br i1 %242, label %if.end387thread-pre-split.i, label %if.then380.i

if.then380.i:                                     ; preds = %if.end376.i
  %div378.i = udiv i32 %add377.i, 500
  %add381.i = add nuw nsw i32 %div378.i, 2000000000
  %div382.i = udiv i32 %add381.i, %div378.i
  %243 = load i32, ptr @pixclock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div382.i, i32 %243)
  %cmp383.i = icmp ugt i32 %div382.i, %243
  br i1 %cmp383.i, label %if.end387.thread.i, label %if.then380.i.if.end387.i_crit_edge

if.then380.i.if.end387.i_crit_edge:               ; preds = %if.then380.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end387.i

if.end387.thread.i:                               ; preds = %if.then380.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %div382.i, ptr @pixclock, align 4
  br label %if.then389.i

if.end387thread-pre-split.i:                      ; preds = %if.end376.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pr648.i = load i32, ptr @pixclock, align 4
  br label %if.end387.i

if.end387.i:                                      ; preds = %if.end387thread-pre-split.i, %if.then380.i.if.end387.i_crit_edge
  %244 = phi i32 [ %.pr648.i, %if.end387thread-pre-split.i ], [ %243, %if.then380.i.if.end387.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool388.not.i = icmp eq i32 %244, 0
  br i1 %tobool388.not.i, label %if.end387.i.if.end398.i_crit_edge, label %if.end387.i.if.then389.i_crit_edge

if.end387.i.if.then389.i_crit_edge:               ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then389.i

if.end387.i.if.end398.i_crit_edge:                ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end398.i

if.then389.i:                                     ; preds = %if.end387.i.if.then389.i_crit_edge, %if.end387.thread.i
  %245 = phi i32 [ %div382.i, %if.end387.thread.i ], [ %244, %if.end387.i.if.then389.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %245)
  %cmp390.i = icmp ult i32 %245, 2000
  br i1 %cmp390.i, label %if.then389.i.if.end397.sink.split.i_crit_edge, label %if.end393.i

if.then389.i.if.end397.sink.split.i_crit_edge:    ; preds = %if.then389.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end397.sink.split.i

if.end393.i:                                      ; preds = %if.then389.i
  %.pr650.i = load i32, ptr @pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %.pr650.i)
  %cmp394.i = icmp ugt i32 %.pr650.i, 1000000
  br i1 %cmp394.i, label %if.end393.i.if.end397.sink.split.i_crit_edge, label %if.end393.i.if.end397.i_crit_edge

if.end393.i.if.end397.i_crit_edge:                ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end397.i

if.end393.i.if.end397.sink.split.i_crit_edge:     ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end397.sink.split.i

if.end397.sink.split.i:                           ; preds = %if.end393.i.if.end397.sink.split.i_crit_edge, %if.then389.i.if.end397.sink.split.i_crit_edge
  %.sink655.i = phi i32 [ 4000, %if.then389.i.if.end397.sink.split.i_crit_edge ], [ 1000000, %if.end393.i.if.end397.sink.split.i_crit_edge ]
  store i32 %.sink655.i, ptr @pixclock, align 4
  br label %if.end397.i

if.end397.i:                                      ; preds = %if.end397.sink.split.i, %if.end393.i.if.end397.i_crit_edge
  %246 = load i32, ptr @pixclock, align 4
  store i32 %246, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 17), align 4
  br label %if.end398.i

if.end398.i:                                      ; preds = %if.end397.i, %if.end387.i.if.end398.i_crit_edge
  %247 = load i32, ptr @vesafb_defined, align 4
  store i32 %247, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 2), align 4
  %248 = load i32, ptr @nopan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool399.not.i = icmp eq i32 %248, 0
  br i1 %tobool399.not.i, label %if.end398.i.if.end402.i_crit_edge, label %if.then400.i

if.end398.i.if.end402.i_crit_edge:                ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end402.i

if.then400.i:                                     ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #15
  %249 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 1), align 4
  br label %if.end402.i

if.end402.i:                                      ; preds = %if.then400.i, %if.end398.i.if.end402.i_crit_edge
  %storemerge.i = phi i32 [ %249, %if.then400.i ], [ 65536, %if.end398.i.if.end402.i_crit_edge ]
  store i32 %storemerge.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 3), align 4
  %fix1.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7
  %250 = call ptr @memcpy(ptr %fix1.i.i, ptr @.str.80, i32 7)
  %xpanstep.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 6
  %251 = ptrtoint ptr %xpanstep.i.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 8, ptr %xpanstep.i.i, align 4
  %ypanstep.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 7
  %252 = ptrtoint ptr %ypanstep.i.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 1, ptr %ypanstep.i.i, align 2
  %ywrapstep.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 8
  %253 = ptrtoint ptr %ywrapstep.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 0, ptr %ywrapstep.i.i, align 8
  %254 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mmio.i, align 4
  %mmio_start.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 10
  %256 = ptrtoint ptr %mmio_start.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %mmio_start.i.i, align 8
  %257 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %len.i, align 4
  %mmio_len.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 11
  %259 = ptrtoint ptr %mmio_len.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %mmio_len.i.i, align 4
  %260 = ptrtoint ptr %accelerator.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %accelerator.i, align 8
  %accel.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 12
  %262 = ptrtoint ptr %accel.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %accel.i.i, align 8
  %263 = ptrtoint ptr %vbase170.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %.unpack.i = load i32, ptr %vbase170.i, align 4
  %264 = inttoptr i32 %.unpack.i to ptr
  %265 = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 25
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %264, ptr %265, align 4
  %call408.i = call i32 @matroxfb_check_var(ptr noundef nonnull @vesafb_defined, ptr noundef nonnull %call7.i.i) #13
  %var.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 6
  %267 = call ptr @memcpy(ptr %var.i, ptr @vesafb_defined, i32 160)
  %268 = load i32, ptr @vesafb_defined, align 4
  %269 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 1), align 4
  %270 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 6), align 4
  %271 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 2), align 4
  %272 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 3), align 4
  %call414.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %268, i32 noundef %269, i32 noundef %270, i32 noundef %271, i32 noundef %272) #16
  %273 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %video.i, align 8
  %275 = ptrtoint ptr %vbase170.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %.unpack643.i = load i32, ptr %vbase170.i, align 4
  %276 = inttoptr i32 %.unpack643.i to ptr
  %277 = ptrtoint ptr %len220.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %len220.i, align 8
  %call427.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %274, ptr noundef %276, i32 noundef %278) #16
  %279 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %pcidev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 44
  %device.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 21
  %281 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %dev.i, ptr %device.i, align 4
  %call431.i = call i32 @register_framebuffer(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call431.i)
  %cmp432.i = icmp slt i32 %call431.i, 0
  br i1 %cmp432.i, label %if.end402.i.failVideoIO.i_crit_edge, label %do.end438.i

if.end402.i.failVideoIO.i_crit_edge:              ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %failVideoIO.i

do.end438.i:                                      ; preds = %if.end402.i
  %node.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 1
  %282 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %node.i, align 4
  %call443.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %283, ptr noundef %fix1.i.i) #16
  %initialized.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 3
  %284 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %initialized.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool444.not.i = icmp eq i32 %285, 0
  br i1 %tobool444.not.i, label %do.end448.i, label %do.end438.i.if.then97_crit_edge

do.end438.i.if.then97_crit_edge:                  ; preds = %do.end438.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then97

do.end448.i:                                      ; preds = %do.end438.i
  call void @__sanitizer_cov_trace_pc() #15
  %286 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %node.i, align 4
  %call452.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %287) #16
  %288 = load i32, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 13), align 4
  %or453.i = or i32 %288, 128
  store i32 %or453.i, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @vesafb_defined, i32 0, i32 13), align 4
  %call455.i = call i32 @fb_set_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @vesafb_defined) #13
  br label %if.then97

failVideoIO.i:                                    ; preds = %if.end402.i.failVideoIO.i_crit_edge, %do.end229.i, %if.end207.i.failVideoIO.i_crit_edge
  call void @matroxfb_g450_shutdown(ptr noundef nonnull %call7.i.i) #13
  %289 = ptrtoint ptr %vbase170.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %vbase170.i, align 4
  call void @iounmap(ptr noundef %290) #13
  br label %failCtrlIO.i

failCtrlIO.i:                                     ; preds = %failVideoIO.i, %do.end179.i
  %291 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %vbase.i, align 8
  call void @iounmap(ptr noundef %292) #13
  br label %failVideoMR.i

failVideoMR.i:                                    ; preds = %failCtrlIO.i, %do.end159.i
  %293 = ptrtoint ptr %len_maximum.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %len_maximum.i, align 8
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %video_base_phys.0.i, i32 noundef %294) #13
  br label %failCtrlMR.i

failCtrlMR.i:                                     ; preds = %failVideoMR.i, %if.end131.i.failCtrlMR.i_crit_edge
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %ctrlptr_phys.0.i, i32 noundef 16384) #13
  br label %if.end98

if.then97:                                        ; preds = %do.end448.i, %do.end438.i.if.then97_crit_edge
  %next_fb.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 1
  %295 = load ptr, ptr @matroxfb_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %next_fb.i, ptr noundef nonnull @matroxfb_list, ptr noundef %295) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then97.list_add.exit.i_crit_edge

if.then97.list_add.exit.i_crit_edge:              ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %next_fb.i, ptr %prev1.i.i.i, align 4
  %297 = ptrtoint ptr %next_fb.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %295, ptr %next_fb.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %298 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr @matroxfb_list, ptr %prev3.i.i.i, align 8
  store volatile ptr %next_fb.i, ptr @matroxfb_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then97.list_add.exit.i_crit_edge
  %drv.030.i = load ptr, ptr @matroxfb_driver_list, align 4
  %cmp.not31.i = icmp eq ptr %drv.030.i, @matroxfb_driver_list
  br i1 %cmp.not31.i, label %list_add.exit.i.matroxfb_register_device.exit_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  br label %for.body.i

list_add.exit.i.matroxfb_register_device.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_register_device.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %list_add.exit.i.for.body.i_crit_edge
  %drv.033.i = phi ptr [ %drv.0.i, %for.inc.i.for.body.i_crit_edge ], [ %drv.030.i, %list_add.exit.i.for.body.i_crit_edge ]
  %i.032.i = phi i32 [ %i.3.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %list_add.exit.i.for.body.i_crit_edge ]
  %probe.i = getelementptr inbounds %struct.matroxfb_driver, ptr %drv.033.i, i32 0, i32 2
  %299 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %probe.i, align 4
  %tobool.not.i152 = icmp eq ptr %300, null
  br i1 %tobool.not.i152, label %for.body.i.for.inc.i_crit_edge, label %if.then.i154

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i154:                                     ; preds = %for.body.i
  %call.i153 = call ptr %300(ptr noundef %call7.i.i) #13
  %tobool5.not.i = icmp eq ptr %call.i153, null
  br i1 %tobool5.not.i, label %if.then.i154.for.inc.i_crit_edge, label %if.then6.i

if.then.i154.for.inc.i_crit_edge:                 ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then.i154
  %arrayidx.i155 = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 16, i32 %i.032.i
  %301 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i153, ptr %arrayidx.i155, align 4
  %inc.i = add i32 %i.032.i, 1
  %arrayidx7.i = getelementptr %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 15, i32 %i.032.i
  %302 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %drv.033.i, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc.i)
  %cmp8.i = icmp eq i32 %inc.i, 5
  br i1 %cmp8.i, label %if.then6.i.matroxfb_register_device.exit_crit_edge, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i.matroxfb_register_device.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_register_device.exit

for.inc.i:                                        ; preds = %if.then6.i.for.inc.i_crit_edge, %if.then.i154.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.3.i = phi i32 [ %i.032.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then6.i.for.inc.i_crit_edge ], [ %i.032.i, %if.then.i154.for.inc.i_crit_edge ]
  %303 = ptrtoint ptr %drv.033.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %drv.0.i = load ptr, ptr %drv.033.i, align 4
  %cmp.not.i = icmp eq ptr %drv.0.i, @matroxfb_driver_list
  br i1 %cmp.not.i, label %for.inc.i.matroxfb_register_device.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.matroxfb_register_device.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_register_device.exit

matroxfb_register_device.exit:                    ; preds = %for.inc.i.matroxfb_register_device.exit_crit_edge, %if.then6.i.matroxfb_register_device.exit_crit_edge, %list_add.exit.i.matroxfb_register_device.exit_crit_edge
  %i.4.i = phi i32 [ 0, %list_add.exit.i.matroxfb_register_device.exit_crit_edge ], [ %i.3.i, %for.inc.i.matroxfb_register_device.exit_crit_edge ], [ 5, %if.then6.i.matroxfb_register_device.exit_crit_edge ]
  %drivers_count.i = getelementptr inbounds %struct.matrox_fb_info, ptr %call7.i.i, i32 0, i32 17
  %304 = ptrtoint ptr %drivers_count.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %i.4.i, ptr %drivers_count.i, align 4
  br label %cleanup

if.end98:                                         ; preds = %failCtrlMR.i, %if.end126.i.if.end98_crit_edge, %do.end123.i, %do.end115.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %matroxfb_register_device.exit, %if.end43.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then38, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then38 ], [ -1, %if.end98 ], [ 0, %matroxfb_register_device.exit ], [ -1, %if.end39.cleanup_crit_edge ], [ -12, %if.end43.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_remove_matrox(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @matroxfb_remove(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_read_pins(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @matroxfb_getmemory(ptr nocapture noundef %minfo, i32 noundef %maxSize, ptr nocapture noundef writeonly %realSize) unnamed_addr #0 align 64 {
entry:
  %bytes = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bytes) #13
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18, i32 1
  %0 = call ptr @memset(ptr %bytes, i32 255, i32 32)
  %1 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %1)
  %vm.sroa.0.0.copyload = load ptr, ptr %vbase, align 4
  %and = and i32 %maxSize, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %and, i32 33554432)
  %vbase4 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %vbase4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack = load i32, ptr %vbase4, align 4
  %4 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i = getelementptr i8, ptr %4, i32 8158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 3) #13, !srcloc !383
  %5 = ptrtoint ptr %vbase4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack131 = load i32, ptr %vbase4, align 4
  %6 = inttoptr i32 %.unpack131 to ptr
  %add.ptr.i136 = getelementptr i8, ptr %6, i32 8159
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i136) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %conv11 = or i8 %7, -128
  %8 = ptrtoint ptr %vbase4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack132 = load i32, ptr %vbase4, align 4
  %9 = inttoptr i32 %.unpack132 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i137 = getelementptr i8, ptr %9, i32 8159
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i137, i8 %conv11) #13, !srcloc !383
  %umax = call i32 @llvm.umax.i32(i32 %2, i32 3145728)
  %10 = add nsw i32 %umax, -1048577
  %11 = lshr i32 %10, 21
  %uglygep = getelementptr i8, ptr %bytes, i32 %11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %tmp.0154 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %bytes, %if.end ]
  %offs.0153 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 1048576, %if.end ]
  %add.ptr.i138 = getelementptr i8, ptr %vm.sroa.0.0.copyload, i32 %offs.0153
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i138) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %incdec.ptr = getelementptr i8, ptr %tmp.0154, i32 1
  %13 = ptrtoint ptr %tmp.0154 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %tmp.0154, align 1
  %add = add nuw nsw i32 %offs.0153, 2097152
  %exitcond.not = icmp eq ptr %tmp.0154, %uglygep
  br i1 %exitcond.not, label %for.body.for.body21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.body21_crit_edge:                    ; preds = %for.body
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body.for.body21_crit_edge
  %offs.1156 = phi i32 [ %add24, %for.body21.for.body21_crit_edge ], [ 1048576, %for.body.for.body21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i140 = getelementptr i8, ptr %vm.sroa.0.0.copyload, i32 %offs.1156
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i140, i8 2) #13, !srcloc !383
  %add24 = add nuw nsw i32 %offs.1156, 2097152
  %cmp19 = icmp ult i32 %add24, %2
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.end25

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

for.end25:                                        ; preds = %for.body21
  %14 = ptrtoint ptr %vbase4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack133 = load i32, ptr %vbase4, align 4
  %15 = inttoptr i32 %.unpack133 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i141 = getelementptr i8, ptr %15, i32 8191
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i141, i8 0) #13, !srcloc !383
  br label %for.body32

for.body32:                                       ; preds = %for.inc47.for.body32_crit_edge, %for.end25
  %offs.2158 = phi i32 [ %add48, %for.inc47.for.body32_crit_edge ], [ 1048576, %for.end25 ]
  %add.ptr.i142 = getelementptr i8, ptr %vm.sroa.0.0.copyload, i32 %offs.2158
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i142) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp35.not = icmp eq i8 %16, 2
  br i1 %cmp35.not, label %if.end38, label %for.body32.for.body54.preheader_crit_edge

for.body32.for.body54.preheader_crit_edge:        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.preheader

if.end38:                                         ; preds = %for.body32
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i142) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %conv41 = add i8 %17, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i142, i8 %conv41) #13, !srcloc !383
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i142) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %for.inc47, label %if.end38.for.body54.preheader_crit_edge

if.end38.for.body54.preheader_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.preheader

for.inc47:                                        ; preds = %if.end38
  %add48 = add nuw nsw i32 %offs.2158, 2097152
  %cmp30 = icmp ult i32 %add48, %2
  br i1 %cmp30, label %for.inc47.for.body32_crit_edge, label %for.inc47.for.body54.preheader_crit_edge

for.inc47.for.body54.preheader_crit_edge:         ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54.preheader

for.inc47.for.body32_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body32

for.body54.preheader:                             ; preds = %for.inc47.for.body54.preheader_crit_edge, %if.end38.for.body54.preheader_crit_edge, %for.body32.for.body54.preheader_crit_edge
  %offs.2.lcssa = phi i32 [ %add48, %for.inc47.for.body54.preheader_crit_edge ], [ %offs.2158, %for.body32.for.body54.preheader_crit_edge ], [ %offs.2158, %if.end38.for.body54.preheader_crit_edge ]
  %umax164 = call i32 @llvm.umax.i32(i32 %2, i32 3145728)
  %19 = add nsw i32 %umax164, -1048577
  %20 = lshr i32 %19, 21
  %uglygep165 = getelementptr i8, ptr %bytes, i32 %20
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %for.body54.preheader
  %tmp.1163 = phi ptr [ %incdec.ptr55, %for.body54.for.body54_crit_edge ], [ %bytes, %for.body54.preheader ]
  %offs2.0162 = phi i32 [ %add58, %for.body54.for.body54_crit_edge ], [ 1048576, %for.body54.preheader ]
  %incdec.ptr55 = getelementptr i8, ptr %tmp.1163, i32 1
  %21 = ptrtoint ptr %tmp.1163 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tmp.1163, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i149 = getelementptr i8, ptr %vm.sroa.0.0.copyload, i32 %offs2.0162
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i149, i8 %22) #13, !srcloc !383
  %add58 = add nuw nsw i32 %offs2.0162, 2097152
  %exitcond166.not = icmp eq ptr %tmp.1163, %uglygep165
  br i1 %exitcond166.not, label %for.end59, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body54

for.end59:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %vbase4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack134 = load i32, ptr %vbase4, align 4
  %24 = inttoptr i32 %.unpack134 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i150 = getelementptr i8, ptr %24, i32 8158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i150, i8 3) #13, !srcloc !383
  %25 = ptrtoint ptr %vbase4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack135 = load i32, ptr %vbase4, align 4
  %26 = inttoptr i32 %.unpack135 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i151 = getelementptr i8, ptr %26, i32 8159
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i151, i8 %7) #13, !srcloc !383
  %sub66 = add i32 %offs.2.lcssa, -1048576
  %27 = ptrtoint ptr %realSize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub66, ptr %realSize, align 4
  %millenium = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 27
  %28 = ptrtoint ptr %millenium to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %millenium, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool67.not = icmp ne i32 %29, 0
  %and69 = and i32 %sub66, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70 = icmp eq i32 %and69, 0
  %narrow = select i1 %tobool67.not, i1 %tobool70, i1 false
  %30 = zext i1 %narrow to i32
  %interleave = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 26
  %31 = ptrtoint ptr %interleave to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %interleave, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end59 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bytes) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_g450_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_check_var(ptr nocapture noundef %var, ptr nocapture noundef readonly %info) #7 align 64 {
entry:
  %visual = alloca i32, align 4
  %cmap_len = alloca i32, align 4
  %ydstorg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %visual) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmap_len) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ydstorg) #13
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = call fastcc i32 @matroxfb_decode_var(ptr noundef %info, ptr noundef %var, ptr noundef nonnull %visual, ptr noundef nonnull %cmap_len, ptr noundef nonnull %ydstorg)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ydstorg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmap_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %visual) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_g450_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @matroxfb_open(ptr nocapture noundef %info, i32 noundef %user) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %usecount = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usecount, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %tobool1.not = icmp eq i32 %user, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %userusecount = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %userusecount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %userusecount, align 4
  %inc3 = add i32 %5, 1
  store i32 %inc3, ptr %userusecount, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_release(ptr noundef %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user)
  %tobool.not = icmp eq i32 %user, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %entry
  %userusecount = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %userusecount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %userusecount, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %userusecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then1:                                         ; preds = %if.then
  %irq_flags.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 6
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %irq_flags.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then1.if.end2_crit_edge, label %if.then.i

if.then1.if.end2_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then.i:                                        ; preds = %if.then1
  tail call fastcc void @matroxfb_crtc1_panpos(ptr noundef %info) #13
  %accelerator.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 31, i32 8
  %2 = ptrtoint ptr %accelerator.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %accelerator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %cmp.i = icmp eq i32 %3, 26
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack25.i = load i32, ptr %vbase.i, align 4
  %5 = inttoptr i32 %.unpack25.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 7708
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = and i32 %6, -537001985
  %8 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack26.i = load i32, ptr %vbase.i, align 4
  %9 = inttoptr i32 %.unpack26.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %add.ptr.i27.i = getelementptr i8, ptr %9, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %7) #13, !srcloc !375
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = and i32 %6, -536870913
  %11 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack24.i = load i32, ptr %vbase.i, align 4
  %12 = inttoptr i32 %.unpack24.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %add.ptr.i29.i = getelementptr i8, ptr %12, i32 7708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %10) #13, !srcloc !375
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then1.i
  %pcidev.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 10
  %13 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcidev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  %call14.i = tail call ptr @free_irq(i32 noundef %16, ptr noundef %info) #13
  br label %if.end2

if.end2:                                          ; preds = %if.end.i, %if.then1.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %usecount = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 4
  %17 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usecount, align 4
  %dec3 = add i32 %18, -1
  store i32 %dec3, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec3)
  %tobool4.not = icmp eq i32 %dec3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end2.if.end7_crit_edge

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end2
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not = icmp eq i32 %20, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @matroxfb_remove(ptr noundef %info)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end2.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_set_par(ptr noundef %info) #0 align 64 {
entry:
  %visual = alloca i32, align 4
  %cmap_len = alloca i32, align 4
  %ydstorg = alloca i32, align 4
  %mt = alloca %struct.my_timming, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %visual) #13
  %0 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %visual, align 4, !annotation !384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmap_len) #13
  %1 = ptrtoint ptr %cmap_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmap_len, align 4, !annotation !384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ydstorg) #13
  %2 = ptrtoint ptr %ydstorg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ydstorg, align 4, !annotation !384
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %call = call fastcc i32 @matroxfb_decode_var(ptr noundef %info, ptr noundef %var1, ptr noundef nonnull %visual, ptr noundef nonnull %cmap_len, ptr noundef nonnull %ydstorg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %vbase, align 4
  %6 = inttoptr i32 %.unpack to ptr
  %7 = ptrtoint ptr %ydstorg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ydstorg, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 %8
  %9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr5, ptr %9, align 4
  %mm_lock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i, i32 noundef 0) #13
  %video.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 18
  %11 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %video.i, align 4
  %ydstorg.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %ydstorg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ydstorg.i, align 4
  %add.i = add i32 %14, %12
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.i, ptr %smem_start.i, align 4
  %len_usable.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %len_usable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len_usable.i, align 4
  %sub.i = sub i32 %17, %14
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %smem_len.i, align 4
  tail call void @mutex_unlock(ptr noundef %mm_lock.i) #13
  %19 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %visual, align 4
  %visual7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %visual7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %visual7, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 4
  %23 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %type_aux, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %26 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %27, %25
  %shr = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %28 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr, ptr %line_length, align 4
  %29 = ptrtoint ptr %cmap_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmap_len, align 4
  %curr = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7
  %cmap_len14 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %cmap_len14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cmap_len14, align 4
  %ydstorg15 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 31, i32 17
  %32 = ptrtoint ptr %ydstorg15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ydstorg15, align 4
  %add = add i32 %33, %8
  %34 = ptrtoint ptr %ydstorg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %ydstorg, align 4
  %35 = ptrtoint ptr %ydstorg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %ydstorg.i, align 4
  %interleave = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 26
  %36 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %interleave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not = icmp eq i32 %37, 0
  %cond = select i1 %tobool18.not, i32 2, i32 3
  %shr19 = lshr i32 %add, %cond
  %chunks = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 2
  %38 = ptrtoint ptr %chunks to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr19, ptr %chunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp23 = icmp eq i32 %27, 4
  br i1 %cmp23, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %pixels = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 1
  %39 = ptrtoint ptr %pixels to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %pixels, align 4
  br label %if.end.i

if.end32:                                         ; preds = %if.end3
  %mul27 = shl i32 %add, 3
  %div = udiv i32 %mul27, %27
  %pixels31 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 1
  %40 = ptrtoint ptr %pixels31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div, ptr %pixels31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end32.matroxfb_get_final_bppShift.exit_crit_edge, label %if.end32.if.end.i_crit_edge

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end32.matroxfb_get_final_bppShift.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_get_final_bppShift.exit

if.end.i:                                         ; preds = %if.end32.if.end.i_crit_edge, %if.end32.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool1.not.i = icmp ne i32 %37, 0
  %shr.i = zext i1 %tobool1.not.i to i32
  %spec.select.i = ashr i32 %27, %shr.i
  %video64bits.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 31, i32 10
  %41 = ptrtoint ptr %video64bits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %video64bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool4.not.i = icmp ne i32 %42, 0
  %shr6.i = zext i1 %tobool4.not.i to i32
  %bppshft2.1.i = ashr i32 %spec.select.i, %shr6.i
  br label %matroxfb_get_final_bppShift.exit

matroxfb_get_final_bppShift.exit:                 ; preds = %if.end.i, %if.end32.matroxfb_get_final_bppShift.exit_crit_edge
  %retval.0.i = phi i32 [ %bppshft2.1.i, %if.end.i ], [ 8, %if.end32.matroxfb_get_final_bppShift.exit_crit_edge ]
  %43 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %curr, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %mt) #13
  %44 = call ptr @memset(ptr %mt, i32 255, i32 60)
  call void @matroxfb_var2my(ptr noundef %var1, ptr noundef nonnull %mt) #13
  %crtc = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 2
  %45 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %crtc, align 4
  %46 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bits_per_pixel, align 4
  %48 = call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %48)
  %49 = icmp ult i32 %48, 5
  br i1 %49, label %switch.lookup, label %matroxfb_get_final_bppShift.exit.sw.epilog_crit_edge

matroxfb_get_final_bppShift.exit.sw.epilog_crit_edge: ; preds = %matroxfb_get_final_bppShift.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %matroxfb_get_final_bppShift.exit
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.matroxfb_set_par, i32 0, i32 %48
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %matroxfb_get_final_bppShift.exit.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 39, %matroxfb_get_final_bppShift.exit.sw.epilog_crit_edge ]
  %delay43 = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 14
  %51 = ptrtoint ptr %delay43 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %.sink, ptr %delay43, align 4
  %altout = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 13
  call void @down_read(ptr noundef %altout) #13
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp46 = icmp eq i32 %53, 1
  br i1 %cmp46, label %land.lhs.true, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %sw.epilog
  %output = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 1
  %54 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %output, align 4
  %compute = getelementptr inbounds %struct.matrox_altout, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %compute to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %compute, align 4
  %tobool49.not = icmp eq ptr %57, null
  br i1 %tobool49.not, label %land.lhs.true.for.inc_crit_edge, label %if.then50

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 2
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %call57 = call i32 %57(ptr noundef %59, ptr noundef nonnull %mt) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then50, %land.lhs.true.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp46.1 = icmp eq i32 %61, 1
  br i1 %cmp46.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %output.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %62 = ptrtoint ptr %output.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %output.1, align 4
  %compute.1 = getelementptr inbounds %struct.matrox_altout, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %compute.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %compute.1, align 4
  %tobool49.not.1 = icmp eq ptr %65, null
  br i1 %tobool49.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then50.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then50.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  %data.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 2
  %66 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.1, align 4
  %call57.1 = call i32 %65(ptr noundef %67, ptr noundef nonnull %mt) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then50.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2
  %68 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp46.2 = icmp eq i32 %69, 1
  br i1 %cmp46.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %output.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 1
  %70 = ptrtoint ptr %output.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %output.2, align 4
  %compute.2 = getelementptr inbounds %struct.matrox_altout, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %compute.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %compute.2, align 4
  %tobool49.not.2 = icmp eq ptr %73, null
  br i1 %tobool49.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then50.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then50.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  %data.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 2
  %74 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.2, align 4
  %call57.2 = call i32 %73(ptr noundef %75, ptr noundef nonnull %mt) #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then50.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @up_read(ptr noundef %altout) #13
  %76 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mt, align 4
  %pixclock61 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 11, i32 1
  %78 = ptrtoint ptr %pixclock61 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %pixclock61, align 4
  %mnp = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 1
  %79 = ptrtoint ptr %mnp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mnp, align 4
  %mnp63 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 11, i32 2
  %81 = ptrtoint ptr %mnp63 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %mnp63, align 4
  %hw_switch = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 22
  %82 = ptrtoint ptr %hw_switch to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw_switch, align 4
  %init = getelementptr inbounds %struct.matrox_switch, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init, align 4
  %call64 = call i32 %85(ptr noundef %info, ptr noundef nonnull %mt) #13
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %86 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %yoffset, align 4
  %88 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xres_virtual, align 4
  %mul66 = mul i32 %89, %87
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %90 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %xoffset, align 4
  %add67 = add i32 %mul66, %91
  %92 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %curr, align 4
  %mul70 = mul i32 %add67, %93
  %div71247 = lshr i32 %mul70, 5
  %94 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chunks, align 4
  %add75 = add i32 %div71247, %95
  %conv = trunc i32 %add75 to i8
  %arrayidx76 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 5, i32 13
  %96 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv, ptr %arrayidx76, align 1
  %and77 = lshr i32 %add75, 8
  %conv79 = trunc i32 %and77 to i8
  %arrayidx81 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 5, i32 12
  %97 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv79, ptr %arrayidx81, align 1
  %CRTCEXT = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 6
  %98 = ptrtoint ptr %CRTCEXT to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %CRTCEXT, align 4
  %100 = and i8 %99, -16
  %shr85 = lshr i32 %add75, 16
  %and86 = and i32 %shr85, 15
  %shr87 = lshr i32 %add75, 14
  %and88 = and i32 %shr87, 64
  %or = or i32 %and88, %and86
  %101 = trunc i32 %or to i8
  %conv90 = or i8 %100, %101
  store i8 %conv90, ptr %CRTCEXT, align 4
  %shr93 = lshr i32 %add75, 21
  %conv94 = trunc i32 %shr93 to i8
  %arrayidx96 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 6, i32 8
  %102 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv94, ptr %arrayidx96, align 4
  %103 = ptrtoint ptr %hw_switch to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_switch, align 4
  %restore = getelementptr inbounds %struct.matrox_switch, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %restore, align 4
  call void %106(ptr noundef %info) #13
  call fastcc void @update_crtc2(ptr noundef %info, i32 noundef %add75)
  call void @down_read(ptr noundef %altout) #13
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp107 = icmp eq i32 %108, 1
  br i1 %cmp107, label %land.lhs.true109, label %for.inc.2.for.inc124_crit_edge

for.inc.2.for.inc124_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc124

land.lhs.true109:                                 ; preds = %for.inc.2
  %output112 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 1
  %109 = ptrtoint ptr %output112 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %output112, align 4
  %program = getelementptr inbounds %struct.matrox_altout, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %program, align 4
  %tobool113.not = icmp eq ptr %112, null
  br i1 %tobool113.not, label %land.lhs.true109.for.inc124_crit_edge, label %if.then114

land.lhs.true109.for.inc124_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc124

if.then114:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #15
  %data121 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 2
  %113 = ptrtoint ptr %data121 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data121, align 4
  %call122 = call i32 %112(ptr noundef %114) #13
  br label %for.inc124

for.inc124:                                       ; preds = %if.then114, %land.lhs.true109.for.inc124_crit_edge, %for.inc.2.for.inc124_crit_edge
  %115 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp107.1 = icmp eq i32 %116, 1
  br i1 %cmp107.1, label %land.lhs.true109.1, label %for.inc124.for.inc124.1_crit_edge

for.inc124.for.inc124.1_crit_edge:                ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc124.1

land.lhs.true109.1:                               ; preds = %for.inc124
  %output112.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %117 = ptrtoint ptr %output112.1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %output112.1, align 4
  %program.1 = getelementptr inbounds %struct.matrox_altout, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %program.1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %program.1, align 4
  %tobool113.not.1 = icmp eq ptr %120, null
  br i1 %tobool113.not.1, label %land.lhs.true109.1.for.inc124.1_crit_edge, label %if.then114.1

land.lhs.true109.1.for.inc124.1_crit_edge:        ; preds = %land.lhs.true109.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc124.1

if.then114.1:                                     ; preds = %land.lhs.true109.1
  call void @__sanitizer_cov_trace_pc() #15
  %data121.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 2
  %121 = ptrtoint ptr %data121.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data121.1, align 4
  %call122.1 = call i32 %120(ptr noundef %122) #13
  br label %for.inc124.1

for.inc124.1:                                     ; preds = %if.then114.1, %land.lhs.true109.1.for.inc124.1_crit_edge, %for.inc124.for.inc124.1_crit_edge
  %123 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp107.2 = icmp eq i32 %124, 1
  br i1 %cmp107.2, label %land.lhs.true109.2, label %for.inc124.1.for.inc124.2_crit_edge

for.inc124.1.for.inc124.2_crit_edge:              ; preds = %for.inc124.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc124.2

land.lhs.true109.2:                               ; preds = %for.inc124.1
  %output112.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 1
  %125 = ptrtoint ptr %output112.2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %output112.2, align 4
  %program.2 = getelementptr inbounds %struct.matrox_altout, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %program.2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %program.2, align 4
  %tobool113.not.2 = icmp eq ptr %128, null
  br i1 %tobool113.not.2, label %land.lhs.true109.2.for.inc124.2_crit_edge, label %if.then114.2

land.lhs.true109.2.for.inc124.2_crit_edge:        ; preds = %land.lhs.true109.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc124.2

if.then114.2:                                     ; preds = %land.lhs.true109.2
  call void @__sanitizer_cov_trace_pc() #15
  %data121.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 2
  %129 = ptrtoint ptr %data121.2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data121.2, align 4
  %call122.2 = call i32 %128(ptr noundef %130) #13
  br label %for.inc124.2

for.inc124.2:                                     ; preds = %if.then114.2, %land.lhs.true109.2.for.inc124.2_crit_edge, %for.inc124.1.for.inc124.2_crit_edge
  %131 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp134 = icmp eq i32 %132, 1
  br i1 %cmp134, label %land.lhs.true136, label %for.inc124.2.for.inc151_crit_edge

for.inc124.2.for.inc151_crit_edge:                ; preds = %for.inc124.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151

land.lhs.true136:                                 ; preds = %for.inc124.2
  %output139 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 1
  %133 = ptrtoint ptr %output139 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %output139, align 4
  %start = getelementptr inbounds %struct.matrox_altout, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %start, align 4
  %tobool140.not = icmp eq ptr %136, null
  br i1 %tobool140.not, label %land.lhs.true136.for.inc151_crit_edge, label %if.then141

land.lhs.true136.for.inc151_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151

if.then141:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #15
  %data148 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 2
  %137 = ptrtoint ptr %data148 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data148, align 4
  %call149 = call i32 %136(ptr noundef %138) #13
  br label %for.inc151

for.inc151:                                       ; preds = %if.then141, %land.lhs.true136.for.inc151_crit_edge, %for.inc124.2.for.inc151_crit_edge
  %139 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp134.1 = icmp eq i32 %140, 1
  br i1 %cmp134.1, label %land.lhs.true136.1, label %for.inc151.for.inc151.1_crit_edge

for.inc151.for.inc151.1_crit_edge:                ; preds = %for.inc151
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151.1

land.lhs.true136.1:                               ; preds = %for.inc151
  %output139.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %141 = ptrtoint ptr %output139.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %output139.1, align 4
  %start.1 = getelementptr inbounds %struct.matrox_altout, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %start.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %start.1, align 4
  %tobool140.not.1 = icmp eq ptr %144, null
  br i1 %tobool140.not.1, label %land.lhs.true136.1.for.inc151.1_crit_edge, label %if.then141.1

land.lhs.true136.1.for.inc151.1_crit_edge:        ; preds = %land.lhs.true136.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151.1

if.then141.1:                                     ; preds = %land.lhs.true136.1
  call void @__sanitizer_cov_trace_pc() #15
  %data148.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 2
  %145 = ptrtoint ptr %data148.1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data148.1, align 4
  %call149.1 = call i32 %144(ptr noundef %146) #13
  br label %for.inc151.1

for.inc151.1:                                     ; preds = %if.then141.1, %land.lhs.true136.1.for.inc151.1_crit_edge, %for.inc151.for.inc151.1_crit_edge
  %147 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp134.2 = icmp eq i32 %148, 1
  br i1 %cmp134.2, label %land.lhs.true136.2, label %for.inc151.1.for.inc151.2_crit_edge

for.inc151.1.for.inc151.2_crit_edge:              ; preds = %for.inc151.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151.2

land.lhs.true136.2:                               ; preds = %for.inc151.1
  %output139.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 1
  %149 = ptrtoint ptr %output139.2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %output139.2, align 4
  %start.2 = getelementptr inbounds %struct.matrox_altout, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %start.2 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %start.2, align 4
  %tobool140.not.2 = icmp eq ptr %152, null
  br i1 %tobool140.not.2, label %land.lhs.true136.2.for.inc151.2_crit_edge, label %if.then141.2

land.lhs.true136.2.for.inc151.2_crit_edge:        ; preds = %land.lhs.true136.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc151.2

if.then141.2:                                     ; preds = %land.lhs.true136.2
  call void @__sanitizer_cov_trace_pc() #15
  %data148.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 2
  %153 = ptrtoint ptr %data148.2 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data148.2, align 4
  %call149.2 = call i32 %152(ptr noundef %154) #13
  br label %for.inc151.2

for.inc151.2:                                     ; preds = %if.then141.2, %land.lhs.true136.2.for.inc151.2_crit_edge, %for.inc151.1.for.inc151.2_crit_edge
  call void @up_read(ptr noundef %altout) #13
  call void @matrox_cfbX_init(ptr noundef %info) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %mt) #13
  %initialized = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 3
  %155 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc151.2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc151.2 ], [ -6, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ydstorg) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmap_len) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %visual) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef %fb_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmap_len = getelementptr inbounds %struct.matrox_fb_info, ptr %fb_info, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %cmap_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmap_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %regno)
  %cmp.not = icmp ugt i32 %1, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul i32 %red, 77
  %mul2 = mul i32 %green, 151
  %add = add i32 %mul2, %mul
  %mul3 = mul i32 %blue, 28
  %add4 = add i32 %add, %mul3
  %shr = lshr i32 %add4, 8
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then1 ], [ %blue, %if.end.if.end5_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then1 ], [ %green, %if.end.if.end5_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then1 ], [ %red, %if.end.if.end5_crit_edge ]
  %red8 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 8, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %shl = shl i32 %red.addr.0, %5
  %add9 = sub i32 32767, %red.addr.0
  %sub = add i32 %add9, %shl
  %shr10 = lshr i32 %sub, 16
  %green13 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 9
  %length14 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length14, align 4
  %shl15 = shl i32 %green.addr.0, %7
  %add16 = sub i32 32767, %green.addr.0
  %sub17 = add i32 %add16, %shl15
  %shr18 = lshr i32 %sub17, 16
  %blue21 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 10
  %length22 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 10, i32 1
  %8 = ptrtoint ptr %length22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length22, align 4
  %shl23 = shl i32 %blue.addr.0, %9
  %add24 = sub i32 32767, %blue.addr.0
  %sub25 = add i32 %add24, %shl23
  %shr26 = lshr i32 %sub25, 16
  %transp29 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 11
  %length30 = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 11, i32 1
  %10 = ptrtoint ptr %length30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length30, align 4
  %shl31 = shl i32 %transp, %11
  %add32 = sub i32 32767, %transp
  %sub33 = add i32 %add32, %shl31
  %shr34 = lshr i32 %sub33, 16
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %fb_info, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits_per_pixel, align 4
  %14 = add i32 %13, -4
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 30)
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %15, label %if.end5.cleanup_crit_edge [
    i32 0, label %if.end5.sw.bb_crit_edge
    i32 1, label %if.end5.sw.bb_crit_edge160
    i32 3, label %sw.bb49
    i32 5, label %if.end5.sw.bb80_crit_edge
    i32 7, label %if.end5.sw.bb80_crit_edge161
  ]

if.end5.sw.bb80_crit_edge161:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb80

if.end5.sw.bb80_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb80

if.end5.sw.bb_crit_edge160:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge160
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %fb_info, i32 0, i32 19, i32 1
  %conv = trunc i32 %regno to i8
  %17 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %vbase, align 4
  %18 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i = getelementptr i8, ptr %18, i32 15360
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #13, !srcloc !383
  %conv39 = trunc i32 %shr10 to i8
  %19 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack154 = load i32, ptr %vbase, align 4
  %20 = inttoptr i32 %.unpack154 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i157 = getelementptr i8, ptr %20, i32 15361
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i157, i8 %conv39) #13, !srcloc !383
  %conv43 = trunc i32 %shr18 to i8
  %21 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack155 = load i32, ptr %vbase, align 4
  %22 = inttoptr i32 %.unpack155 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i158 = getelementptr i8, ptr %22, i32 15361
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i158, i8 %conv43) #13, !srcloc !383
  %conv47 = trunc i32 %shr26 to i8
  %23 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack156 = load i32, ptr %vbase, align 4
  %24 = inttoptr i32 %.unpack156 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i159 = getelementptr i8, ptr %24, i32 15361
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i159, i8 %conv47) #13, !srcloc !383
  br label %cleanup

sw.bb49:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp50 = icmp ugt i32 %regno, 15
  br i1 %cmp50, label %sw.bb49.cleanup_crit_edge, label %if.end53

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end53:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %red8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %red8, align 4
  %shl57 = shl i32 %shr10, %26
  %27 = ptrtoint ptr %green13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %green13, align 4
  %shl62 = shl i32 %shr18, %28
  %or = or i32 %shl62, %shl57
  %29 = ptrtoint ptr %blue21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blue21, align 4
  %shl67 = shl i32 %shr26, %30
  %or68 = or i32 %or, %shl67
  %31 = ptrtoint ptr %transp29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transp29, align 4
  %shl73 = shl i32 %shr34, %32
  %or74 = or i32 %or68, %shl73
  %conv76 = and i32 %or74, 65535
  %shl78 = shl i32 %or74, 16
  %or79 = or i32 %conv76, %shl78
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %fb_info, i32 0, i32 37, i32 %regno
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or79, ptr %arrayidx, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %if.end5.sw.bb80_crit_edge, %if.end5.sw.bb80_crit_edge161
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp81 = icmp ugt i32 %regno, 15
  br i1 %cmp81, label %sw.bb80.cleanup_crit_edge, label %if.end84

sw.bb80.cleanup_crit_edge:                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end84:                                         ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %red8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %red8, align 4
  %shl89 = shl i32 %shr10, %35
  %36 = ptrtoint ptr %green13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %green13, align 4
  %shl94 = shl i32 %shr18, %37
  %or95 = or i32 %shl94, %shl89
  %38 = ptrtoint ptr %blue21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %blue21, align 4
  %shl100 = shl i32 %shr26, %39
  %or101 = or i32 %or95, %shl100
  %40 = ptrtoint ptr %transp29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transp29, align 4
  %shl106 = shl i32 %shr34, %41
  %or107 = or i32 %or101, %shl106
  %arrayidx109 = getelementptr %struct.matrox_fb_info, ptr %fb_info, i32 0, i32 37, i32 %regno
  %42 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or107, ptr %arrayidx109, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %sw.bb80.cleanup_crit_edge, %if.end53, %sw.bb49.cleanup_crit_edge, %sw.bb, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %sw.bb80.cleanup_crit_edge ], [ 0, %sw.bb49.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end84 ], [ 0, %if.end53 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.tableidx = add i32 %blank, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 4
  %crtc.0 = select i1 %2, i8 %switch.idx.mult, i8 0
  %seq.0 = select i1 %2, i8 32, i8 0
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack = load i32, ptr %vbase, align 4
  %4 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i = getelementptr i8, ptr %4, i32 8132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #13, !srcloc !383
  %5 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack31 = load i32, ptr %vbase, align 4
  %6 = inttoptr i32 %.unpack31 to ptr
  %add.ptr.i36 = getelementptr i8, ptr %6, i32 8133
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i36) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %8 = and i8 %7, -33
  %or = or i8 %8, %seq.0
  %9 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %.unpack32 = load i32, ptr %vbase, align 4
  %10 = inttoptr i32 %.unpack32 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i37 = getelementptr i8, ptr %10, i32 8133
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i37, i8 %or) #13, !srcloc !383
  %11 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %.unpack33 = load i32, ptr %vbase, align 4
  %12 = inttoptr i32 %.unpack33 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i38 = getelementptr i8, ptr %12, i32 8158
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i38, i8 1) #13, !srcloc !383
  %13 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack34 = load i32, ptr %vbase, align 4
  %14 = inttoptr i32 %.unpack34 to ptr
  %add.ptr.i39 = getelementptr i8, ptr %14, i32 8159
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i39) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %16 = and i8 %15, -49
  %or20 = or i8 %16, %crtc.0
  %17 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack35 = load i32, ptr %vbase, align 4
  %18 = inttoptr i32 %.unpack35 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  tail call void @arm_heavy_mb() #13
  %add.ptr.i41 = getelementptr i8, ptr %18, i32 8159
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i41, i8 %or20) #13, !srcloc !383
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_pan_display(ptr nocapture noundef readonly %var, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dead.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %dead.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.matrox_pan_var.exit_crit_edge

entry.matrox_pan_var.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %matrox_pan_var.exit

if.end.i:                                         ; preds = %entry
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset.i, align 4
  %xoffset2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %xoffset2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %xoffset2.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %5 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yoffset.i, align 4
  %yoffset5.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %yoffset5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %yoffset5.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %9, %6
  %add.i = add i32 %mul.i, %3
  %curr.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7
  %10 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr.i, align 4
  %mul14.i = mul i32 %add.i, %11
  %div126.i = lshr i32 %mul14.i, 5
  %chunks.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 7, i32 2, i32 2
  %12 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chunks.i, align 4
  %add16.i = add i32 %div126.i, %13
  %conv.i = trunc i32 %add16.i to i8
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 5, i32 13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %and18.i = lshr i32 %add16.i, 8
  %conv19.i = trunc i32 %and18.i to i8
  %arrayidx22.i = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 5, i32 12
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv19.i, ptr %arrayidx22.i, align 1
  %CRTCEXT.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %CRTCEXT.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %CRTCEXT.i, align 4
  %18 = and i8 %17, -80
  %and27.i = zext i8 %18 to i32
  %shr28.i = lshr i32 %add16.i, 16
  %and29.i = and i32 %shr28.i, 15
  %or.i = or i32 %and29.i, %and27.i
  %shr30.i = lshr i32 %add16.i, 14
  %and31.i = and i32 %shr30.i, 64
  %or32.i = or i32 %or.i, %and31.i
  %conv33.i = trunc i32 %or32.i to i8
  store i8 %conv33.i, ptr %CRTCEXT.i, align 4
  %shr38.i = lshr i32 %add16.i, 21
  %conv39.i = trunc i32 %shr38.i to i8
  %arrayidx42.i = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 8, i32 6, i32 8
  %19 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv39.i, ptr %arrayidx42.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 13
  %20 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %activate.i, align 4
  %and44.i = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end.i.land.end.i_crit_edge, label %land.rhs.i

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @matroxfb_enable_irq(ptr noundef %info, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i.land.end.i_crit_edge
  %22 = phi i1 [ false, %if.end.i.land.end.i_crit_edge ], [ %cmp.i, %land.rhs.i ]
  %lock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 24
  %call51.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  %add16.tr.i = trunc i32 %add16.i to i16
  %23 = shl i16 %add16.tr.i, 8
  %conv56.i = or i16 %23, 13
  %24 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %25 = inttoptr i32 %.unpack.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @arm_heavy_mb() #13
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv56.i) #13
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 8148
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %26) #13, !srcloc !381
  %27 = and i16 %add16.tr.i, -256
  %conv62.i = or i16 %27, 12
  %28 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack127.i = load i32, ptr %vbase.i, align 4
  %29 = inttoptr i32 %.unpack127.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @arm_heavy_mb() #13
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv62.i) #13
  %add.ptr.i130.i = getelementptr i8, ptr %29, i32 8148
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i130.i, i16 %30) #13, !srcloc !381
  %support32MB.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 31, i32 7
  %31 = ptrtoint ptr %support32MB.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %support32MB.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool64.not.i = icmp eq i32 %32, 0
  br i1 %tobool64.not.i, label %land.end.i.if.end72.i_crit_edge, label %if.then65.i

land.end.i.if.end72.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72.i

if.then65.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv43.i = shl nuw nsw i32 %shr38.i, 8
  %33 = trunc i32 %conv43.i to i16
  %conv70.i = or i16 %33, 8
  %34 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack129.i = load i32, ptr %vbase.i, align 4
  %35 = inttoptr i32 %.unpack129.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @arm_heavy_mb() #13
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv70.i) #13
  %add.ptr.i131.i = getelementptr i8, ptr %35, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i131.i, i16 %36) #13, !srcloc !381
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then65.i, %land.end.i.if.end72.i_crit_edge
  %panpos.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 11, i32 3
  br i1 %22, label %if.then74.i, label %if.else.i

if.then74.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %panpos.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or32.i, ptr %panpos.i, align 4
  br label %if.end85.i

if.else.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %panpos.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %panpos.i, align 4
  %or32.tr.i = trunc i32 %or32.i to i16
  %39 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack128.i = load i32, ptr %vbase.i, align 4
  %40 = inttoptr i32 %.unpack128.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @arm_heavy_mb() #13
  %add.ptr.i132.i = getelementptr i8, ptr %40, i32 8158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i132.i, i16 %or32.tr.i) #13, !srcloc !381
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.else.i, %if.then74.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call51.i) #13
  tail call fastcc void @update_crtc2(ptr noundef %info, i32 noundef %add16.i) #13
  br label %matrox_pan_var.exit

matrox_pan_var.exit:                              ; preds = %if.end85.i, %entry.matrox_pan_var.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_ioctl(ptr noundef %info, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %vblank = alloca %struct.fb_vblank, align 4
  %mom = alloca %struct.matroxioc_output_mode, align 4
  %mom87 = alloca %struct.matroxioc_output_mode, align 4
  %tmp126 = alloca i32, align 4
  %r = alloca %struct.v4l2_capability, align 4
  %qctrl = alloca %struct.v4l2_queryctrl, align 4
  %ctrl = alloca %struct.v4l2_control, align 4
  %ctrl424 = alloca %struct.v4l2_control, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup459_crit_edge

entry.cleanup459_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup459

if.end:                                           ; preds = %entry
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %cmd, label %if.end.cleanup459_crit_edge [
    i32 -2145368558, label %sw.bb
    i32 1074021920, label %sw.bb9
    i32 1074032378, label %sw.bb19
    i32 -1073451270, label %sw.bb86
    i32 1074032376, label %sw.bb125
    i32 -2147193096, label %for.body213.preheader
    i32 -2147193095, label %for.body243.preheader
    i32 -2147193093, label %for.body300.preheader
    i32 -2140645888, label %sw.bb332
    i32 -1069263324, label %sw.bb344
    i32 -1073195493, label %sw.bb383
    i32 -1073195492, label %sw.bb423
  ]

if.end.cleanup459_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup459

for.body300.preheader:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %output303 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 1
  %4 = ptrtoint ptr %output303 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %output303, align 4
  %tobool304.not = icmp ne ptr %5, null
  %or307 = zext i1 %tobool304.not to i32
  %output303.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %6 = ptrtoint ptr %output303.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output303.1, align 4
  %tobool304.not.1 = icmp eq ptr %7, null
  %or307.1 = select i1 %tobool304.not.1, i32 0, i32 2
  %conn296.1.1 = or i32 %or307.1, %or307
  %output303.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 1
  %8 = ptrtoint ptr %output303.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %output303.2, align 4
  %tobool304.not.2 = icmp eq ptr %9, null
  %or307.2 = select i1 %tobool304.not.2, i32 0, i32 4
  %conn296.1.2 = or i32 %or307.2, %conn296.1.1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1083) #13
  %10 = tail call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i660 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i660 to ptr
  %cpu_domain.i.i661 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i661) #10, !srcloc !385
  %and.i662 = and i32 %12, -13
  %or.i663 = or i32 %and.i662, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i663) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %conn296.1.2, i32 -1226833921) #13, !srcloc !388
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool327.not = icmp eq i32 %13, 0
  %.580 = select i1 %tobool327.not, i32 0, i32 -14
  br label %cleanup459

for.body243.preheader:                            ; preds = %if.end
  %output246 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0, i32 1
  %14 = ptrtoint ptr %output246 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output246, align 4
  %tobool247.not = icmp eq ptr %15, null
  br i1 %tobool247.not, label %for.body243.preheader.for.inc257_crit_edge, label %if.then248

for.body243.preheader.for.inc257_crit_edge:       ; preds = %for.body243.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc257

for.body213.preheader:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx215 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0
  %16 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp217 = icmp eq i32 %17, 1
  %or = zext i1 %cmp217 to i32
  %arrayidx215.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %arrayidx215.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx215.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp217.1 = icmp eq i32 %19, 1
  %or.1 = select i1 %cmp217.1, i32 2, i32 0
  %conn.1.1 = or i32 %or.1, %or
  %arrayidx215.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2
  %20 = ptrtoint ptr %arrayidx215.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx215.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp217.2 = icmp eq i32 %21, 1
  %or.2 = select i1 %cmp217.2, i32 4, i32 0
  %conn.1.2 = or i32 %or.2, %conn.1.1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1044) #13
  %22 = tail call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i652 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i652 to ptr
  %cpu_domain.i.i653 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i653) #10, !srcloc !385
  %and.i654 = and i32 %24, -13
  %or.i655 = or i32 %and.i654, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i655) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %conn.1.2, i32 -1226833921) #13, !srcloc !389
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool233.not = icmp eq i32 %25, 0
  %.577 = select i1 %tobool233.not, i32 0, i32 -14
  br label %cleanup459

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vblank) #13
  %26 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 1
  %27 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 2
  %call.i = tail call i32 @matroxfb_enable_irq(ptr noundef %info, i32 noundef 0) #13
  %28 = call ptr @memset(ptr %26, i32 0, i32 28)
  %29 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 300, ptr %vblank, align 4
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 19, i32 1
  %30 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %31 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i772 = getelementptr i8, ptr %31, i32 8154
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i772) #13, !srcloc !378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %conv.i.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack1.i = load i32, ptr %vbase.i, align 4
  %34 = inttoptr i32 %.unpack1.i to ptr
  %add.ptr.i2.i = getelementptr i8, ptr %34, i32 7712
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #13, !srcloc !376
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !377
  %37 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %27, align 4
  %and.i773 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i773)
  %tobool.not.i = icmp eq i32 %and.i773, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vblank, align 4
  %or.i774 = or i32 %39, 2
  store i32 %or.i774, ptr %vblank, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %and7.i = and i32 %conv.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then9.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vblank, align 4
  %or11.i = or i32 %41, 128
  store i32 %or11.i, ptr %vblank, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end.i.if.end12.i_crit_edge
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %43)
  %cmp.not.i = icmp ult i32 %36, %43
  br i1 %cmp.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.then14.i

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vblank, align 4
  %or16.i = or i32 %45, 1
  store i32 %or16.i, ptr %vblank, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end17.i_crit_edge
  %irq_flags.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 6
  %46 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %irq_flags.i, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool19.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end59.i.i_crit_edge, label %if.then20.i

if.end17.i.if.end59.i.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vblank, align 4
  %or22.i = or i32 %49, 16
  store i32 %or22.i, ptr %vblank, align 4
  %cnt.i = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 11, i32 0, i32 1
  %50 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cnt.i, align 4
  %52 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %26, align 4
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then20.i, %if.end17.i.if.end59.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end59.i.i.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end59.i.i.copy_to_user.exit.thread_crit_edge:  ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end59.i.i
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 32, i32 -1226833920) #19, !srcloc !390
  %asmresult.i.i = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vblank, i32 noundef 32) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %vblank, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select833 = select i1 %tobool5.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end59.i.i.copy_to_user.exit.thread_crit_edge
  %54 = phi i32 [ -14, %if.end59.i.i.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select833, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vblank) #13
  br label %cleanup459

sw.bb9:                                           ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 903) #13
  %55 = tail call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #10, !srcloc !385
  %and.i = and i32 %57, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %58 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !391
  %asmresult = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb9.cleanup459_crit_edge

sw.bb9.cleanup459_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup459

if.end16:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult12 = extractvalue { i32, i32 } %58, 1
  %call17 = tail call i32 @matroxfb_wait_for_sync(ptr noundef %info, i32 noundef %asmresult12)
  br label %cleanup459

sw.bb19:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mom) #13
  %59 = ptrtoint ptr %mom to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %mom, align 4, !annotation !384
  %60 = getelementptr inbounds %struct.matroxioc_output_mode, ptr %mom, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %60, align 4, !annotation !384
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #13
  %call.i.i587 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i587, label %sw.bb19.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb19.if.then11.i.i_crit_edge:                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb19
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #19, !srcloc !392
  %asmresult.i.i588 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i588)
  %cmp.i6.i589 = icmp eq i32 %asmresult.i.i588, 0
  br i1 %cmp.i6.i589, label %if.end.i.i591, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !393

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i591:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i590 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mom, i32 noundef 8) #13
  %63 = call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !385
  %and.i.i.i.i = and i32 %65, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mom, ptr noundef %0, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end23, label %if.end.i.i591.if.then11.i.i_crit_edge, !prof !393

if.end.i.i591.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i591
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i591.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb19.if.then11.i.i_crit_edge
  %res.0.i.i780 = phi i32 [ %call1.i.i.i, %if.end.i.i591.if.then11.i.i_crit_edge ], [ 8, %sw.bb19.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i780
  %add.ptr.i.i = getelementptr i8, ptr %mom, i32 %sub.i.i
  %66 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i780)
  br label %cleanup83

if.end23:                                         ; preds = %if.end.i.i591
  %67 = ptrtoint ptr %mom to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp = icmp ugt i32 %68, 2
  br i1 %cmp, label %if.end23.cleanup83_crit_edge, label %if.end25

if.end23.cleanup83_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

if.end25:                                         ; preds = %if.end23
  %altout = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 13
  call void @down_read(ptr noundef %altout) #13
  %69 = ptrtoint ptr %mom to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mom, align 4
  %output27 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %70, i32 1
  %71 = ptrtoint ptr %output27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %output27, align 4
  %tobool28.not = icmp eq ptr %72, null
  br i1 %tobool28.not, label %if.end25.if.end60.thread_crit_edge, label %if.else

if.end25.if.end60.thread_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.thread

if.else:                                          ; preds = %if.end25
  %verifymode = getelementptr inbounds %struct.matrox_altout, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %verifymode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %verifymode, align 4
  %tobool30.not = icmp eq ptr %74, null
  br i1 %tobool30.not, label %if.then31, label %if.end44

if.then31:                                        ; preds = %if.else
  %75 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %76)
  %cmp32 = icmp eq i32 %76, 128
  br i1 %cmp32, label %if.then31.if.then46_crit_edge, label %if.then31.if.end60.thread_crit_edge

if.then31.if.end60.thread_crit_edge:              ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.thread

if.then31.if.then46_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.end44:                                         ; preds = %if.else
  %data = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %70, i32 2
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 4
  %79 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %60, align 4
  %call42 = call i32 %74(ptr noundef %78, i32 noundef %80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool45.not = icmp eq i32 %call42, 0
  br i1 %tobool45.not, label %if.end44.if.then46_crit_edge, label %if.end60

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then46

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.then31.if.then46_crit_edge
  %81 = ptrtoint ptr %mom to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mom, align 4
  %mode50 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %82, i32 3
  %83 = ptrtoint ptr %mode50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode50, align 4
  %85 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp52.not = icmp eq i32 %84, %86
  br i1 %cmp52.not, label %if.then46.if.end60.thread_crit_edge, label %if.end60.thread790

if.then46.if.end60.thread_crit_edge:              ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.thread

if.end60.thread790:                               ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %mode50 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %mode50, align 4
  call void @up_read(ptr noundef %altout) #13
  br label %if.end65

if.end60.thread:                                  ; preds = %if.then46.if.end60.thread_crit_edge, %if.then31.if.end60.thread_crit_edge, %if.end25.if.end60.thread_crit_edge
  %val.1.ph = phi i32 [ 0, %if.then46.if.end60.thread_crit_edge ], [ -22, %if.then31.if.end60.thread_crit_edge ], [ -6, %if.end25.if.end60.thread_crit_edge ]
  call void @up_read(ptr noundef %altout) #13
  br label %cleanup83

if.end60:                                         ; preds = %if.end44
  call void @up_read(ptr noundef %altout) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp63.not = icmp eq i32 %call42, 1
  br i1 %cmp63.not, label %if.end60.if.end65_crit_edge, label %if.end60.cleanup83_crit_edge

if.end60.cleanup83_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %if.end60.if.end65_crit_edge, %if.end60.thread790
  %88 = ptrtoint ptr %mom to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mom, align 4
  %arrayidx68 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %89
  %90 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx68, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %91, label %if.end65.cleanup83_crit_edge [
    i32 1, label %sw.bb69
    i32 2, label %sw.bb71
  ]

if.end65.cleanup83_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

sw.bb69:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = call i32 @matroxfb_set_par(ptr noundef %info)
  br label %cleanup83

sw.bb71:                                          ; preds = %if.end65
  %lock73 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 12, i32 4
  call void @down_read(ptr noundef %lock73) #13
  %info75 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 12, i32 3
  %93 = ptrtoint ptr %info75 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %info75, align 4
  %tobool76.not = icmp eq ptr %94, null
  br i1 %tobool76.not, label %sw.bb71.if.end80_crit_edge, label %if.then77

sw.bb71.if.end80_crit_edge:                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then77:                                        ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #15
  %fbops = getelementptr inbounds %struct.fb_info, ptr %94, i32 0, i32 20
  %95 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fbops, align 4
  %fb_set_par = getelementptr inbounds %struct.fb_ops, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %fb_set_par to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fb_set_par, align 4
  %call79 = call i32 %98(ptr noundef nonnull %94) #13
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %sw.bb71.if.end80_crit_edge
  call void @up_read(ptr noundef %lock73) #13
  br label %cleanup83

cleanup83:                                        ; preds = %if.end80, %sw.bb69, %if.end65.cleanup83_crit_edge, %if.end60.cleanup83_crit_edge, %if.end60.thread, %if.end23.cleanup83_crit_edge, %if.then11.i.i
  %retval.2 = phi i32 [ -6, %if.end23.cleanup83_crit_edge ], [ %call42, %if.end60.cleanup83_crit_edge ], [ 0, %if.end65.cleanup83_crit_edge ], [ 0, %if.end80 ], [ 0, %sw.bb69 ], [ %val.1.ph, %if.end60.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mom) #13
  br label %cleanup459

sw.bb86:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mom87) #13
  %99 = ptrtoint ptr %mom87 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %mom87, align 4, !annotation !384
  %100 = getelementptr inbounds %struct.matroxioc_output_mode, ptr %mom87, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %100, align 4, !annotation !384
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #13
  %call.i.i597 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i597, label %sw.bb86.if.then11.i.i613_crit_edge, label %land.lhs.true.i.i600

sw.bb86.if.then11.i.i613_crit_edge:               ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i613

land.lhs.true.i.i600:                             ; preds = %sw.bb86
  %102 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #19
  %asmresult.i.i598 = extractvalue { i32, i32 } %102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i598)
  %cmp.i6.i599 = icmp eq i32 %asmresult.i.i598, 0
  br i1 %cmp.i6.i599, label %if.end.i.i610, label %land.lhs.true.i.i600.if.then11.i.i613_crit_edge, !prof !393

land.lhs.true.i.i600.if.then11.i.i613_crit_edge:  ; preds = %land.lhs.true.i.i600
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i613

if.end.i.i610:                                    ; preds = %land.lhs.true.i.i600
  %call.i.i.i601 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mom87, i32 noundef 8) #13
  %103 = call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i.i.i.i602 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i.i602 to ptr
  %cpu_domain.i.i.i.i.i603 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 4
  %105 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i603) #10, !srcloc !385
  %and.i.i.i.i604 = and i32 %105, -13
  %or.i.i.i.i605 = or i32 %and.i.i.i.i604, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i605) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %call1.i.i.i606 = call i32 @arm_copy_from_user(ptr noundef nonnull %mom87, ptr noundef %0, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i606)
  %tobool4.not.i.i609 = icmp eq i32 %call1.i.i.i606, 0
  br i1 %tobool4.not.i.i609, label %if.end93, label %if.end.i.i610.if.then11.i.i613_crit_edge, !prof !393

if.end.i.i610.if.then11.i.i613_crit_edge:         ; preds = %if.end.i.i610
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i613

if.then11.i.i613:                                 ; preds = %if.end.i.i610.if.then11.i.i613_crit_edge, %land.lhs.true.i.i600.if.then11.i.i613_crit_edge, %sw.bb86.if.then11.i.i613_crit_edge
  %res.0.i.i608795 = phi i32 [ %call1.i.i.i606, %if.end.i.i610.if.then11.i.i613_crit_edge ], [ 8, %sw.bb86.if.then11.i.i613_crit_edge ], [ 8, %land.lhs.true.i.i600.if.then11.i.i613_crit_edge ]
  %sub.i.i611 = sub i32 8, %res.0.i.i608795
  %add.ptr.i.i612 = getelementptr i8, ptr %mom87, i32 %sub.i.i611
  %106 = call ptr @memset(ptr %add.ptr.i.i612, i32 0, i32 %res.0.i.i608795)
  br label %cleanup122

if.end93:                                         ; preds = %if.end.i.i610
  %107 = ptrtoint ptr %mom87 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mom87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp95 = icmp ugt i32 %108, 2
  br i1 %cmp95, label %if.end93.cleanup122_crit_edge, label %if.end97

if.end93.cleanup122_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup122

if.end97:                                         ; preds = %if.end93
  %altout98 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 13
  call void @down_read(ptr noundef %altout98) #13
  %109 = ptrtoint ptr %mom87 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mom87, align 4
  %output103 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %110, i32 1
  %111 = ptrtoint ptr %output103 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %output103, align 4
  %tobool104.not = icmp eq ptr %112, null
  br i1 %tobool104.not, label %if.end112.thread, label %if.end59.i.i619

if.end112.thread:                                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  call void @up_read(ptr noundef %altout98) #13
  br label %cleanup122

if.end59.i.i619:                                  ; preds = %if.end97
  %mode110 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %110, i32 3
  %113 = ptrtoint ptr %mode110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode110, align 4
  %115 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %100, align 4
  call void @up_read(ptr noundef %altout98) #13
  call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 174) #13
  %call.i.i620 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i620, label %if.end59.i.i619.cleanup122_crit_edge, label %copy_to_user.exit628

if.end59.i.i619.cleanup122_crit_edge:             ; preds = %if.end59.i.i619
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup122

copy_to_user.exit628:                             ; preds = %if.end59.i.i619
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i624 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mom87, i32 noundef 8) #13
  %call.i12.i.i625 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %mom87, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i625)
  %tobool119.not = icmp eq i32 %call.i12.i.i625, 0
  %spec.select834 = select i1 %tobool119.not, i32 0, i32 -14
  br label %cleanup122

cleanup122:                                       ; preds = %copy_to_user.exit628, %if.end59.i.i619.cleanup122_crit_edge, %if.end112.thread, %if.end93.cleanup122_crit_edge, %if.then11.i.i613
  %retval.3 = phi i32 [ -6, %if.end93.cleanup122_crit_edge ], [ -6, %if.end112.thread ], [ -14, %if.then11.i.i613 ], [ -14, %if.end59.i.i619.cleanup122_crit_edge ], [ %spec.select834, %copy_to_user.exit628 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mom87) #13
  br label %cleanup459

sw.bb125:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp126) #13
  %116 = ptrtoint ptr %tmp126 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %tmp126, align 4, !annotation !384
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #13
  %call.i.i633 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i633, label %sw.bb125.if.then11.i.i649_crit_edge, label %land.lhs.true.i.i636

sw.bb125.if.then11.i.i649_crit_edge:              ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i649

land.lhs.true.i.i636:                             ; preds = %sw.bb125
  %117 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #19, !srcloc !392
  %asmresult.i.i634 = extractvalue { i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i634)
  %cmp.i6.i635 = icmp eq i32 %asmresult.i.i634, 0
  br i1 %cmp.i6.i635, label %if.end.i.i646, label %land.lhs.true.i.i636.if.then11.i.i649_crit_edge, !prof !393

land.lhs.true.i.i636.if.then11.i.i649_crit_edge:  ; preds = %land.lhs.true.i.i636
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i649

if.end.i.i646:                                    ; preds = %land.lhs.true.i.i636
  %call.i.i.i637 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp126, i32 noundef 4) #13
  %118 = call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i.i.i.i638 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i.i638 to ptr
  %cpu_domain.i.i.i.i.i639 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 4
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i639) #10, !srcloc !385
  %and.i.i.i.i640 = and i32 %120, -13
  %or.i.i.i.i641 = or i32 %and.i.i.i.i640, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i641) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %call1.i.i.i642 = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp126, ptr noundef %0, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i642)
  %tobool4.not.i.i645 = icmp eq i32 %call1.i.i.i642, 0
  br i1 %tobool4.not.i.i645, label %for.cond.preheader, label %if.end.i.i646.if.then11.i.i649_crit_edge, !prof !393

if.end.i.i646.if.then11.i.i649_crit_edge:         ; preds = %if.end.i.i646
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i649

for.cond.preheader:                               ; preds = %if.end.i.i646
  %121 = ptrtoint ptr %tmp126 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tmp126, align 4
  br label %for.body

if.then11.i.i649:                                 ; preds = %if.end.i.i646.if.then11.i.i649_crit_edge, %land.lhs.true.i.i636.if.then11.i.i649_crit_edge, %sw.bb125.if.then11.i.i649_crit_edge
  %res.0.i.i644803 = phi i32 [ %call1.i.i.i642, %if.end.i.i646.if.then11.i.i649_crit_edge ], [ 4, %sw.bb125.if.then11.i.i649_crit_edge ], [ 4, %land.lhs.true.i.i636.if.then11.i.i649_crit_edge ]
  %sub.i.i647 = sub i32 4, %res.0.i.i644803
  %add.ptr.i.i648 = getelementptr i8, ptr %tmp126, i32 %sub.i.i647
  %123 = call ptr @memset(ptr %add.ptr.i.i648, i32 0, i32 %res.0.i.i644803)
  br label %cleanup206

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0844 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0844
  %and = and i32 %122, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool132.not = icmp eq i32 %and, 0
  br i1 %tobool132.not, label %for.body.for.inc_crit_edge, label %if.then133

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then133:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0844)
  %cmp134 = icmp ugt i32 %i.0844, 2
  br i1 %cmp134, label %if.then133.cleanup206_crit_edge, label %if.end136

if.then133.cleanup206_crit_edge:                  ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

if.end136:                                        ; preds = %if.then133
  %output139 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %i.0844, i32 1
  %124 = ptrtoint ptr %output139 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %output139, align 4
  %tobool140.not = icmp eq ptr %125, null
  br i1 %tobool140.not, label %if.end136.cleanup206_crit_edge, label %if.end142

if.end136.cleanup206_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

if.end142:                                        ; preds = %if.end136
  %arrayidx138 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 %i.0844
  %126 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %switch = icmp ult i32 %127, 2
  br i1 %switch, label %if.end142.for.inc_crit_edge, label %if.end142.cleanup206_crit_edge

if.end142.cleanup206_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

if.end142.for.inc_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end142.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0844, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %panellink = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 31, i32 21
  %128 = ptrtoint ptr %panellink to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %panellink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool149.not = icmp eq i32 %129, 0
  br i1 %tobool149.not, label %for.end.if.end171_crit_edge, label %if.then150

for.end.if.end171_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then150:                                       ; preds = %for.end
  %130 = ptrtoint ptr %tmp126 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tmp126, align 4
  %and151 = and i32 %131, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then150.if.end171_crit_edge, label %if.then153

if.then150.if.end171_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.then153:                                       ; preds = %if.then150
  %and154 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %for.body160.preheader, label %if.then153.cleanup206_crit_edge

if.then153.cleanup206_crit_edge:                  ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

for.body160.preheader:                            ; preds = %if.then153
  %arrayidx162 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0
  %132 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp164 = icmp eq i32 %133, 2
  br i1 %cmp164, label %for.body160.preheader.cleanup206_crit_edge, label %for.cond158

for.body160.preheader.cleanup206_crit_edge:       ; preds = %for.body160.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

for.cond158:                                      ; preds = %for.body160.preheader
  %arrayidx162.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1
  %134 = ptrtoint ptr %arrayidx162.1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx162.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp164.1 = icmp eq i32 %135, 2
  br i1 %cmp164.1, label %for.cond158.cleanup206_crit_edge, label %for.cond158.1

for.cond158.cleanup206_crit_edge:                 ; preds = %for.cond158
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

for.cond158.1:                                    ; preds = %for.cond158
  %arrayidx162.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2
  %136 = ptrtoint ptr %arrayidx162.2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx162.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %137)
  %cmp164.2 = icmp eq i32 %137, 2
  br i1 %cmp164.2, label %for.cond158.1.cleanup206_crit_edge, label %for.cond158.1.if.end171_crit_edge

for.cond158.1.if.end171_crit_edge:                ; preds = %for.cond158.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

for.cond158.1.cleanup206_crit_edge:               ; preds = %for.cond158.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

if.end171:                                        ; preds = %for.cond158.1.if.end171_crit_edge, %if.then150.if.end171_crit_edge, %for.end.if.end171_crit_edge
  %138 = ptrtoint ptr %tmp126 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tmp126, align 4
  %and176 = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  %arrayidx190 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0
  %140 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp192 = icmp eq i32 %141, 1
  br i1 %tobool177.not, label %if.else188, label %if.then178

if.then178:                                       ; preds = %if.end171
  br i1 %cmp192, label %if.then178.for.inc199_crit_edge, label %if.then178.for.inc199.sink.split_crit_edge

if.then178.for.inc199.sink.split_crit_edge:       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.sink.split

if.then178.for.inc199_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199

if.else188:                                       ; preds = %if.end171
  br i1 %cmp192, label %if.else188.for.inc199.sink.split_crit_edge, label %if.else188.for.inc199_crit_edge

if.else188.for.inc199_crit_edge:                  ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199

if.else188.for.inc199.sink.split_crit_edge:       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.sink.split

for.inc199.sink.split:                            ; preds = %if.else188.for.inc199.sink.split_crit_edge, %if.then178.for.inc199.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then178.for.inc199.sink.split_crit_edge ], [ 0, %if.else188.for.inc199.sink.split_crit_edge ]
  %142 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %.sink, ptr %arrayidx190, align 4
  br label %for.inc199

for.inc199:                                       ; preds = %for.inc199.sink.split, %if.else188.for.inc199_crit_edge, %if.then178.for.inc199_crit_edge
  %changes.1 = phi i32 [ 0, %if.then178.for.inc199_crit_edge ], [ 0, %if.else188.for.inc199_crit_edge ], [ 1, %for.inc199.sink.split ]
  %and176.1 = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.1)
  %tobool177.not.1 = icmp eq i32 %and176.1, 0
  %arrayidx190.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1
  %143 = ptrtoint ptr %arrayidx190.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx190.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp192.1 = icmp eq i32 %144, 1
  br i1 %tobool177.not.1, label %if.else188.1, label %if.then178.1

if.then178.1:                                     ; preds = %for.inc199
  br i1 %cmp192.1, label %if.then178.1.for.inc199.1_crit_edge, label %if.then178.1.for.inc199.1.sink.split_crit_edge

if.then178.1.for.inc199.1.sink.split_crit_edge:   ; preds = %if.then178.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.1.sink.split

if.then178.1.for.inc199.1_crit_edge:              ; preds = %if.then178.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.1

if.else188.1:                                     ; preds = %for.inc199
  br i1 %cmp192.1, label %if.else188.1.for.inc199.1.sink.split_crit_edge, label %if.else188.1.for.inc199.1_crit_edge

if.else188.1.for.inc199.1_crit_edge:              ; preds = %if.else188.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.1

if.else188.1.for.inc199.1.sink.split_crit_edge:   ; preds = %if.else188.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.1.sink.split

for.inc199.1.sink.split:                          ; preds = %if.else188.1.for.inc199.1.sink.split_crit_edge, %if.then178.1.for.inc199.1.sink.split_crit_edge
  %.sink859 = phi i32 [ 1, %if.then178.1.for.inc199.1.sink.split_crit_edge ], [ 0, %if.else188.1.for.inc199.1.sink.split_crit_edge ]
  %145 = ptrtoint ptr %arrayidx190.1 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %.sink859, ptr %arrayidx190.1, align 4
  br label %for.inc199.1

for.inc199.1:                                     ; preds = %for.inc199.1.sink.split, %if.else188.1.for.inc199.1_crit_edge, %if.then178.1.for.inc199.1_crit_edge
  %changes.1.1 = phi i32 [ %changes.1, %if.then178.1.for.inc199.1_crit_edge ], [ %changes.1, %if.else188.1.for.inc199.1_crit_edge ], [ 1, %for.inc199.1.sink.split ]
  %and176.2 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.2)
  %tobool177.not.2 = icmp eq i32 %and176.2, 0
  %arrayidx190.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2
  %146 = ptrtoint ptr %arrayidx190.2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx190.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp192.2 = icmp eq i32 %147, 1
  br i1 %tobool177.not.2, label %if.else188.2, label %if.then178.2

if.then178.2:                                     ; preds = %for.inc199.1
  br i1 %cmp192.2, label %if.then178.2.for.inc199.2_crit_edge, label %if.then178.2.if.end204.sink.split_crit_edge

if.then178.2.if.end204.sink.split_crit_edge:      ; preds = %if.then178.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204.sink.split

if.then178.2.for.inc199.2_crit_edge:              ; preds = %if.then178.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.2

if.else188.2:                                     ; preds = %for.inc199.1
  br i1 %cmp192.2, label %if.else188.2.if.end204.sink.split_crit_edge, label %if.else188.2.for.inc199.2_crit_edge

if.else188.2.for.inc199.2_crit_edge:              ; preds = %if.else188.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc199.2

if.else188.2.if.end204.sink.split_crit_edge:      ; preds = %if.else188.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204.sink.split

for.inc199.2:                                     ; preds = %if.else188.2.for.inc199.2_crit_edge, %if.then178.2.for.inc199.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changes.1.1)
  %tobool202.not = icmp eq i32 %changes.1.1, 0
  br i1 %tobool202.not, label %for.inc199.2.cleanup206_crit_edge, label %for.inc199.2.if.end204_crit_edge

for.inc199.2.if.end204_crit_edge:                 ; preds = %for.inc199.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204

for.inc199.2.cleanup206_crit_edge:                ; preds = %for.inc199.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup206

if.end204.sink.split:                             ; preds = %if.else188.2.if.end204.sink.split_crit_edge, %if.then178.2.if.end204.sink.split_crit_edge
  %.sink855 = phi i32 [ 1, %if.then178.2.if.end204.sink.split_crit_edge ], [ 0, %if.else188.2.if.end204.sink.split_crit_edge ]
  %148 = ptrtoint ptr %arrayidx190.2 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %.sink855, ptr %arrayidx190.2, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.end204.sink.split, %for.inc199.2.if.end204_crit_edge
  %call205 = call i32 @matroxfb_set_par(ptr noundef %info)
  br label %cleanup206

cleanup206:                                       ; preds = %if.end204, %for.inc199.2.cleanup206_crit_edge, %for.cond158.1.cleanup206_crit_edge, %for.cond158.cleanup206_crit_edge, %for.body160.preheader.cleanup206_crit_edge, %if.then153.cleanup206_crit_edge, %if.end142.cleanup206_crit_edge, %if.end136.cleanup206_crit_edge, %if.then133.cleanup206_crit_edge, %if.then11.i.i649
  %retval.4 = phi i32 [ 0, %if.end204 ], [ -22, %if.then153.cleanup206_crit_edge ], [ 0, %for.inc199.2.cleanup206_crit_edge ], [ -14, %if.then11.i.i649 ], [ -16, %for.cond158.1.cleanup206_crit_edge ], [ -16, %for.cond158.cleanup206_crit_edge ], [ -16, %for.body160.preheader.cleanup206_crit_edge ], [ -16, %if.end142.cleanup206_crit_edge ], [ -6, %if.end136.cleanup206_crit_edge ], [ -6, %if.then133.cleanup206_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp126) #13
  br label %cleanup459

if.then248:                                       ; preds = %for.body243.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx245 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 0
  %149 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %switch578 = icmp ult i32 %150, 2
  %spec.select856 = zext i1 %switch578 to i32
  br label %for.inc257

for.inc257:                                       ; preds = %if.then248, %for.body243.preheader.for.inc257_crit_edge
  %conn239.1 = phi i32 [ 0, %for.body243.preheader.for.inc257_crit_edge ], [ %spec.select856, %if.then248 ]
  %output246.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %151 = ptrtoint ptr %output246.1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %output246.1, align 4
  %tobool247.not.1 = icmp eq ptr %152, null
  br i1 %tobool247.not.1, label %for.inc257.for.inc257.1_crit_edge, label %if.then248.1

for.inc257.for.inc257.1_crit_edge:                ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc257.1

if.then248.1:                                     ; preds = %for.inc257
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx245.1 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1
  %153 = ptrtoint ptr %arrayidx245.1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx245.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %switch578.1 = icmp ult i32 %154, 2
  %or254.1 = or i32 %conn239.1, 2
  %spec.select857 = select i1 %switch578.1, i32 %or254.1, i32 %conn239.1
  br label %for.inc257.1

for.inc257.1:                                     ; preds = %if.then248.1, %for.inc257.for.inc257.1_crit_edge
  %conn239.1.1 = phi i32 [ %conn239.1, %for.inc257.for.inc257.1_crit_edge ], [ %spec.select857, %if.then248.1 ]
  %output246.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2, i32 1
  %155 = ptrtoint ptr %output246.2 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %output246.2, align 4
  %tobool247.not.2 = icmp eq ptr %156, null
  br i1 %tobool247.not.2, label %for.inc257.1.for.inc257.2_crit_edge, label %if.then248.2

for.inc257.1.for.inc257.2_crit_edge:              ; preds = %for.inc257.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc257.2

if.then248.2:                                     ; preds = %for.inc257.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx245.2 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 2
  %157 = ptrtoint ptr %arrayidx245.2 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx245.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %158)
  %switch578.2 = icmp ult i32 %158, 2
  %or254.2 = or i32 %conn239.1.1, 4
  %spec.select858 = select i1 %switch578.2, i32 %or254.2, i32 %conn239.1.1
  br label %for.inc257.2

for.inc257.2:                                     ; preds = %if.then248.2, %for.inc257.1.for.inc257.2_crit_edge
  %conn239.1.2 = phi i32 [ %conn239.1.1, %for.inc257.1.for.inc257.2_crit_edge ], [ %spec.select858, %if.then248.2 ]
  %panellink261 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 31, i32 21
  %159 = ptrtoint ptr %panellink261 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %panellink261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool262.not = icmp eq i32 %160, 0
  br i1 %tobool262.not, label %for.inc257.2.if.end274_crit_edge, label %if.then263

for.inc257.2.if.end274_crit_edge:                 ; preds = %for.inc257.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end274

if.then263:                                       ; preds = %for.inc257.2
  call void @__sanitizer_cov_trace_pc() #15
  %and264 = and i32 %conn239.1.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  %and267 = and i32 %conn239.1.2, -3
  %spec.select = select i1 %tobool265.not, i32 %conn239.1.2, i32 %and267
  %and269 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269)
  %tobool270.not = icmp eq i32 %and269, 0
  %and272 = and i32 %spec.select, -5
  %spec.select582 = select i1 %tobool270.not, i32 %spec.select, i32 %and272
  br label %if.end274

if.end274:                                        ; preds = %if.then263, %for.inc257.2.if.end274_crit_edge
  %conn239.3 = phi i32 [ %conn239.1.2, %for.inc257.2.if.end274_crit_edge ], [ %spec.select582, %if.then263 ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1069) #13
  %161 = tail call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i656 = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i656 to ptr
  %cpu_domain.i.i657 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 4
  %163 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i657) #10, !srcloc !385
  %and.i658 = and i32 %163, -13
  %or.i659 = or i32 %and.i658, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i659) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %164 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %conn239.3, i32 -1226833921) #13, !srcloc !394
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #13, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool290.not = icmp eq i32 %164, 0
  %.579 = select i1 %tobool290.not, i32 0, i32 -14
  br label %cleanup459

sw.bb332:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %r) #13
  %165 = getelementptr inbounds i8, ptr %r, i32 9
  %166 = call ptr @memset(ptr %165, i32 0, i32 95)
  %167 = call ptr @memcpy(ptr %r, ptr @.str, i32 9)
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %r, i32 0, i32 1
  %168 = call ptr @memcpy(ptr %card, ptr @.str.75, i32 7)
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %r, i32 0, i32 2
  %pcidev = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 10
  %169 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pcidev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44, i32 3
  %171 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i.i, label %if.end.i.i775, label %sw.bb332.pci_name.exit_crit_edge

sw.bb332.pci_name.exit_crit_edge:                 ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i775:                                    ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  %173 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i775, %sw.bb332.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %174, %if.end.i.i775 ], [ %172, %sw.bb332.pci_name.exit_crit_edge ]
  %call338 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.76, ptr noundef %retval.0.i.i)
  %version = getelementptr inbounds %struct.v4l2_capability, ptr %r, i32 0, i32 3
  %175 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 65536, ptr %version, align 4
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %r, i32 0, i32 4
  %176 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 2, ptr %capabilities, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 174) #13
  %call.i.i668 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i668, label %pci_name.exit.copy_to_user.exit676.thread_crit_edge, label %if.end.i.i671

pci_name.exit.copy_to_user.exit676.thread_crit_edge: ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit676.thread

if.end.i.i671:                                    ; preds = %pci_name.exit
  %177 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 104, i32 -1226833920) #19, !srcloc !390
  %asmresult.i.i669 = extractvalue { i32, i32 } %177, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i669)
  %cmp.i6.i670 = icmp eq i32 %asmresult.i.i669, 0
  br i1 %cmp.i6.i670, label %copy_to_user.exit676, label %if.end.i.i671.copy_to_user.exit676.thread_crit_edge

if.end.i.i671.copy_to_user.exit676.thread_crit_edge: ; preds = %if.end.i.i671
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit676.thread

copy_to_user.exit676:                             ; preds = %if.end.i.i671
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i672 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r, i32 noundef 104) #13
  %call.i12.i.i673 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %r, i32 noundef 104) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i673)
  %tobool340.not = icmp eq i32 %call.i12.i.i673, 0
  %spec.select835 = select i1 %tobool340.not, i32 0, i32 -14
  br label %copy_to_user.exit676.thread

copy_to_user.exit676.thread:                      ; preds = %copy_to_user.exit676, %if.end.i.i671.copy_to_user.exit676.thread_crit_edge, %pci_name.exit.copy_to_user.exit676.thread_crit_edge
  %178 = phi i32 [ -14, %pci_name.exit.copy_to_user.exit676.thread_crit_edge ], [ -14, %if.end.i.i671.copy_to_user.exit676.thread_crit_edge ], [ %spec.select835, %copy_to_user.exit676 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %r) #13
  br label %cleanup459

sw.bb344:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %qctrl) #13
  %179 = call ptr @memset(ptr %qctrl, i32 255, i32 68)
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #13
  %call.i.i681 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i681, label %sw.bb344.if.then11.i.i697_crit_edge, label %land.lhs.true.i.i684

sw.bb344.if.then11.i.i697_crit_edge:              ; preds = %sw.bb344
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i697

land.lhs.true.i.i684:                             ; preds = %sw.bb344
  %180 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 68, i32 -1226833920) #19
  %asmresult.i.i682 = extractvalue { i32, i32 } %180, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i682)
  %cmp.i6.i683 = icmp eq i32 %asmresult.i.i682, 0
  br i1 %cmp.i6.i683, label %if.end.i.i694, label %land.lhs.true.i.i684.if.then11.i.i697_crit_edge, !prof !393

land.lhs.true.i.i684.if.then11.i.i697_crit_edge:  ; preds = %land.lhs.true.i.i684
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i697

if.end.i.i694:                                    ; preds = %land.lhs.true.i.i684
  %call.i.i.i685 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %qctrl, i32 noundef 68) #13
  %181 = call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i.i.i.i686 = and i32 %181, -16384
  %182 = inttoptr i32 %and.i.i.i.i.i.i686 to ptr
  %cpu_domain.i.i.i.i.i687 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 4
  %183 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i687) #10, !srcloc !385
  %and.i.i.i.i688 = and i32 %183, -13
  %or.i.i.i.i689 = or i32 %and.i.i.i.i688, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i689) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %call1.i.i.i690 = call i32 @arm_copy_from_user(ptr noundef nonnull %qctrl, ptr noundef %0, i32 noundef 68) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %183) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i690)
  %tobool4.not.i.i693 = icmp eq i32 %call1.i.i.i690, 0
  br i1 %tobool4.not.i.i693, label %if.end349, label %if.end.i.i694.if.then11.i.i697_crit_edge, !prof !393

if.end.i.i694.if.then11.i.i697_crit_edge:         ; preds = %if.end.i.i694
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i697

if.then11.i.i697:                                 ; preds = %if.end.i.i694.if.then11.i.i697_crit_edge, %land.lhs.true.i.i684.if.then11.i.i697_crit_edge, %sw.bb344.if.then11.i.i697_crit_edge
  %res.0.i.i692810 = phi i32 [ %call1.i.i.i690, %if.end.i.i694.if.then11.i.i697_crit_edge ], [ 68, %sw.bb344.if.then11.i.i697_crit_edge ], [ 68, %land.lhs.true.i.i684.if.then11.i.i697_crit_edge ]
  %sub.i.i695 = sub i32 68, %res.0.i.i692810
  %add.ptr.i.i696 = getelementptr i8, ptr %qctrl, i32 %sub.i.i695
  %184 = call ptr @memset(ptr %add.ptr.i.i696, i32 0, i32 %res.0.i.i692810)
  br label %cleanup381

if.end349:                                        ; preds = %if.end.i.i694
  %altout350 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 13
  call void @down_read(ptr noundef %altout350) #13
  %output354 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %185 = ptrtoint ptr %output354 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %output354, align 4
  %tobool355.not = icmp eq ptr %186, null
  br i1 %tobool355.not, label %if.end349.if.end373.thread_crit_edge, label %if.else357

if.end349.if.end373.thread_crit_edge:             ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end373.thread

if.else357:                                       ; preds = %if.end349
  %getqueryctrl = getelementptr inbounds %struct.matrox_altout, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %getqueryctrl to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %getqueryctrl, align 4
  %tobool361.not = icmp eq ptr %188, null
  br i1 %tobool361.not, label %if.else357.if.end373.thread_crit_edge, label %if.end373

if.else357.if.end373.thread_crit_edge:            ; preds = %if.else357
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end373.thread

if.end373.thread:                                 ; preds = %if.else357.if.end373.thread_crit_edge, %if.end349.if.end373.thread_crit_edge
  %err345.0.ph = phi i32 [ -22, %if.else357.if.end373.thread_crit_edge ], [ -6, %if.end349.if.end373.thread_crit_edge ]
  call void @up_read(ptr noundef %altout350) #13
  br label %if.end380

if.end373:                                        ; preds = %if.else357
  %data369 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 2
  %189 = ptrtoint ptr %data369 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %data369, align 4
  %call370 = call i32 %188(ptr noundef %190, ptr noundef nonnull %qctrl) #13
  call void @up_read(ptr noundef %altout350) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call370)
  %cmp376 = icmp sgt i32 %call370, -1
  br i1 %cmp376, label %if.end59.i.i703, label %if.end373.if.end380_crit_edge

if.end373.if.end380_crit_edge:                    ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

if.end59.i.i703:                                  ; preds = %if.end373
  call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 174) #13
  %call.i.i704 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i704, label %if.end59.i.i703.cleanup381_crit_edge, label %copy_to_user.exit712

if.end59.i.i703.cleanup381_crit_edge:             ; preds = %if.end59.i.i703
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup381

copy_to_user.exit712:                             ; preds = %if.end59.i.i703
  %call.i.i.i708 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %qctrl, i32 noundef 68) #13
  %call.i12.i.i709 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %qctrl, i32 noundef 68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i709)
  %tobool378.not = icmp eq i32 %call.i12.i.i709, 0
  br i1 %tobool378.not, label %copy_to_user.exit712.if.end380_crit_edge, label %copy_to_user.exit712.cleanup381_crit_edge

copy_to_user.exit712.cleanup381_crit_edge:        ; preds = %copy_to_user.exit712
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup381

copy_to_user.exit712.if.end380_crit_edge:         ; preds = %copy_to_user.exit712
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

if.end380:                                        ; preds = %copy_to_user.exit712.if.end380_crit_edge, %if.end373.if.end380_crit_edge, %if.end373.thread
  %err345.0815 = phi i32 [ %err345.0.ph, %if.end373.thread ], [ %call370, %copy_to_user.exit712.if.end380_crit_edge ], [ %call370, %if.end373.if.end380_crit_edge ]
  br label %cleanup381

cleanup381:                                       ; preds = %if.end380, %copy_to_user.exit712.cleanup381_crit_edge, %if.end59.i.i703.cleanup381_crit_edge, %if.then11.i.i697
  %retval.9 = phi i32 [ %err345.0815, %if.end380 ], [ -14, %copy_to_user.exit712.cleanup381_crit_edge ], [ -14, %if.then11.i.i697 ], [ -14, %if.end59.i.i703.cleanup381_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %qctrl) #13
  br label %cleanup459

sw.bb383:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl) #13
  %191 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -1, ptr %ctrl, align 4, !annotation !384
  %192 = getelementptr inbounds %struct.v4l2_control, ptr %ctrl, i32 0, i32 1
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %192, align 4, !annotation !384
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #13
  %call.i.i717 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i717, label %sw.bb383.if.then11.i.i733_crit_edge, label %land.lhs.true.i.i720

sw.bb383.if.then11.i.i733_crit_edge:              ; preds = %sw.bb383
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i733

land.lhs.true.i.i720:                             ; preds = %sw.bb383
  %194 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #19
  %asmresult.i.i718 = extractvalue { i32, i32 } %194, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i718)
  %cmp.i6.i719 = icmp eq i32 %asmresult.i.i718, 0
  br i1 %cmp.i6.i719, label %if.end.i.i730, label %land.lhs.true.i.i720.if.then11.i.i733_crit_edge, !prof !393

land.lhs.true.i.i720.if.then11.i.i733_crit_edge:  ; preds = %land.lhs.true.i.i720
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i733

if.end.i.i730:                                    ; preds = %land.lhs.true.i.i720
  %call.i.i.i721 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctrl, i32 noundef 8) #13
  %195 = call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i.i.i.i722 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i.i722 to ptr
  %cpu_domain.i.i.i.i.i723 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 4
  %197 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i723) #10, !srcloc !385
  %and.i.i.i.i724 = and i32 %197, -13
  %or.i.i.i.i725 = or i32 %and.i.i.i.i724, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i725) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %call1.i.i.i726 = call i32 @arm_copy_from_user(ptr noundef nonnull %ctrl, ptr noundef %0, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %197) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i726)
  %tobool4.not.i.i729 = icmp eq i32 %call1.i.i.i726, 0
  br i1 %tobool4.not.i.i729, label %if.end388, label %if.end.i.i730.if.then11.i.i733_crit_edge, !prof !393

if.end.i.i730.if.then11.i.i733_crit_edge:         ; preds = %if.end.i.i730
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i733

if.then11.i.i733:                                 ; preds = %if.end.i.i730.if.then11.i.i733_crit_edge, %land.lhs.true.i.i720.if.then11.i.i733_crit_edge, %sw.bb383.if.then11.i.i733_crit_edge
  %res.0.i.i728820 = phi i32 [ %call1.i.i.i726, %if.end.i.i730.if.then11.i.i733_crit_edge ], [ 8, %sw.bb383.if.then11.i.i733_crit_edge ], [ 8, %land.lhs.true.i.i720.if.then11.i.i733_crit_edge ]
  %sub.i.i731 = sub i32 8, %res.0.i.i728820
  %add.ptr.i.i732 = getelementptr i8, ptr %ctrl, i32 %sub.i.i731
  %198 = call ptr @memset(ptr %add.ptr.i.i732, i32 0, i32 %res.0.i.i728820)
  br label %cleanup421

if.end388:                                        ; preds = %if.end.i.i730
  %altout389 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 13
  call void @down_read(ptr noundef %altout389) #13
  %output393 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %199 = ptrtoint ptr %output393 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %output393, align 4
  %tobool394.not = icmp eq ptr %200, null
  br i1 %tobool394.not, label %if.end388.if.end412.thread_crit_edge, label %if.else396

if.end388.if.end412.thread_crit_edge:             ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end412.thread

if.else396:                                       ; preds = %if.end388
  %getctrl = getelementptr inbounds %struct.matrox_altout, ptr %200, i32 0, i32 6
  %201 = ptrtoint ptr %getctrl to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %getctrl, align 4
  %tobool400.not = icmp eq ptr %202, null
  br i1 %tobool400.not, label %if.else396.if.end412.thread_crit_edge, label %if.end412

if.else396.if.end412.thread_crit_edge:            ; preds = %if.else396
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end412.thread

if.end412.thread:                                 ; preds = %if.else396.if.end412.thread_crit_edge, %if.end388.if.end412.thread_crit_edge
  %err384.0.ph = phi i32 [ -22, %if.else396.if.end412.thread_crit_edge ], [ -6, %if.end388.if.end412.thread_crit_edge ]
  call void @up_read(ptr noundef %altout389) #13
  br label %if.end420

if.end412:                                        ; preds = %if.else396
  %data408 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 2
  %203 = ptrtoint ptr %data408 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data408, align 4
  %call409 = call i32 %202(ptr noundef %204, ptr noundef nonnull %ctrl) #13
  call void @up_read(ptr noundef %altout389) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call409)
  %cmp415 = icmp sgt i32 %call409, -1
  br i1 %cmp415, label %if.end59.i.i739, label %if.end412.if.end420_crit_edge

if.end412.if.end420_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end420

if.end59.i.i739:                                  ; preds = %if.end412
  call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 174) #13
  %call.i.i740 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i740, label %if.end59.i.i739.cleanup421_crit_edge, label %copy_to_user.exit748

if.end59.i.i739.cleanup421_crit_edge:             ; preds = %if.end59.i.i739
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup421

copy_to_user.exit748:                             ; preds = %if.end59.i.i739
  %call.i.i.i744 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ctrl, i32 noundef 8) #13
  %call.i12.i.i745 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ctrl, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i745)
  %tobool418.not = icmp eq i32 %call.i12.i.i745, 0
  br i1 %tobool418.not, label %copy_to_user.exit748.if.end420_crit_edge, label %copy_to_user.exit748.cleanup421_crit_edge

copy_to_user.exit748.cleanup421_crit_edge:        ; preds = %copy_to_user.exit748
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup421

copy_to_user.exit748.if.end420_crit_edge:         ; preds = %copy_to_user.exit748
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end420

if.end420:                                        ; preds = %copy_to_user.exit748.if.end420_crit_edge, %if.end412.if.end420_crit_edge, %if.end412.thread
  %err384.0825 = phi i32 [ %err384.0.ph, %if.end412.thread ], [ %call409, %copy_to_user.exit748.if.end420_crit_edge ], [ %call409, %if.end412.if.end420_crit_edge ]
  br label %cleanup421

cleanup421:                                       ; preds = %if.end420, %copy_to_user.exit748.cleanup421_crit_edge, %if.end59.i.i739.cleanup421_crit_edge, %if.then11.i.i733
  %retval.10 = phi i32 [ %err384.0825, %if.end420 ], [ -14, %copy_to_user.exit748.cleanup421_crit_edge ], [ -14, %if.then11.i.i733 ], [ -14, %if.end59.i.i739.cleanup421_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl) #13
  br label %cleanup459

sw.bb423:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ctrl424) #13
  %205 = ptrtoint ptr %ctrl424 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -1, ptr %ctrl424, align 4, !annotation !384
  %206 = getelementptr inbounds %struct.v4l2_control, ptr %ctrl424, i32 0, i32 1
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 -1, ptr %206, align 4, !annotation !384
  tail call void @__might_fault(ptr noundef nonnull @.str.79, i32 noundef 156) #13
  %call.i.i753 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i753, label %sw.bb423.if.then11.i.i769_crit_edge, label %land.lhs.true.i.i756

sw.bb423.if.then11.i.i769_crit_edge:              ; preds = %sw.bb423
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i769

land.lhs.true.i.i756:                             ; preds = %sw.bb423
  %208 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1226833920) #19, !srcloc !392
  %asmresult.i.i754 = extractvalue { i32, i32 } %208, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i754)
  %cmp.i6.i755 = icmp eq i32 %asmresult.i.i754, 0
  br i1 %cmp.i6.i755, label %if.end.i.i766, label %land.lhs.true.i.i756.if.then11.i.i769_crit_edge, !prof !393

land.lhs.true.i.i756.if.then11.i.i769_crit_edge:  ; preds = %land.lhs.true.i.i756
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i769

if.end.i.i766:                                    ; preds = %land.lhs.true.i.i756
  %call.i.i.i757 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctrl424, i32 noundef 8) #13
  %209 = call i32 @llvm.read_register.i32(metadata !364) #13
  %and.i.i.i.i.i.i758 = and i32 %209, -16384
  %210 = inttoptr i32 %and.i.i.i.i.i.i758 to ptr
  %cpu_domain.i.i.i.i.i759 = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 4
  %211 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i759) #10, !srcloc !385
  %and.i.i.i.i760 = and i32 %211, -13
  %or.i.i.i.i761 = or i32 %and.i.i.i.i760, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i761) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %call1.i.i.i762 = call i32 @arm_copy_from_user(ptr noundef nonnull %ctrl424, ptr noundef %0, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %211) #13, !srcloc !386
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i762)
  %tobool4.not.i.i765 = icmp eq i32 %call1.i.i.i762, 0
  br i1 %tobool4.not.i.i765, label %if.end429, label %if.end.i.i766.if.then11.i.i769_crit_edge, !prof !393

if.end.i.i766.if.then11.i.i769_crit_edge:         ; preds = %if.end.i.i766
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i769

if.then11.i.i769:                                 ; preds = %if.end.i.i766.if.then11.i.i769_crit_edge, %land.lhs.true.i.i756.if.then11.i.i769_crit_edge, %sw.bb423.if.then11.i.i769_crit_edge
  %res.0.i.i764830 = phi i32 [ %call1.i.i.i762, %if.end.i.i766.if.then11.i.i769_crit_edge ], [ 8, %sw.bb423.if.then11.i.i769_crit_edge ], [ 8, %land.lhs.true.i.i756.if.then11.i.i769_crit_edge ]
  %sub.i.i767 = sub i32 8, %res.0.i.i764830
  %add.ptr.i.i768 = getelementptr i8, ptr %ctrl424, i32 %sub.i.i767
  %212 = call ptr @memset(ptr %add.ptr.i.i768, i32 0, i32 %res.0.i.i764830)
  br label %cleanup456

if.end429:                                        ; preds = %if.end.i.i766
  %altout430 = getelementptr inbounds %struct.matrox_fb_info, ptr %info, i32 0, i32 13
  call void @down_read(ptr noundef %altout430) #13
  %output434 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 1
  %213 = ptrtoint ptr %output434 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %output434, align 4
  %tobool435.not = icmp eq ptr %214, null
  br i1 %tobool435.not, label %if.end429.if.end453_crit_edge, label %if.else437

if.end429.if.end453_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end453

if.else437:                                       ; preds = %if.end429
  %setctrl = getelementptr inbounds %struct.matrox_altout, ptr %214, i32 0, i32 7
  %215 = ptrtoint ptr %setctrl to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %setctrl, align 4
  %tobool441.not = icmp eq ptr %216, null
  br i1 %tobool441.not, label %if.else437.if.end453_crit_edge, label %if.then442

if.else437.if.end453_crit_edge:                   ; preds = %if.else437
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end453

if.then442:                                       ; preds = %if.else437
  call void @__sanitizer_cov_trace_pc() #15
  %data449 = getelementptr %struct.matrox_fb_info, ptr %info, i32 0, i32 14, i32 1, i32 2
  %217 = ptrtoint ptr %data449 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data449, align 4
  %call450 = call i32 %216(ptr noundef %218, ptr noundef nonnull %ctrl424) #13
  br label %if.end453

if.end453:                                        ; preds = %if.then442, %if.else437.if.end453_crit_edge, %if.end429.if.end453_crit_edge
  %err425.0 = phi i32 [ %call450, %if.then442 ], [ -6, %if.end429.if.end453_crit_edge ], [ -22, %if.else437.if.end453_crit_edge ]
  call void @up_read(ptr noundef %altout430) #13
  br label %cleanup456

cleanup456:                                       ; preds = %if.end453, %if.then11.i.i769
  %retval.11 = phi i32 [ %err425.0, %if.end453 ], [ -14, %if.then11.i.i769 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ctrl424) #13
  br label %cleanup459

cleanup459:                                       ; preds = %cleanup456, %cleanup421, %cleanup381, %copy_to_user.exit676.thread, %if.end274, %cleanup206, %cleanup122, %cleanup83, %if.end16, %sw.bb9.cleanup459_crit_edge, %copy_to_user.exit.thread, %for.body213.preheader, %for.body300.preheader, %if.end.cleanup459_crit_edge, %entry.cleanup459_crit_edge
  %retval.12 = phi i32 [ %retval.11, %cleanup456 ], [ %retval.10, %cleanup421 ], [ %retval.9, %cleanup381 ], [ %178, %copy_to_user.exit676.thread ], [ %.580, %for.body300.preheader ], [ %.579, %if.end274 ], [ %.577, %for.body213.preheader ], [ %retval.4, %cleanup206 ], [ %retval.3, %cleanup122 ], [ %retval.2, %cleanup83 ], [ %54, %copy_to_user.exit.thread ], [ -6, %entry.cleanup459_crit_edge ], [ %call17, %if.end16 ], [ -14, %sw.bb9.cleanup459_crit_edge ], [ -25, %if.end.cleanup459_crit_edge ]
  ret i32 %retval.12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @matroxfb_remove(ptr noundef %minfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 2
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %dead, align 4
  %usecount = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 4
  %1 = ptrtoint ptr %usecount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %next_fb.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next_fb.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_del.exit.i_crit_edge

if.end.list_del.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %next_fb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_fb.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %next_fb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %next_fb.i, align 4
  %prev.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %drivers_count.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 17
  %11 = ptrtoint ptr %drivers_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drivers_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.not.i = icmp eq i32 %12, 0
  br i1 %cmp14.not.i, label %list_del.exit.i.matroxfb_unregister_device.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  br label %for.body.i

list_del.exit.i.matroxfb_unregister_device.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_unregister_device.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %list_del.exit.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 15, i32 %i.015.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %remove.i = getelementptr inbounds %struct.matroxfb_driver, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remove.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx3.i = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 16, i32 %i.015.i
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i, align 4
  tail call void %16(ptr noundef %minfo, ptr noundef %18) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %19 = ptrtoint ptr %drivers_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drivers_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.matroxfb_unregister_device.exit_crit_edge

if.end.i.matroxfb_unregister_device.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_unregister_device.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

matroxfb_unregister_device.exit:                  ; preds = %if.end.i.matroxfb_unregister_device.exit_crit_edge, %list_del.exit.i.matroxfb_unregister_device.exit_crit_edge
  tail call void @unregister_framebuffer(ptr noundef %minfo) #13
  tail call void @matroxfb_g450_shutdown(ptr noundef %minfo) #13
  %mmio = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19
  %vbase = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vbase, align 4
  tail call void @iounmap(ptr noundef %22) #13
  %video = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18
  %vbase1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %vbase1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vbase1, align 4
  tail call void @iounmap(ptr noundef %24) #13
  %25 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %video, align 4
  %len_maximum = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18, i32 4
  %27 = ptrtoint ptr %len_maximum to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len_maximum, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %28) #13
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mmio, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %30, i32 noundef 16384) #13
  tail call void @kfree(ptr noundef %minfo) #13
  br label %return

return:                                           ; preds = %matroxfb_unregister_device.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @matroxfb_decode_var(ptr nocapture noundef readonly %minfo, ptr nocapture noundef %var, ptr nocapture noundef writeonly %visual, ptr nocapture noundef writeonly %video_cmap_len, ptr nocapture noundef writeonly %ydstorg) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = add i32 %1, -4
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30)
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge248
    i32 5, label %entry.sw.epilog_crit_edge249
    i32 7, label %entry.sw.epilog_crit_edge250
  ]

entry.sw.epilog_crit_edge250:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge249:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge248:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %capable = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29
  %5 = ptrtoint ptr %capable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge248, %entry.sw.epilog_crit_edge249, %entry.sw.epilog_crit_edge250
  %7 = ptrtoint ptr %ydstorg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ydstorg, align 4
  %len_usable = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 18, i32 3
  %8 = ptrtoint ptr %len_usable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len_usable, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %12 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp ult i32 %11, %13
  br i1 %cmp, label %if.then1, label %sw.epilog.if.end4_crit_edge

sw.epilog.if.end4_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then1:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %yres_virtual, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %sw.epilog.if.end4_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %15 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xres_virtual, align 4
  %17 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5 = icmp ult i32 %16, %18
  br i1 %cmp5, label %if.then6, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %xres_virtual, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %20 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end9.matroxfb_pitch_adjust.exit_crit_edge, label %if.end.i

if.end9.matroxfb_pitch_adjust.exit_crit_edge:     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_pitch_adjust.exit

if.end.i:                                         ; preds = %if.end9
  %vxres.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 1
  %22 = ptrtoint ptr %vxres.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vxres.i, align 4
  %devflags.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31
  %24 = ptrtoint ptr %devflags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devflags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool1.not.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i, label %if.else.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not45.i = icmp eq i32 %27, 0
  br i1 %tobool3.not45.i, label %while.cond.preheader.i.matroxfb_pitch_adjust.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.matroxfb_pitch_adjust.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_pitch_adjust.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %28 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30) #13
  %accelerator.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %interleave.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 26
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %29 = phi i32 [ %27, %while.body.lr.ph.i ], [ %36, %if.end6.i.while.body.i_crit_edge ]
  %width.046.i = phi ptr [ %23, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end6.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp.not.i = icmp slt i32 %29, %21
  br i1 %cmp.not.i, label %while.body.i.if.end6.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %30 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %28, label %sw.default.i.i [
    i32 0, label %land.lhs.true.i.matroxfb_pitch_adjust.exit_crit_edge
    i32 1, label %land.lhs.true.i.matroxfb_test_and_set_rounding.exit.i_crit_edge
    i32 2, label %sw.bb2.i.i
    i32 4, label %sw.bb3.i.i
    i32 6, label %sw.bb4.i.i
  ]

land.lhs.true.i.matroxfb_test_and_set_rounding.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_test_and_set_rounding.exit.i

land.lhs.true.i.matroxfb_pitch_adjust.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_pitch_adjust.exit

sw.bb2.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_test_and_set_rounding.exit.i

sw.bb3.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_test_and_set_rounding.exit.i

sw.bb4.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_test_and_set_rounding.exit.i

sw.default.i.i:                                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %accelerator.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %accelerator.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 26
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 32, i32 16
  br label %matroxfb_test_and_set_rounding.exit.i

matroxfb_test_and_set_rounding.exit.i:            ; preds = %sw.default.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %land.lhs.true.i.matroxfb_test_and_set_rounding.exit.i_crit_edge
  %rounding.0.i.i = phi i32 [ %spec.store.select.i.i, %sw.default.i.i ], [ 64, %sw.bb4.i.i ], [ 32, %sw.bb3.i.i ], [ 64, %sw.bb2.i.i ], [ 128, %land.lhs.true.i.matroxfb_test_and_set_rounding.exit.i_crit_edge ]
  %33 = ptrtoint ptr %interleave.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %interleave.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp ne i32 %34, 0
  %mul.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = shl nuw nsw i32 %rounding.0.i.i, %mul.i.i
  %rem.i.i = srem i32 %29, %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool7.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool7.not.i.i, label %matroxfb_test_and_set_rounding.exit.i.matroxfb_pitch_adjust.exit_crit_edge, label %matroxfb_test_and_set_rounding.exit.i.if.end6.i_crit_edge

matroxfb_test_and_set_rounding.exit.i.if.end6.i_crit_edge: ; preds = %matroxfb_test_and_set_rounding.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

matroxfb_test_and_set_rounding.exit.i.matroxfb_pitch_adjust.exit_crit_edge: ; preds = %matroxfb_test_and_set_rounding.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_pitch_adjust.exit

if.end6.i:                                        ; preds = %matroxfb_test_and_set_rounding.exit.i.if.end6.i_crit_edge, %while.body.i.if.end6.i_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %width.046.i, i32 1
  %35 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr.i, align 4
  %tobool3.not.i = icmp eq i32 %36, 0
  br i1 %tobool3.not.i, label %if.end6.i.matroxfb_pitch_adjust.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end6.i.matroxfb_pitch_adjust.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_pitch_adjust.exit

if.else.i:                                        ; preds = %if.end.i
  %37 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 30) #13
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %37, label %sw.default.i28.i [
    i32 0, label %if.else.i.matroxfb_pitch_adjust.exit_crit_edge
    i32 1, label %if.else.i.sw.epilog.i39.i_crit_edge
    i32 2, label %sw.bb2.i22.i
    i32 4, label %sw.bb3.i23.i
    i32 6, label %sw.bb4.i24.i
  ]

if.else.i.sw.epilog.i39.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i39.i

if.else.i.matroxfb_pitch_adjust.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %matroxfb_pitch_adjust.exit

sw.bb2.i22.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i39.i

sw.bb3.i23.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i39.i

sw.bb4.i24.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i39.i

sw.default.i28.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %accelerator.i25.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 8
  %39 = ptrtoint ptr %accelerator.i25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %accelerator.i25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %40)
  %cmp.i26.i = icmp eq i32 %40, 26
  %spec.store.select.i27.i = select i1 %cmp.i26.i, i32 32, i32 16
  br label %sw.epilog.i39.i

sw.epilog.i39.i:                                  ; preds = %sw.default.i28.i, %sw.bb4.i24.i, %sw.bb3.i23.i, %sw.bb2.i22.i, %if.else.i.sw.epilog.i39.i_crit_edge
  %rounding.0.i29.i = phi i32 [ %spec.store.select.i27.i, %sw.default.i28.i ], [ 64, %sw.bb4.i24.i ], [ 32, %sw.bb3.i23.i ], [ 64, %sw.bb2.i22.i ], [ 128, %if.else.i.sw.epilog.i39.i_crit_edge ]
  %interleave.i30.i = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 26
  %41 = ptrtoint ptr %interleave.i30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %interleave.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i31.i = icmp ne i32 %42, 0
  %mul.i32.i = zext i1 %tobool.not.i31.i to i32
  %spec.select.i33.i = shl nuw nsw i32 %rounding.0.i29.i, %mul.i32.i
  %rem.i34.i = srem i32 %21, %spec.select.i33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i34.i)
  %tobool7.not.i35.i = icmp eq i32 %rem.i34.i, 0
  %sub.i36.i = sub nsw i32 %spec.select.i33.i, %rem.i34.i
  %add.i37.i = select i1 %tobool7.not.i35.i, i32 0, i32 %sub.i36.i
  %xres.addr.0.i38.i = add i32 %add.i37.i, %21
  br label %matroxfb_pitch_adjust.exit

matroxfb_pitch_adjust.exit:                       ; preds = %sw.epilog.i39.i, %if.else.i.matroxfb_pitch_adjust.exit_crit_edge, %if.end6.i.matroxfb_pitch_adjust.exit_crit_edge, %matroxfb_test_and_set_rounding.exit.i.matroxfb_pitch_adjust.exit_crit_edge, %land.lhs.true.i.matroxfb_pitch_adjust.exit_crit_edge, %while.cond.preheader.i.matroxfb_pitch_adjust.exit_crit_edge, %if.end9.matroxfb_pitch_adjust.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.end9.matroxfb_pitch_adjust.exit_crit_edge ], [ %xres.addr.0.i38.i, %sw.epilog.i39.i ], [ %21, %if.else.i.matroxfb_pitch_adjust.exit_crit_edge ], [ 0, %while.cond.preheader.i.matroxfb_pitch_adjust.exit_crit_edge ], [ %29, %land.lhs.true.i.matroxfb_pitch_adjust.exit_crit_edge ], [ 0, %if.end6.i.matroxfb_pitch_adjust.exit_crit_edge ], [ %29, %matroxfb_test_and_set_rounding.exit.i.matroxfb_pitch_adjust.exit_crit_edge ]
  %43 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %xres_virtual, align 4
  %mul = mul i32 %retval.0.i, %1
  %44 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres_virtual, align 4
  %mul14 = mul i32 %45, %mul
  %div241 = lshr i32 %mul14, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div241, i32 %9)
  %cmp15 = icmp ugt i32 %div241, %9
  br i1 %cmp15, label %if.then16, label %matroxfb_pitch_adjust.exit.if.end27_crit_edge

matroxfb_pitch_adjust.exit.if.end27_crit_edge:    ; preds = %matroxfb_pitch_adjust.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then16:                                        ; preds = %matroxfb_pitch_adjust.exit
  call void @__sanitizer_cov_trace_pc() #15
  %mul17 = shl i32 %9, 3
  %div20 = udiv i32 %mul17, %mul
  %46 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div20, ptr %yres_virtual, align 4
  %mul25 = mul i32 %div20, %mul
  %div26243 = lshr i32 %mul25, 3
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %matroxfb_pitch_adjust.exit.if.end27_crit_edge
  %memlen.0 = phi i32 [ %div26243, %if.then16 ], [ %div241, %matroxfb_pitch_adjust.exit.if.end27_crit_edge ]
  %cross4MB = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 29, i32 2
  %47 = ptrtoint ptr %cross4MB to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cross4MB, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool29.not = icmp ne i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194305, i32 %memlen.0)
  %cmp30 = icmp ult i32 %memlen.0, 4194305
  %or.cond = select i1 %tobool29.not, i1 true, i1 %cmp30
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp32 = icmp eq i32 %1, 24
  %or.cond244 = select i1 %or.cond, i1 true, i1 %cmp32
  br i1 %or.cond244, label %if.end52thread-pre-split, label %if.else

if.else:                                          ; preds = %if.end27
  %div36242 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul)
  %tobool37.not245 = icmp ult i32 %mul, 8
  br i1 %tobool37.not245, label %if.else.while.end41_crit_edge, label %if.else.while.cond38.preheader_crit_edge

if.else.while.cond38.preheader_crit_edge:         ; preds = %if.else
  br label %while.cond38.preheader

if.else.while.end41_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end41

while.cond.loopexit:                              ; preds = %while.cond38
  %tobool37.not = icmp eq i32 %m2.1, 0
  br i1 %tobool37.not, label %while.cond.loopexit.while.end41_crit_edge, label %while.cond.loopexit.while.cond38.preheader_crit_edge

while.cond.loopexit.while.cond38.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond38.preheader

while.cond.loopexit.while.end41_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end41

while.cond38.preheader:                           ; preds = %while.cond.loopexit.while.cond38.preheader_crit_edge, %if.else.while.cond38.preheader_crit_edge
  %m2.0247 = phi i32 [ %m1.0246, %while.cond.loopexit.while.cond38.preheader_crit_edge ], [ 4096, %if.else.while.cond38.preheader_crit_edge ]
  %m1.0246 = phi i32 [ %m2.1, %while.cond.loopexit.while.cond38.preheader_crit_edge ], [ %div36242, %if.else.while.cond38.preheader_crit_edge ]
  br label %while.cond38

while.cond38:                                     ; preds = %while.cond38.while.cond38_crit_edge, %while.cond38.preheader
  %m2.1 = phi i32 [ %sub, %while.cond38.while.cond38_crit_edge ], [ %m2.0247, %while.cond38.preheader ]
  %cmp39.not = icmp ult i32 %m2.1, %m1.0246
  %sub = sub i32 %m2.1, %m1.0246
  br i1 %cmp39.not, label %while.cond.loopexit, label %while.cond38.while.cond38_crit_edge

while.cond38.while.cond38_crit_edge:              ; preds = %while.cond38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond38

while.end41:                                      ; preds = %while.cond.loopexit.while.end41_crit_edge, %if.else.while.end41_crit_edge
  %m2.0.lcssa = phi i32 [ 4096, %if.else.while.end41_crit_edge ], [ %m1.0246, %while.cond.loopexit.while.end41_crit_edge ]
  %mul42 = shl i32 %div36242, 12
  %div43 = udiv i32 %mul42, %m2.0.lcssa
  %rem = urem i32 4194304, %div43
  %49 = ptrtoint ptr %ydstorg to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %rem, ptr %ydstorg, align 4
  %sub44 = sub i32 %9, %rem
  %div45 = udiv i32 %sub44, %div36242
  %50 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div45)
  %cmp47 = icmp ugt i32 %51, %div45
  br i1 %cmp47, label %if.then48, label %while.end41.if.end52_crit_edge

while.end41.if.end52_crit_edge:                   ; preds = %while.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then48:                                        ; preds = %while.end41
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div45, ptr %yres_virtual, align 4
  br label %if.end52

if.end52thread-pre-split:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %yres_virtual, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52thread-pre-split, %if.then48, %while.end41.if.end52_crit_edge
  %54 = phi i32 [ %.pr, %if.end52thread-pre-split ], [ %51, %while.end41.if.end52_crit_edge ], [ %div45, %if.then48 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %54)
  %cmp54 = icmp ugt i32 %54, 32767
  br i1 %cmp54, label %if.then55, label %if.end52.if.end57_crit_edge

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 32767, ptr %yres_virtual, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end52.if.end57_crit_edge
  %56 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %yres_virtual, align 4
  %58 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp60 = icmp ult i32 %57, %59
  br i1 %cmp60, label %if.then61, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %yres, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57.if.end64_crit_edge
  %61 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xres_virtual, align 4
  %63 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp67 = icmp ult i32 %62, %64
  br i1 %cmp67, label %if.then68, label %if.end64.if.end71_crit_edge

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %var, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end64.if.end71_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %66 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xoffset, align 4
  %68 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %var, align 4
  %add = add i32 %69, %67
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp74 = icmp ugt i32 %add, %62
  br i1 %cmp74, label %if.then75, label %if.end71.if.end80_crit_edge

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %sub78 = sub i32 %62, %69
  %70 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub78, ptr %xoffset, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end71.if.end80_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %71 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %yoffset, align 4
  %73 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %yres, align 4
  %add82 = add i32 %74, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %57)
  %cmp84 = icmp ugt i32 %add82, %57
  br i1 %cmp84, label %if.then85, label %if.end80.if.end90_crit_edge

if.end80.if.end90_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  %sub88 = sub i32 %57, %74
  %75 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub88, ptr %yoffset, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end80.if.end90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp91 = icmp eq i32 %1, 16
  br i1 %cmp91, label %land.lhs.true92, label %if.end90.if.end95_crit_edge

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.lhs.true92:                                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %76 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %77)
  %cmp93 = icmp eq i32 %77, 5
  %spec.select = select i1 %cmp93, i32 15, i32 16
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true92, %if.end90.if.end95_crit_edge
  %bpp.0 = phi i32 [ %1, %if.end90.if.end95_crit_edge ], [ %spec.select, %land.lhs.true92 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end95
  %rgbt.0 = phi ptr [ @matroxfb_decode_var.table, %if.end95 ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %78 = ptrtoint ptr %rgbt.0 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rgbt.0, align 1
  %conv = zext i8 %79 to i32
  %cmp97 = icmp ugt i32 %bpp.0, %conv
  %incdec.ptr = getelementptr %struct.RGBT, ptr %rgbt.0, i32 1
  br i1 %cmp97, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %red = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 1
  %80 = ptrtoint ptr %red to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %red, align 1
  %conv99 = zext i8 %81 to i32
  %red100 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %82 = ptrtoint ptr %red100 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv99, ptr %red100, align 4
  %length103 = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %length103 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %length103, align 1
  %conv104 = zext i8 %84 to i32
  %length106 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %85 = ptrtoint ptr %length106 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv104, ptr %length106, align 4
  %green107 = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 2
  %86 = ptrtoint ptr %green107 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %green107, align 1
  %conv109 = zext i8 %87 to i32
  %green110 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %88 = ptrtoint ptr %green110 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv109, ptr %green110, align 4
  %length113 = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %length113 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %length113, align 1
  %conv114 = zext i8 %90 to i32
  %length116 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %length116 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv114, ptr %length116, align 4
  %blue = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 3
  %92 = ptrtoint ptr %blue to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %blue, align 1
  %conv118 = zext i8 %93 to i32
  %blue119 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %94 = ptrtoint ptr %blue119 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv118, ptr %blue119, align 4
  %length122 = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %length122 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %length122, align 1
  %conv123 = zext i8 %96 to i32
  %length125 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %97 = ptrtoint ptr %length125 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv123, ptr %length125, align 4
  %transp = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 4
  %98 = ptrtoint ptr %transp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %transp, align 1
  %conv127 = zext i8 %99 to i32
  %transp128 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %100 = ptrtoint ptr %transp128 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv127, ptr %transp128, align 4
  %length131 = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 4, i32 1
  %101 = ptrtoint ptr %length131 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %length131, align 1
  %conv132 = zext i8 %102 to i32
  %length134 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %103 = ptrtoint ptr %length134 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv132, ptr %length134, align 4
  %visual135 = getelementptr inbounds %struct.RGBT, ptr %rgbt.0, i32 0, i32 5
  %104 = ptrtoint ptr %visual135 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %visual135, align 1
  %conv136 = sext i8 %105 to i32
  %106 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv136, ptr %visual, align 4
  %107 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %108)
  %cond.i = icmp eq i32 %108, 8
  %spec.select.i = select i1 %cond.i, i32 256, i32 16
  %109 = ptrtoint ptr %video_cmap_len to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %spec.select.i, ptr %video_cmap_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_var2my(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_crtc2(ptr nocapture noundef readonly %minfo, i32 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 12, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %land.lhs.true

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %bits_per_pixel4 = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true5:                                   ; preds = %land.lhs.true
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  %xres_virtual10 = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %xres_virtual10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xres_virtual10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp11 = icmp eq i32 %7, %9
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true5.if.end38_crit_edge

land.lhs.true5.if.end38_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true12:                                  ; preds = %land.lhs.true5
  %length = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 9, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  %length18 = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 6, i32 9, i32 1
  %12 = ptrtoint ptr %length18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp19 = icmp eq i32 %11, %13
  br i1 %cmp19, label %if.then, label %land.lhs.true12.if.end38_crit_edge

land.lhs.true12.if.end38_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then:                                          ; preds = %land.lhs.true12
  %14 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %3, label %if.then.if.end38_crit_edge [
    i32 16, label %if.then.sw.bb_crit_edge
    i32 32, label %if.then.sw.bb_crit_edge61
  ]

if.then.sw.bb_crit_edge61:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge61
  %mul = shl i32 %pos, 3
  %interlaced = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool23.not = icmp sgt i8 %bf.load, -1
  %vbase36 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %vbase36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %vbase36, align 4
  %17 = inttoptr i32 %.unpack to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %18 = tail call i32 @llvm.bswap.i32(i32 %mul) #13
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %17, i32 15404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #13, !srcloc !375
  %19 = ptrtoint ptr %xres_virtual10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xres_virtual10, align 4
  %21 = ptrtoint ptr %bits_per_pixel4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits_per_pixel4, align 4
  %mul33 = mul i32 %22, %20
  %div57 = lshr i32 %mul33, 3
  %add = add i32 %div57, %mul
  %23 = ptrtoint ptr %vbase36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack58 = load i32, ptr %vbase36, align 4
  %24 = inttoptr i32 %.unpack58 to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  tail call void @arm_heavy_mb() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %add) #13
  %add.ptr.i59 = getelementptr i8, ptr %24, i32 15400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %25) #13, !srcloc !375
  br label %if.end38

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i60 = getelementptr i8, ptr %17, i32 15400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %18) #13, !srcloc !375
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then24, %if.then.if.end38_crit_edge, %land.lhs.true12.if.end38_crit_edge, %land.lhs.true5.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matrox_cfbX_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @matroxfb_setup(ptr noundef %options) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call2 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.81) #13
  %cmp.not3 = icmp eq ptr %call2, null
  br i1 %cmp.not3, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call4 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call2, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(5) @.str.82, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %call4, i32 4
  %call8 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #13
  store i32 %call8, ptr @dev, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call9 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(7) @.str.83, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else22

if.then11:                                        ; preds = %if.else
  %add.ptr12 = getelementptr i8, ptr %call4, i32 6
  %call13 = call i32 @simple_strtoul(ptr noundef %add.ptr12, ptr noundef null, i32 noundef 0) #13
  %5 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call13, label %do.end [
    i32 0, label %sw.bb
    i32 4, label %sw.bb14
    i32 8, label %sw.bb15
    i32 15, label %sw.bb16
    i32 16, label %sw.bb17
    i32 24, label %sw.bb18
    i32 32, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 7, ptr @depth, align 4
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 5, ptr @depth, align 4
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 1, ptr @depth, align 4
  br label %while.cond.backedge

sw.bb16:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 2, ptr @depth, align 4
  br label %while.cond.backedge

sw.bb17:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 3, ptr @depth, align 4
  br label %while.cond.backedge

sw.bb18:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 6, ptr @depth, align 4
  br label %while.cond.backedge

sw.bb19:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  store i32 4, ptr @depth, align 4
  br label %while.cond.backedge

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #16
  br label %while.cond.backedge

if.else22:                                        ; preds = %if.else
  %call23 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.86, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr26 = getelementptr i8, ptr %call4, i32 5
  %call27 = call i32 @simple_strtoul(ptr noundef %add.ptr26, ptr noundef null, i32 noundef 0) #13
  store i32 %call27, ptr @xres, align 4
  br label %while.cond.backedge

if.else28:                                        ; preds = %if.else22
  %call29 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.87, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr32 = getelementptr i8, ptr %call4, i32 5
  %call33 = call i32 @simple_strtoul(ptr noundef %add.ptr32, ptr noundef null, i32 noundef 0) #13
  store i32 %call33, ptr @yres, align 4
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else28
  %call35 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(7) @.str.88, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr38 = getelementptr i8, ptr %call4, i32 6
  %call39 = call i32 @simple_strtoul(ptr noundef %add.ptr38, ptr noundef null, i32 noundef 0) #13
  store i32 %call39, ptr @vslen, align 4
  br label %while.cond.backedge

if.else40:                                        ; preds = %if.else34
  %call41 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(7) @.str.89, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr44 = getelementptr i8, ptr %call4, i32 6
  %call45 = call i32 @simple_strtoul(ptr noundef %add.ptr44, ptr noundef null, i32 noundef 0) #13
  store i32 %call45, ptr @hslen, align 4
  br label %while.cond.backedge

if.else46:                                        ; preds = %if.else40
  %call47 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.90, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then49, label %if.else52

if.then49:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr50 = getelementptr i8, ptr %call4, i32 5
  %call51 = call i32 @simple_strtoul(ptr noundef %add.ptr50, ptr noundef null, i32 noundef 0) #13
  store i32 %call51, ptr @left, align 4
  br label %while.cond.backedge

if.else52:                                        ; preds = %if.else46
  %call53 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(7) @.str.91, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr56 = getelementptr i8, ptr %call4, i32 6
  %call57 = call i32 @simple_strtoul(ptr noundef %add.ptr56, ptr noundef null, i32 noundef 0) #13
  store i32 %call57, ptr @right, align 4
  br label %while.cond.backedge

if.else58:                                        ; preds = %if.else52
  %call59 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(7) @.str.92, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr62 = getelementptr i8, ptr %call4, i32 6
  %call63 = call i32 @simple_strtoul(ptr noundef %add.ptr62, ptr noundef null, i32 noundef 0) #13
  store i32 %call63, ptr @upper, align 4
  br label %while.cond.backedge

if.else64:                                        ; preds = %if.else58
  %call65 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(7) @.str.93, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.else70

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr68 = getelementptr i8, ptr %call4, i32 6
  %call69 = call i32 @simple_strtoul(ptr noundef %add.ptr68, ptr noundef null, i32 noundef 0) #13
  store i32 %call69, ptr @lower, align 4
  br label %while.cond.backedge

if.else70:                                        ; preds = %if.else64
  %call71 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(10) @.str.94, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %if.else76

if.then73:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr74 = getelementptr i8, ptr %call4, i32 9
  %call75 = call i32 @simple_strtoul(ptr noundef %add.ptr74, ptr noundef null, i32 noundef 0) #13
  store i32 %call75, ptr @pixclock, align 4
  br label %while.cond.backedge

if.else76:                                        ; preds = %if.else70
  %call77 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.95, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.else82

if.then79:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr80 = getelementptr i8, ptr %call4, i32 5
  %call81 = call i32 @simple_strtoul(ptr noundef %add.ptr80, ptr noundef null, i32 noundef 0) #13
  store i32 %call81, ptr @sync, align 4
  br label %while.cond.backedge

if.else82:                                        ; preds = %if.else76
  %call83 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.96, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then85, label %if.else88

if.then85:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr86 = getelementptr i8, ptr %call4, i32 5
  %call87 = call i32 @simple_strtoul(ptr noundef %add.ptr86, ptr noundef null, i32 noundef 0) #13
  store i32 %call87, ptr @vesa, align 4
  br label %while.cond.backedge

if.else88:                                        ; preds = %if.else82
  %call89 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(8) @.str.97, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr92 = getelementptr i8, ptr %call4, i32 7
  %call93 = call i32 @simple_strtoul(ptr noundef %add.ptr92, ptr noundef null, i32 noundef 0) #13
  store i32 %call93, ptr @maxclk, align 4
  br label %while.cond.backedge

if.else94:                                        ; preds = %if.else88
  %call95 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(4) @.str.98, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.then97, label %if.else100

if.then97:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr98 = getelementptr i8, ptr %call4, i32 3
  %call99 = call i32 @simple_strtoul(ptr noundef %add.ptr98, ptr noundef null, i32 noundef 0) #13
  store i32 %call99, ptr @fh, align 4
  br label %while.cond.backedge

if.else100:                                       ; preds = %if.else94
  %call101 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(4) @.str.99, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then103, label %if.else106

if.then103:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr104 = getelementptr i8, ptr %call4, i32 3
  %call105 = call i32 @simple_strtoul(ptr noundef %add.ptr104, ptr noundef null, i32 noundef 0) #13
  store i32 %call105, ptr @fv, align 4
  br label %while.cond.backedge

if.else106:                                       ; preds = %if.else100
  %call107 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(5) @.str.100, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then109, label %if.else112

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr110 = getelementptr i8, ptr %call4, i32 4
  %call111 = call i32 @simple_strtoul(ptr noundef %add.ptr110, ptr noundef null, i32 noundef 0) #13
  store i32 %call111, ptr @mem, align 4
  br label %while.cond.backedge

if.else112:                                       ; preds = %if.else106
  %call113 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.101, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then115, label %if.else118

if.then115:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr116 = getelementptr i8, ptr %call4, i32 5
  %call117 = call i32 @strlcpy(ptr noundef nonnull @videomode, ptr noundef %add.ptr116, i32 noundef 64) #13
  br label %while.cond.backedge

if.else118:                                       ; preds = %if.else112
  %call119 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(9) @.str.102, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.else124

if.then121:                                       ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr122 = getelementptr i8, ptr %call4, i32 8
  %call123 = call i32 @strlcpy(ptr noundef nonnull @outputs, ptr noundef %add.ptr122, i32 noundef 8) #13
  br label %while.cond.backedge

if.else124:                                       ; preds = %if.else118
  %call125 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(5) @.str.103, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then127, label %if.else130

if.then127:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr128 = getelementptr i8, ptr %call4, i32 4
  %call129 = call i32 @simple_strtoul(ptr noundef %add.ptr128, ptr noundef null, i32 noundef 0) #13
  store i32 %call129, ptr @dfp_type, align 4
  store i32 1, ptr @dfp, align 4
  br label %while.cond.backedge

if.else130:                                       ; preds = %if.else124
  %call131 = call i32 @strcmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(9) @.str.104) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then133, label %if.else134

if.then133:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @disabled, align 4
  br label %while.cond.backedge

if.else134:                                       ; preds = %if.else130
  %call135 = call i32 @strcmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(8) @.str.105) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #15
  store i1 false, ptr @disabled, align 4
  br label %while.cond.backedge

if.else138:                                       ; preds = %if.else134
  %call139 = call i32 @strcmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.106) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @sgram, align 4
  br label %while.cond.backedge

if.else142:                                       ; preds = %if.else138
  %call143 = call i32 @strcmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(6) @.str.107) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #15
  store i1 false, ptr @sgram, align 4
  br label %while.cond.backedge

if.else146:                                       ; preds = %if.else142
  %call147 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(9) @.str.108, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then149, label %if.else152

if.then149:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr150 = getelementptr i8, ptr %call4, i32 8
  %call151 = call i32 @simple_strtoul(ptr noundef %add.ptr150, ptr noundef null, i32 noundef 0) #13
  store i32 %call151, ptr @memtype, align 4
  br label %while.cond.backedge

if.else152:                                       ; preds = %if.else146
  %call153 = call i32 @strncmp(ptr noundef nonnull %call4, ptr noundef nonnull dereferenceable(3) @.str.109, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  %spec.select.idx = select i1 %tobool154.not, i32 2, i32 0
  %spec.select = getelementptr i8, ptr %call4, i32 %spec.select.idx
  %not.tobool154.not = xor i1 %tobool154.not, true
  %spec.select1 = zext i1 %not.tobool154.not to i32
  %call158 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(8) @.str.110) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.else152.while.cond.backedge_crit_edge, label %if.else161

if.else152.while.cond.backedge_crit_edge:         ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.else161:                                       ; preds = %if.else152
  %call162 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(6) @.str.111) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.then164, label %if.else166

if.then164:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #15
  %lnot.ext = zext i1 %tobool154.not to i32
  store i32 %lnot.ext, ptr @noaccel, align 4
  br label %while.cond.backedge

if.else166:                                       ; preds = %if.else161
  %call167 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(4) @.str.112) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.then169, label %if.else173

if.then169:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #15
  %lnot.ext172 = zext i1 %tobool154.not to i32
  store i32 %lnot.ext172, ptr @nopan, align 4
  br label %while.cond.backedge

if.else173:                                       ; preds = %if.else166
  %call174 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(9) @.str.113) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then176, label %if.else180

if.then176:                                       ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #15
  %lnot.ext179 = zext i1 %tobool154.not to i32
  store i32 %lnot.ext179, ptr @no_pci_retry, align 4
  br label %while.cond.backedge

if.else180:                                       ; preds = %if.else173
  %call181 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(4) @.str.114) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then183, label %if.else187

if.then183:                                       ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #15
  %lnot.ext186 = zext i1 %tobool154.not to i32
  store i32 %lnot.ext186, ptr @novga, align 4
  br label %while.cond.backedge

if.else187:                                       ; preds = %if.else180
  %call188 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(5) @.str.115) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.then190, label %if.else194

if.then190:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #15
  %lnot.ext193 = zext i1 %tobool154.not to i32
  store i32 %lnot.ext193, ptr @nobios, align 4
  br label %while.cond.backedge

if.else194:                                       ; preds = %if.else187
  %call195 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(5) @.str.116) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.then197, label %if.else201

if.then197:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #15
  %lnot.ext200 = zext i1 %tobool154.not to i32
  store i32 %lnot.ext200, ptr @noinit, align 4
  br label %while.cond.backedge

if.else201:                                       ; preds = %if.else194
  %call202 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(5) @.str.117) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.then204, label %if.else205

if.then204:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %spec.select1, ptr @mtrr, align 4
  br label %while.cond.backedge

if.else205:                                       ; preds = %if.else201
  %call206 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(6) @.str.118) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.then208, label %if.else209

if.then208:                                       ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %spec.select1, ptr @inv24, align 4
  br label %while.cond.backedge

if.else209:                                       ; preds = %if.else205
  %call210 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(9) @.str.119) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then212, label %if.else213

if.then212:                                       ; preds = %if.else209
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %spec.select1, ptr @cross4MB, align 4
  br label %while.cond.backedge

if.else213:                                       ; preds = %if.else209
  %call214 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(10) @.str.120) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.then216, label %if.else217

if.then216:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %spec.select1, ptr @grayscale, align 4
  br label %while.cond.backedge

if.else217:                                       ; preds = %if.else213
  %call218 = call i32 @strcmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(4) @.str.121) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.then220, label %if.else221

if.then220:                                       ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %spec.select1, ptr @dfp, align 4
  br label %while.cond.backedge

if.else221:                                       ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #15
  %call222 = call i32 @strlcpy(ptr noundef nonnull @videomode, ptr noundef %spec.select, i32 noundef 64) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else221, %if.then220, %if.then216, %if.then212, %if.then208, %if.then204, %if.then197, %if.then190, %if.then183, %if.then176, %if.then169, %if.then164, %if.else152.while.cond.backedge_crit_edge, %if.then149, %if.then145, %if.then141, %if.then137, %if.then133, %if.then127, %if.then121, %if.then115, %if.then109, %if.then103, %if.then97, %if.then91, %if.then85, %if.then79, %if.then73, %if.then67, %if.then61, %if.then55, %if.then49, %if.then43, %if.then37, %if.then31, %if.then25, %do.end, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.81) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @matrox_init() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @matroxfb_init_params() #17
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @matroxfb_driver, ptr noundef null, ptr noundef nonnull @.str.122) #13
  store i32 -1, ptr @dev, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @matroxfb_init_params() unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %0)
  %cmp = icmp ult i32 %0, 1000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul nuw nsw i32 %0, 1000
  store i32 %mul, ptr @fh, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @maxclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp1 = icmp ult i32 %1, 1000
  br i1 %cmp1, label %if.end4.thread, label %if.end4

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul3 = mul nuw nsw i32 %1, 1000
  br label %if.then6

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp5 = icmp ult i32 %1, 1000000
  br i1 %cmp5, label %if.end4.if.then6_crit_edge, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end4.if.then6_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %if.end4.if.then6_crit_edge, %if.end4.thread
  %2 = phi i32 [ %mul3, %if.end4.thread ], [ %1, %if.end4.if.then6_crit_edge ]
  %mul7 = mul nuw nsw i32 %2, 1000
  store i32 %mul7, ptr @maxclk, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %3 = load i32, ptr @vesa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp9.not = icmp eq i32 %3, -1
  br i1 %cmp9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %3, 7679
  store i32 %and, ptr @vesa, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %4 = load i32, ptr @vesamap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not80 = icmp eq i32 %4, 0
  br i1 %tobool.not80, label %if.end11.do.end_crit_edge, label %for.body.lr.ph

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body.lr.ph:                                   ; preds = %if.end11
  %5 = load i32, ptr @vesa, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %4, %for.body.lr.ph ], [ %8, %for.inc.for.body_crit_edge ]
  %storemerge81 = phi ptr [ @vesamap, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp13 = icmp eq i32 %6, %5
  br i1 %cmp13, label %for.body.if.end19_crit_edge, label %for.inc

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.anon.111, ptr %storemerge81, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end11.do.end_crit_edge
  %storemerge.lcssa = phi ptr [ @vesamap, %if.end11.do.end_crit_edge ], [ %incdec.ptr, %for.inc.do.end_crit_edge ]
  store ptr %storemerge.lcssa, ptr @RSptr, align 4
  %9 = load i32, ptr @vesa, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %9) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %for.body.if.end19_crit_edge
  %storemerge = phi ptr [ @vesamap, %do.end ], [ %storemerge81, %for.body.if.end19_crit_edge ]
  store ptr %storemerge, ptr @RSptr, align 4
  %info = getelementptr inbounds %struct.anon.111, ptr %storemerge, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %and20 = and i32 %11, 15
  %sub = add nsw i32 %and20, -1
  %12 = load i32, ptr @left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp21 = icmp eq i32 %12, -1
  br i1 %cmp21, label %if.then22, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %left = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 2
  %13 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %left, align 4
  store i32 %14, ptr @left, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %15 = load i32, ptr @xres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not = icmp eq i32 %15, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx26 = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 4
  store i32 %17, ptr @xres, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %18 = load i32, ptr @right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp28 = icmp eq i32 %18, -1
  br i1 %cmp28, label %if.then29, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %right = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 3
  %19 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %right, align 4
  store i32 %20, ptr @right, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  %21 = load i32, ptr @hslen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool32.not = icmp eq i32 %21, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %hslen = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 6
  %22 = ptrtoint ptr %hslen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hslen, align 4
  store i32 %23, ptr @hslen, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %24 = load i32, ptr @upper, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp36 = icmp eq i32 %24, -1
  br i1 %cmp36, label %if.then37, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %upper = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 4
  %25 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %upper, align 4
  store i32 %26, ptr @upper, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %27 = load i32, ptr @yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool40.not = icmp eq i32 %27, 0
  br i1 %tobool40.not, label %if.then41, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %yres = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 1
  %28 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %yres, align 4
  store i32 %29, ptr @yres, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge
  %30 = load i32, ptr @lower, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp44 = icmp eq i32 %30, -1
  br i1 %cmp44, label %if.then45, label %if.end43.if.end47_crit_edge

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %lower = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 5
  %31 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower, align 4
  store i32 %32, ptr @lower, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end43.if.end47_crit_edge
  %33 = load i32, ptr @vslen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool48.not = icmp eq i32 %33, 0
  br i1 %tobool48.not, label %if.then49, label %if.end47.if.end51_crit_edge

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %vslen = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 7
  %34 = ptrtoint ptr %vslen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vslen, align 4
  store i32 %35, ptr @vslen, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47.if.end51_crit_edge
  %36 = load i32, ptr @fv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool52.not = icmp eq i32 %36, 0
  br i1 %tobool52.not, label %lor.lhs.false, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

lor.lhs.false:                                    ; preds = %if.end51
  %37 = load i32, ptr @fh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool53.not = icmp eq i32 %37, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %lor.lhs.false.if.end60_crit_edge

lor.lhs.false.if.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %38 = load i32, ptr @maxclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool55.not = icmp eq i32 %38, 0
  br i1 %tobool55.not, label %lor.lhs.false56, label %lor.lhs.false54.if.end60_crit_edge

lor.lhs.false54.if.end60_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %39 = load i32, ptr @pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool57.not = icmp eq i32 %39, 0
  br i1 %tobool57.not, label %if.then58, label %lor.lhs.false56.if.end60_crit_edge

lor.lhs.false56.if.end60_crit_edge:               ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then58:                                        ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #15
  %vfreq = getelementptr [15 x %struct.anon.112], ptr @timmings, i32 0, i32 %sub, i32 8
  %40 = ptrtoint ptr %vfreq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vfreq, align 4
  store i32 %41, ptr @fv, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %lor.lhs.false56.if.end60_crit_edge, %lor.lhs.false54.if.end60_crit_edge, %lor.lhs.false.if.end60_crit_edge, %if.end51.if.end60_crit_edge
  %42 = load i32, ptr @depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp61 = icmp eq i32 %42, -1
  br i1 %cmp61, label %if.then62, label %if.end60.if.end65_crit_edge

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i32 %11, 8
  %and64 = and i32 %shr, 15
  store i32 %and64, ptr @depth, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end60.if.end65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !186, !187, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !269, !270, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !356, !357, !358, !360, !362}
!llvm.named.register.sp = !{!364}
!llvm.module.flags = !{!365, !366, !367, !368, !369, !370, !371, !372}
!llvm.ident = !{!373}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 237, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 249, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @matroxfb_enable_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @matroxfb_enable_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_matroxfb_base__305_2604_matroxfb_init6, !9, !"__initcall__kmod_matroxfb_base__305_2604_matroxfb_init6", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2604, i32 1}
!10 = !{ptr @__exitcall_matrox_done, !11, !"__exitcall_matrox_done", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2605, i32 1}
!12 = !{ptr @__ksymtab_matroxfb_register_driver, !13, !"__ksymtab_matroxfb_register_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2606, i32 1}
!14 = !{ptr @__ksymtab_matroxfb_unregister_driver, !15, !"__ksymtab_matroxfb_unregister_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2607, i32 1}
!16 = !{ptr @__ksymtab_matroxfb_wait_for_sync, !17, !"__ksymtab_matroxfb_wait_for_sync", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2608, i32 1}
!18 = !{ptr @__ksymtab_matroxfb_enable_irq, !19, !"__ksymtab_matroxfb_enable_irq", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2609, i32 1}
!20 = !{ptr @matroxfb_driver_list, !21, !"matroxfb_driver_list", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1965, i32 8}
!22 = !{ptr @matroxfb_list, !23, !"matroxfb_list", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1964, i32 8}
!24 = !{ptr @matroxfb_driver, !25, !"matroxfb_driver", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2164, i32 26}
!26 = !{ptr @matroxfb_devices, !27, !"matroxfb_devices", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2128, i32 35}
!28 = !{ptr @matroxfb_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2102, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @matroxfb_probe.__key.5, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2103, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @matroxfb_probe.__key.7, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2104, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @matroxfb_probe.__key.9, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2105, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @matroxfb_probe.__key.11, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2106, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @matroxfb_probe.__key.13, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2108, i32 2}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @matroxfb_probe.__key.15, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2109, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1435, i32 3}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1442, i32 3}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1449, i32 3}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1458, i32 3}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1465, i32 3}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1472, i32 3}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1479, i32 3}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1488, i32 3}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1495, i32 3}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1502, i32 3}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1509, i32 3}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1516, i32 3}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1523, i32 3}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1530, i32 3}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1537, i32 3}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1551, i32 3}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1558, i32 3}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1565, i32 3}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1572, i32 3}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1579, i32 3}
!89 = !{ptr @dev_list, !90, !"dev_list", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1427, i32 5}
!91 = !{ptr @vbMillennium, !92, !"vbMillennium", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1336, i32 27}
!93 = !{ptr @vbMillennium2, !94, !"vbMillennium2", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1343, i32 27}
!95 = !{ptr @vbMillennium2A, !96, !"vbMillennium2A", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1350, i32 27}
!97 = !{ptr @vbMystique, !98, !"vbMystique", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1358, i32 27}
!99 = !{ptr @vbG100, !100, !"vbG100", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1366, i32 27}
!101 = !{ptr @vbG200, !102, !"vbG200", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1373, i32 27}
!103 = !{ptr @vbG200eW, !104, !"vbG200eW", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1379, i32 27}
!105 = !{ptr @vbG400, !106, !"vbG400", i1 false, i1 false}
!106 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1387, i32 27}
!107 = !{ptr @dev, !108, !"dev", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1255, i32 12}
!109 = !{ptr @memtype, !110, !"memtype", i1 false, i1 false}
!110 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1273, i32 12}
!111 = !{ptr @noinit, !112, !"noinit", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1250, i32 12}
!113 = !{ptr @novga, !114, !"novga", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1248, i32 12}
!115 = !{ptr @nobios, !116, !"nobios", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1249, i32 12}
!117 = !{ptr @no_pci_retry, !118, !"no_pci_retry", i1 false, i1 false}
!118 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1247, i32 12}
!119 = !{ptr @inv24, !120, !"inv24", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1242, i32 12}
!121 = distinct !{null, !122, !"option_precise_width", i1 false, i1 false}
!122 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1241, i32 12}
!123 = distinct !{null, !124, !"sgram", i1 false, i1 false}
!124 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1252, i32 12}
!125 = !{ptr @cross4MB, !126, !"cross4MB", i1 false, i1 false}
!126 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1243, i32 12}
!127 = !{ptr @initMatrox2.intel_82437, !128, !"intel_82437", i1 false, i1 false}
!128 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1640, i32 36}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1654, i32 2}
!131 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @initMatrox2._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @initMatrox2._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1703, i32 3}
!136 = !{ptr @initMatrox2._entry.39, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @initMatrox2._entry_ptr.41, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1707, i32 3}
!140 = !{ptr @initMatrox2._entry.42, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @initMatrox2._entry_ptr.44, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1711, i32 7}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1714, i32 7}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1728, i32 3}
!148 = !{ptr @initMatrox2._entry.47, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @initMatrox2._entry_ptr.49, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1736, i32 3}
!152 = !{ptr @initMatrox2._entry.50, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @initMatrox2._entry_ptr.52, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1752, i32 5}
!156 = !{ptr @initMatrox2._entry.53, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @initMatrox2._entry_ptr.55, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1774, i32 3}
!160 = !{ptr @initMatrox2._entry.56, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @initMatrox2._entry_ptr.58, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1788, i32 3}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1925, i32 2}
!166 = !{ptr @initMatrox2._entry.60, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @initMatrox2._entry_ptr.62, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1928, i32 2}
!170 = !{ptr @initMatrox2._entry.63, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @initMatrox2._entry_ptr.65, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1938, i32 2}
!174 = !{ptr @initMatrox2._entry.66, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @initMatrox2._entry_ptr.68, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1943, i32 3}
!178 = !{ptr @initMatrox2._entry.69, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @initMatrox2._entry_ptr.71, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @vesafb_defined, !181, !"vesafb_defined", i1 false, i1 false}
!181 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 135, i32 33}
!182 = !{ptr @dfp_type, !183, !"dfp_type", i1 false, i1 false}
!183 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1272, i32 12}
!184 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1625, i32 4}
!186 = !{ptr @.str.73, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @setDefaultOutputs._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @setDefaultOutputs._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @dfp, !190, !"dfp", i1 false, i1 false}
!190 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1271, i32 12}
!191 = !{ptr @outputs, !192, !"outputs", i1 false, i1 false}
!192 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1274, i32 13}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 871, i32 11}
!195 = !{ptr @panellink_output, !196, !"panellink_output", i1 false, i1 false}
!196 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 870, i32 29}
!197 = !{ptr @mem, !198, !"mem", i1 false, i1 false}
!198 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1240, i32 21}
!199 = !{ptr @mtrr, !200, !"mtrr", i1 false, i1 false}
!200 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1253, i32 12}
!201 = !{ptr @fh, !202, !"fh", i1 false, i1 false}
!202 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1269, i32 21}
!203 = !{ptr @fv, !204, !"fv", i1 false, i1 false}
!204 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1268, i32 21}
!205 = !{ptr @colors, !206, !"colors", i1 false, i1 false}
!206 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1228, i32 84}
!207 = !{ptr @depth, !208, !"depth", i1 false, i1 false}
!208 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1257, i32 12}
!209 = !{ptr @grayscale, !210, !"grayscale", i1 false, i1 false}
!210 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1254, i32 12}
!211 = !{ptr @noaccel, !212, !"noaccel", i1 false, i1 false}
!212 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1245, i32 12}
!213 = !{ptr @matroxfb_ops, !214, !"matroxfb_ops", i1 false, i1 false}
!214 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1202, i32 28}
!215 = !{ptr @matroxfb_decode_var.table, !216, !"table", i1 false, i1 false}
!216 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 543, i32 27}
!217 = !{ptr @.str.75, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1093, i32 20}
!219 = !{ptr @.str.76, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1094, i32 25}
!221 = distinct !{null, !222, !"__already_done", i1 false, i1 false}
!222 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!223 = distinct !{null, !222, !"<string literal>", i1 false, i1 false}
!224 = distinct !{null, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!226 = !{ptr @.str.79, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!228 = distinct !{null, !229, !"hotplug", i1 false, i1 false}
!229 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1596, i32 12}
!230 = !{ptr @videomode, !231, !"videomode", i1 false, i1 false}
!231 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1277, i32 13}
!232 = !{ptr @defaultmode, !233, !"defaultmode", i1 false, i1 false}
!233 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1590, i32 34}
!234 = !{ptr @hslen, !235, !"hslen", i1 false, i1 false}
!235 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1265, i32 21}
!236 = !{ptr @vslen, !237, !"vslen", i1 false, i1 false}
!237 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1262, i32 21}
!238 = !{ptr @left, !239, !"left", i1 false, i1 false}
!239 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1263, i32 21}
!240 = !{ptr @right, !241, !"right", i1 false, i1 false}
!241 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1264, i32 21}
!242 = !{ptr @upper, !243, !"upper", i1 false, i1 false}
!243 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1260, i32 21}
!244 = !{ptr @lower, !245, !"lower", i1 false, i1 false}
!245 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1261, i32 21}
!246 = !{ptr @xres, !247, !"xres", i1 false, i1 false}
!247 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1258, i32 21}
!248 = !{ptr @yres, !249, !"yres", i1 false, i1 false}
!249 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1259, i32 21}
!250 = !{ptr @sync, !251, !"sync", i1 false, i1 false}
!251 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1267, i32 12}
!252 = !{ptr @maxclk, !253, !"maxclk", i1 false, i1 false}
!253 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1270, i32 21}
!254 = !{ptr @pixclock, !255, !"pixclock", i1 false, i1 false}
!255 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1266, i32 21}
!256 = !{ptr @nopan, !257, !"nopan", i1 false, i1 false}
!257 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1246, i32 12}
!258 = !{ptr @.str.80, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 710, i32 17}
!260 = !{ptr @.str.81, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2336, i32 38}
!262 = !{ptr @.str.82, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2341, i32 26}
!264 = !{ptr @.str.83, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2343, i32 31}
!266 = !{ptr @.str.84, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2353, i32 6}
!268 = !{ptr @.str.85, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @matroxfb_setup._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @matroxfb_setup._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.86, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2355, i32 33}
!273 = !{ptr @.str.87, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2357, i32 31}
!275 = !{ptr @.str.88, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2359, i32 31}
!277 = !{ptr @.str.89, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2361, i32 31}
!279 = !{ptr @.str.90, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2363, i32 31}
!281 = !{ptr @.str.91, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2365, i32 31}
!283 = !{ptr @.str.92, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2367, i32 31}
!285 = !{ptr @.str.93, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2369, i32 31}
!287 = !{ptr @.str.94, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2371, i32 31}
!289 = !{ptr @.str.95, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2373, i32 31}
!291 = !{ptr @.str.96, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2375, i32 31}
!293 = !{ptr @.str.97, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2377, i32 31}
!295 = !{ptr @.str.98, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2379, i32 31}
!297 = !{ptr @.str.99, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2381, i32 31}
!299 = !{ptr @.str.100, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2383, i32 31}
!301 = !{ptr @.str.101, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2385, i32 31}
!303 = !{ptr @.str.102, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2387, i32 31}
!305 = !{ptr @.str.103, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2389, i32 31}
!307 = !{ptr @.str.104, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2416, i32 30}
!309 = !{ptr @.str.105, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2418, i32 30}
!311 = !{ptr @.str.106, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2420, i32 30}
!313 = !{ptr @.str.107, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2422, i32 30}
!315 = !{ptr @.str.108, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2424, i32 31}
!317 = !{ptr @.str.109, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2429, i32 27}
!319 = !{ptr @.str.110, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2433, i32 27}
!321 = !{ptr @.str.111, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2435, i32 31}
!323 = !{ptr @.str.112, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2437, i32 31}
!325 = !{ptr @.str.113, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2439, i32 31}
!327 = !{ptr @.str.114, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2441, i32 31}
!329 = !{ptr @.str.115, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2443, i32 31}
!331 = !{ptr @.str.116, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2445, i32 31}
!333 = !{ptr @.str.117, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2447, i32 31}
!335 = !{ptr @.str.118, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2449, i32 31}
!337 = !{ptr @.str.119, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2451, i32 31}
!339 = !{ptr @.str.120, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2453, i32 31}
!341 = !{ptr @.str.121, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2455, i32 31}
!343 = !{ptr @vesa, !344, !"vesa", i1 false, i1 false}
!344 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1256, i32 21}
!345 = distinct !{null, !346, !"inverse", i1 false, i1 false}
!346 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1251, i32 12}
!347 = distinct !{null, !348, !"disabled", i1 false, i1 false}
!348 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 1244, i32 12}
!349 = distinct !{null, !350, !"initialized", i1 false, i1 false}
!350 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2465, i32 23}
!351 = !{ptr @.str.122, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2313, i32 8}
!353 = !{ptr @.str.123, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2281, i32 3}
!355 = !{ptr @.str.124, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @matroxfb_init_params._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @matroxfb_init_params._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @vesamap, !359, !"vesamap", i1 false, i1 false}
!359 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2209, i32 65}
!360 = !{ptr @RSptr, !361, !"RSptr", i1 false, i1 false}
!361 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2209, i32 58}
!362 = !{ptr @timmings, !363, !"timmings", i1 false, i1 false}
!363 = !{!"../drivers/video/fbdev/matrox/matroxfb_base.c", i32 2190, i32 83}
!364 = !{!"sp"}
!365 = !{i32 1, !"wchar_size", i32 2}
!366 = !{i32 1, !"min_enum_size", i32 4}
!367 = !{i32 8, !"branch-target-enforcement", i32 0}
!368 = !{i32 8, !"sign-return-address", i32 0}
!369 = !{i32 8, !"sign-return-address-all", i32 0}
!370 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!371 = !{i32 7, !"uwtable", i32 1}
!372 = !{i32 7, !"frame-pointer", i32 2}
!373 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!374 = !{i64 2156308692}
!375 = !{i64 6306094}
!376 = !{i64 6306512}
!377 = !{i64 2156308309}
!378 = !{i64 6306292}
!379 = !{i64 2156306664}
!380 = !{i64 2156307483}
!381 = !{i64 6305474}
!382 = !{i64 2156307047}
!383 = !{i64 6305897}
!384 = !{!"auto-init"}
!385 = !{i64 5551661}
!386 = !{i64 5551858}
!387 = !{i64 2153037091}
!388 = !{i64 2156598523, i64 2156598803, i64 2156599137, i64 2156599471}
!389 = !{i64 2156579117, i64 2156579397, i64 2156579731, i64 2156580065}
!390 = !{i64 2153056787, i64 2153056812}
!391 = !{i64 2156566451, i64 2156566731, i64 2156567065, i64 2156567399}
!392 = !{i64 2153056106, i64 2153056131}
!393 = !{!"branch_weights", i32 2000, i32 1}
!394 = !{i64 2156588896, i64 2156589176, i64 2156589510, i64 2156589844}
