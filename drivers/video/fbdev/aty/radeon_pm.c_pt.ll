; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/aty/radeon_pm.c_pt.bc'
source_filename = "../drivers/video/fbdev/aty/radeon_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.radeonfb_info = type { ptr, %struct.radeon_regs, %struct.radeon_regs, [50 x i8], i32, i32, ptr, ptr, i32, ptr, ptr, i32, [16 x i32], [256 x %struct.anon.86], i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.panel_info, i32, ptr, ptr, i32, i32, ptr, i32, %struct.pll_info, i32, [100 x i32], i32, i32, i32, i32, i32, ptr, %struct.spinlock, %struct.timer_list, i32, [4 x %struct.radeon_i2c_chan] }
%struct.radeon_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.86 = type { i8, i8, i8, i8 }
%struct.panel_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }

@radeonfb_pci_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @radeonfb_pci_suspend, ptr @radeonfb_pci_resume, ptr @radeonfb_pci_freeze, ptr @radeonfb_pci_resume, ptr @radeonfb_pci_hibernate, ptr @radeonfb_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@radeonfb_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"radeonfb: Dynamic Clock Power Management enabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeonfb_pm_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/fbdev/aty/radeon_pm.c\00", [60 x i8] zeroinitializer }, align 32
@radeonfb_pm_init._entry_ptr = internal global ptr @radeonfb_pm_init._entry, section ".printk_index", align 4
@radeonfb_pm_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"radeonfb: Dynamic Clock Power Management disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@radeonfb_pm_init._entry_ptr.5 = internal global ptr @radeonfb_pm_init._entry.3, section ".printk_index", align 4
@radeonfb_pm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 2911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017radeonfb: skipping test for device workarounds\0A\00", [46 x i8] zeroinitializer }, align 32
@radeonfb_pm_init._entry_ptr.8 = internal global ptr @radeonfb_pm_init._entry.6, section ".printk_index", align 4
@radeonfb_pm_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 2917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017radeonfb: forcefully enabling D2 sleep mode\0A\00", [49 x i8] zeroinitializer }, align 32
@radeonfb_pm_init._entry_ptr.11 = internal global ptr @radeonfb_pm_init._entry.9, section ".printk_index", align 4
@radeonfb_pci_suspend_late._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 2624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017radeonfb (%s): suspending for event: %d...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"radeonfb_pci_suspend_late\00", [38 x i8] zeroinitializer }, align 32
@radeonfb_pci_suspend_late._entry_ptr = internal global ptr @radeonfb_pci_suspend_late._entry, section ".printk_index", align 4
@radeon_set_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 2551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017radeonfb (%s): switching to D2 state...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"radeon_set_suspend\00", [45 x i8] zeroinitializer }, align 32
@radeon_set_suspend._entry_ptr = internal global ptr @radeon_set_suspend._entry, section ".printk_index", align 4
@radeon_set_suspend._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 2597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017radeonfb (%s): switching to D0 state...\0A\00", [53 x i8] zeroinitializer }, align 32
@radeon_set_suspend._entry_ptr.18 = internal global ptr @radeon_set_suspend._entry.16, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@radeon_pm_full_reset_sdram.default_mrtable = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 556924978, i32 556929024, i32 -1590554624, i32 556929024, i32 -1, i32 556924978, i32 -1590558670, i32 556924978, i32 -1, i32 556929026, i32 -1590554622, i32 556929026, i32 -1, i32 556925234, i32 -1590558414, i32 556925234, i32 -1, i32 556924978, i32 -1590558670, i32 556924978, i32 -1, i32 825360434], [40 x i8] zeroinitializer }, align 32
@radeonfb_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 2742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017radeonfb (%s): resuming from state: %d...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeonfb_pci_resume\00", [44 x i8] zeroinitializer }, align 32
@radeonfb_pci_resume._entry_ptr = internal global ptr @radeonfb_pci_resume._entry, section ".printk_index", align 4
@radeonfb_pci_resume._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 2755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013radeonfb (%s): can't resume radeon from D3 cold, need softboot !\00", [61 x i8] zeroinitializer }, align 32
@radeonfb_pci_resume._entry_ptr.23 = internal global ptr @radeonfb_pci_resume._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 8, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 8]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"radeonfb_pci_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2809, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2842, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2845, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2910, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2916, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2623, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2550, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2596, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"default_mrtable\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1271, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2741, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [39 x i8] c"../drivers/video/fbdev/aty/radeon_pm.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 2754, i32 5 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @radeon_set_suspend._entry, ptr @radeon_set_suspend._entry.16, ptr @radeon_set_suspend._entry_ptr, ptr @radeon_set_suspend._entry_ptr.18, ptr @radeonfb_pci_resume._entry, ptr @radeonfb_pci_resume._entry.21, ptr @radeonfb_pci_resume._entry_ptr, ptr @radeonfb_pci_resume._entry_ptr.23, ptr @radeonfb_pci_suspend_late._entry, ptr @radeonfb_pci_suspend_late._entry_ptr, ptr @radeonfb_pm_init._entry, ptr @radeonfb_pm_init._entry.3, ptr @radeonfb_pm_init._entry.6, ptr @radeonfb_pm_init._entry.9, ptr @radeonfb_pm_init._entry_ptr, ptr @radeonfb_pm_init._entry_ptr.11, ptr @radeonfb_pm_init._entry_ptr.5, ptr @radeonfb_pm_init._entry_ptr.8, ptr @radeonfb_pci_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @radeon_pm_full_reset_sdram.default_mrtable, ptr @.str.19, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pm_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pm_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_suspend_late._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_set_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_set_suspend._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_pm_full_reset_sdram.default_mrtable to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeonfb_pci_resume._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_pci_suspend(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @radeonfb_pci_suspend_late(ptr noundef %dev, [1 x i32] [i32 2])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_pci_resume(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_schedule = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %no_schedule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %no_schedule, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @console_trylock() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @console_lock() #6
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then2.do.end_crit_edge
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.pci_name.exit_crit_edge ]
  %12 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i, i32 noundef %13) #9
  %14 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp19 = icmp eq i32 %15, 2
  br i1 %cmp19, label %if.then20, label %if.else43

if.then20:                                        ; preds = %pci_name.exit
  %pm_mode = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 45
  %16 = ptrtoint ptr %pm_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pm_mode, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.then20.if.else36_crit_edge, label %land.lhs.true

if.then20.if.else36_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else36

land.lhs.true:                                    ; preds = %if.then20
  %call22 = tail call fastcc i32 @radeon_check_power_loss(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.else36_crit_edge, label %if.then24

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else36

if.then24:                                        ; preds = %land.lhs.true
  %reinit_func = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 46
  %18 = ptrtoint ptr %reinit_func to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reinit_func, align 8
  %cmp25.not = icmp eq ptr %19, null
  br i1 %cmp25.not, label %do.end31, label %if.then26

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %3) #6
  br label %if.end42

do.end31:                                         ; preds = %if.then24
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i99 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i99, label %if.end.i.i101, label %do.end31.pci_name.exit103_crit_edge

do.end31.pci_name.exit103_crit_edge:              ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit103

if.end.i.i101:                                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %pci_name.exit103

pci_name.exit103:                                 ; preds = %if.end.i.i101, %do.end31.pci_name.exit103_crit_edge
  %retval.0.i.i102 = phi ptr [ %23, %if.end.i.i101 ], [ %21, %do.end31.pci_name.exit103_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i102) #9
  br label %bail

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %if.then20.if.else36_crit_edge
  %24 = ptrtoint ptr %pm_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pm_mode, align 4
  %and38 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else36.if.end42_crit_edge, label %if.then40

if.else36.if.end42_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_set_suspend(ptr noundef %3, i32 noundef 0)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.else36.if.end42_crit_edge, %if.then26
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 41
  %26 = ptrtoint ptr %asleep to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %asleep, align 4
  br label %if.end44

if.else43:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_radeon_engine_idle(ptr noundef %3) #6
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.end42
  %state = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 1
  tail call void @radeon_write_mode(ptr noundef %3, ptr noundef %state, i32 noundef 1) #6
  %flags = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and45 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @radeonfb_engine_init(ptr noundef %3) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %call49 = tail call i32 @fb_pan_display(ptr noundef %1, ptr noundef %var) #6
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %call50 = tail call i32 @fb_set_cmap(ptr noundef %cmap, ptr noundef %1) #6
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #6
  %lock_blank = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 42
  %29 = ptrtoint ptr %lock_blank to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %lock_blank, align 8
  %call51 = tail call i32 @radeon_screen_blank(ptr noundef %3, i32 noundef 0, i32 noundef 1) #6
  %dynclk = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 43
  %30 = ptrtoint ptr %dynclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dynclk, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end48.if.end59_crit_edge [
    i32 1, label %if.then53
    i32 0, label %if.then57
  ]

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_enable_dynamic_mode(ptr noundef %3)
  br label %if.end59

if.then57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_disable_dynamic_mode(ptr noundef %3)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then53, %if.end48.if.end59_crit_edge
  %33 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %power, align 8
  br label %bail

bail:                                             ; preds = %if.end59, %pci_name.exit103
  %rc.0 = phi i32 [ 0, %if.end59 ], [ -5, %pci_name.exit103 ]
  tail call void @console_unlock() #6
  br label %cleanup

cleanup:                                          ; preds = %bail, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bail ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_pci_freeze(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %entry.radeonfb_pci_suspend_late.exit_crit_edge, label %do.end.i

entry.radeonfb_pci_suspend_late.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeonfb_pci_suspend_late.exit

do.end.i:                                         ; preds = %entry
  %init_name.i.i.i = getelementptr i8, ptr %dev, i32 144
  %2 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %5, %if.end.i.i.i ], [ %3, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i.i, i32 noundef 1) #9
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %power.i, align 8
  br label %radeonfb_pci_suspend_late.exit

radeonfb_pci_suspend_late.exit:                   ; preds = %pci_name.exit.i, %entry.radeonfb_pci_suspend_late.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeonfb_pci_hibernate(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @radeonfb_pci_suspend_late(ptr noundef %dev, [1 x i32] [i32 4])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeonfb_pm_init(ptr noundef %rinfo, i32 noundef %dynclk, i32 noundef %ignore_devlist, i32 noundef %force_sleep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %1)
  %cmp = icmp eq i8 %1, 18
  %2 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 43
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  br label %if.end18

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dynclk, ptr %2, align 4
  %5 = zext i32 %dynclk to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %dynclk, label %if.end.if.end18_crit_edge [
    i32 1, label %if.then7
    i32 0, label %if.then12
  ]

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_enable_dynamic_mode(ptr noundef %rinfo)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_disable_dynamic_mode(ptr noundef %rinfo)
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.then7, %if.end.if.end18_crit_edge, %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ignore_devlist)
  %tobool.not = icmp eq i32 %ignore_devlist, 0
  br i1 %tobool.not, label %if.end18.if.end26_crit_edge, label %do.end21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %if.end18.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_sleep)
  %tobool27.not = icmp eq i32 %force_sleep, 0
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %do.end30

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  %pm_mode = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 45
  %6 = ptrtoint ptr %pm_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_mode, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %pm_mode, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.end26.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_enable_dynamic_mode(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 25
  %0 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %5 = and i32 %4, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp = icmp ugt i32 %5, 512
  %and5 = and i32 %call, -527368193
  %spec.select = select i1 %cmp, i32 %and5, i32 %call
  %and6 = and i32 %spec.select, -258867201
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %and6) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %7, label %if.end7.if.end69_crit_edge [
    i8 13, label %if.then10
    i8 11, label %if.end7.if.then63_crit_edge
    i8 12, label %if.end7.if.then63_crit_edge292
  ]

if.end7.if.then63_crit_edge292:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.end7.if.then63_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.end7.if.end69_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 30) #6
  %and12 = and i32 %call11, -64513
  %or = or i32 %and12, 7168
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 30, i32 noundef %or) #6
  %call13 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %and14 = and i32 %call13, 16777223
  %or15 = or i32 %and14, 32760
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %or15) #6
  %call16 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 53) #6
  %and17 = and i32 %call16, -1800
  %or18 = or i32 %and17, 7
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 53, i32 noundef %or18) #6
  %call19 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #6
  %or20 = or i32 %call19, 192
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 8, i32 noundef %or20) #6
  %call21 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %or22 = or i32 %call21, 1048256
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %or22) #6
  %call23 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 31) #6
  %or24 = or i32 %call23, 49152
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 31, i32 noundef %or24) #6
  %call25 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %or26 = and i32 %call25, -2031617
  %and27 = or i32 %or26, 196608
  %and28 = and i32 %call25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then10.if.end53_crit_edge, label %if.then32

if.then10.if.end53_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then32:                                        ; preds = %if.then10
  %call33 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %vram_width = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 20
  %9 = ptrtoint ptr %vram_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vram_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp34 = icmp eq i32 %10, 64
  br i1 %cmp34, label %if.then36, label %if.else50

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %mmio_base39 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %11 = ptrtoint ptr %mmio_base39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base39, align 8
  %add.ptr40 = getelementptr i8, ptr %12, i32 320
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %and48 = and i32 %call33, -2097153
  br label %if.end53

if.else50:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %and51 = and i32 %call33, -2097153
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then36, %if.then10.if.end53_crit_edge
  %tmp.1 = phi i32 [ %and51, %if.else50 ], [ %and27, %if.then10.if.end53_crit_edge ], [ %and48, %if.then36 ]
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %tmp.1) #6
  br label %cleanup

if.then63:                                        ; preds = %if.end7.if.then63_crit_edge, %if.end7.if.then63_crit_edge292
  %call64 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %and65 = and i32 %call64, -2162689
  %or66 = or i32 %and65, 65536
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %or66) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %call67 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 30) #6
  %and68 = and i32 %call67, -57345
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 30, i32 noundef %and68) #6
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %if.end7.if.end69_crit_edge
  %call70 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 20) #6
  %and71 = and i32 %call70, -14741505
  %or72 = or i32 %and71, 12288
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 20, i32 noundef %or72) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %call73 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 1) #6
  %or74 = or i32 %call73, 32768
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 1, i32 noundef %or74) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %call75 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %and76 = and i32 %call75, 32767
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp79 = icmp eq i8 %15, 8
  br i1 %cmp79, label %land.lhs.true81, label %if.end69.lor.lhs.false92_crit_edge

if.end69.lor.lhs.false92_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false92

land.lhs.true81:                                  ; preds = %if.end69
  %mmio_base84 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %16 = ptrtoint ptr %mmio_base84 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base84, align 8
  %add.ptr85 = getelementptr i8, ptr %17, i32 224
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %19 = and i32 %18, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp90 = icmp eq i32 %19, 0
  br i1 %cmp90, label %land.lhs.true81.if.then108_crit_edge, label %lor.lhs.false92thread-pre-split

land.lhs.true81.if.then108_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

lor.lhs.false92thread-pre-split:                  ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %family, align 4
  br label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false92thread-pre-split, %if.end69.lor.lhs.false92_crit_edge
  %21 = phi i8 [ %.pr, %lor.lhs.false92thread-pre-split ], [ %15, %if.end69.lor.lhs.false92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp95 = icmp eq i8 %21, 3
  br i1 %cmp95, label %land.lhs.true97, label %lor.lhs.false92.if.end111_crit_edge

lor.lhs.false92.if.end111_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

land.lhs.true97:                                  ; preds = %lor.lhs.false92
  %mmio_base100 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %22 = ptrtoint ptr %mmio_base100 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base100, align 8
  %add.ptr101 = getelementptr i8, ptr %23, i32 224
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #6, !srcloc !54
  %25 = shl i32 %24, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %and105 = and i32 %25, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and105)
  %cmp106 = icmp ult i32 %and105, 131073
  br i1 %cmp106, label %land.lhs.true97.if.then108_crit_edge, label %land.lhs.true97.if.end111_crit_edge

land.lhs.true97.if.end111_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

land.lhs.true97.if.then108_crit_edge:             ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

if.then108:                                       ; preds = %land.lhs.true97.if.then108_crit_edge, %land.lhs.true81.if.then108_crit_edge
  %or110 = or i32 %and76, 8454144
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %land.lhs.true97.if.end111_crit_edge, %lor.lhs.false92.if.end111_crit_edge
  %tmp.2 = phi i32 [ %or110, %if.then108 ], [ %and76, %land.lhs.true97.if.end111_crit_edge ], [ %and76, %lor.lhs.false92.if.end111_crit_edge ]
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %tmp.2) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %family, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %27, label %if.end111.if.end152_crit_edge [
    i8 5, label %if.end111.if.then126_crit_edge
    i8 8, label %if.end111.if.then126_crit_edge293
    i8 10, label %if.end111.if.then126_crit_edge294
  ]

if.end111.if.then126_crit_edge294:                ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then126

if.end111.if.then126_crit_edge293:                ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then126

if.end111.if.then126_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then126

if.end111.if.end152_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then126:                                       ; preds = %if.end111.if.then126_crit_edge, %if.end111.if.then126_crit_edge293, %if.end111.if.then126_crit_edge294
  %call127 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 53) #6
  %and128 = and i32 %call127, -1793
  %29 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %family, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %30, label %if.then126.if.end151_crit_edge [
    i8 5, label %if.then126.land.lhs.true138_crit_edge
    i8 8, label %if.then126.land.lhs.true138_crit_edge295
  ]

if.then126.land.lhs.true138_crit_edge295:         ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true138

if.then126.land.lhs.true138_crit_edge:            ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true138

if.then126.if.end151_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

land.lhs.true138:                                 ; preds = %if.then126.land.lhs.true138_crit_edge, %if.then126.land.lhs.true138_crit_edge295
  %mmio_base141 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %32 = ptrtoint ptr %mmio_base141 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base141, align 8
  %add.ptr142 = getelementptr i8, ptr %33, i32 224
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %35 = and i32 %34, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp147 = icmp eq i32 %35, 0
  %masksel = select i1 %cmp147, i32 1792, i32 0
  %spec.select290 = or i32 %masksel, %and128
  br label %if.end151

if.end151:                                        ; preds = %land.lhs.true138, %if.then126.if.end151_crit_edge
  %tmp.3 = phi i32 [ %and128, %if.then126.if.end151_crit_edge ], [ %spec.select290, %land.lhs.true138 ]
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 53, i32 noundef %tmp.3) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr291 = load i8, ptr %family, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.end111.if.end152_crit_edge
  %37 = phi i8 [ %27, %if.end111.if.end152_crit_edge ], [ %.pr291, %if.end151 ]
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %37, label %if.end152.if.end176_crit_edge [
    i8 5, label %if.end152.land.lhs.true162_crit_edge
    i8 8, label %if.end152.land.lhs.true162_crit_edge296
  ]

if.end152.land.lhs.true162_crit_edge296:          ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true162

if.end152.land.lhs.true162_crit_edge:             ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true162

if.end152.if.end176_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

land.lhs.true162:                                 ; preds = %if.end152.land.lhs.true162_crit_edge, %if.end152.land.lhs.true162_crit_edge296
  %mmio_base165 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %39 = ptrtoint ptr %mmio_base165 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base165, align 8
  %add.ptr166 = getelementptr i8, ptr %40, i32 224
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %42 = and i32 %41, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp171 = icmp eq i32 %42, 0
  br i1 %cmp171, label %if.then173, label %land.lhs.true162.if.end176_crit_edge

land.lhs.true162.if.end176_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then173:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #8
  %call174 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 21) #6
  %or175 = or i32 %call174, 1048576
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 21, i32 noundef %or175) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %land.lhs.true162.if.end176_crit_edge, %if.end152.if.end176_crit_edge
  %call177 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %or178 = or i32 %call177, 63680
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %or178) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %call179 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #6
  %or180 = or i32 %call179, 192
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 8, i32 noundef %or180) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end176, %if.end53, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_disable_dynamic_mode(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %2 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %has_CRTC2 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 25
  %4 = ptrtoint ptr %has_CRTC2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_CRTC2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end6.thread

if.then:                                          ; preds = %land.lhs.true
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %and = and i32 %call, 7
  %or = or i32 %and, -32760
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %or) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %call4 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %or5 = or i32 %call4, 4128768
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %or5) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %has_CRTC27 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 25
  %6 = ptrtoint ptr %has_CRTC27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %has_CRTC27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end6.if.then9_crit_edge, label %if.end12

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end6.thread:                                   ; preds = %land.lhs.true
  br i1 %tobool2.not, label %if.end6.thread.if.then9_crit_edge, label %if.end6.thread.if.end30_crit_edge

if.end6.thread.if.end30_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end6.thread.if.then9_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %if.end6.thread.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %call10 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %or11 = or i32 %call10, 536805376
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %or11) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %1)
  %cmp15 = icmp eq i8 %1, 13
  br i1 %cmp15, label %if.then17, label %if.end12.if.end30_crit_edge

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 30) #6
  %or19 = or i32 %call18, 57344
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 30, i32 noundef %or19) #6
  %call20 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %or21 = or i32 %call20, -16809984
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %or21) #6
  %call22 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 53) #6
  %or23 = or i32 %call22, 1792
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 53, i32 noundef %or23) #6
  %call24 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %or25 = or i32 %call24, 2031616
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %or25) #6
  %call26 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #6
  %and27 = and i32 %call26, -8388801
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 8, i32 noundef %and27) #6
  %call28 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %and29 = and i32 %call28, -8912577
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %and29) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end12.if.end30_crit_edge, %if.end6.thread.if.end30_crit_edge
  %call31 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %is_mobility33 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %8 = ptrtoint ptr %is_mobility33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_mobility33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool34.not = icmp eq i32 %9, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %or36 = or i32 %call31, -32768
  br label %if.end48

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %.off = add i8 %11, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %spec.select.v = select i1 %switch, i32 14647296, i32 1114112
  %spec.select = or i32 %spec.select.v, %call31
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then35
  %tmp.0 = phi i32 [ %or36, %if.then35 ], [ %spec.select, %if.else ]
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %tmp.0) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 16) #6
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %family, align 4
  %.off183 = add i8 %13, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off183)
  %switch184 = icmp ult i8 %.off183, 2
  br i1 %switch184, label %if.then58, label %if.end48.if.end61_crit_edge

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call59 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 30) #6
  %or60 = or i32 %call59, 57344
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 30, i32 noundef %or60) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 16) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end48.if.end61_crit_edge
  %call62 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 1) #6
  %and63 = and i32 %call62, -32769
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 1, i32 noundef %and63) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 15) #6
  %is_IGP = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 27
  %14 = ptrtoint ptr %is_IGP to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %is_IGP, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool64.not = icmp eq i32 %15, 0
  br i1 %tobool64.not, label %if.else68, label %if.end61.if.end77_crit_edge

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.else68:                                        ; preds = %if.end61
  %16 = ptrtoint ptr %is_mobility33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_mobility33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool70.not = icmp eq i32 %17, 0
  br i1 %tobool70.not, label %if.else68.if.end83_crit_edge, label %if.then71

if.else68.if.end83_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %or73 = or i32 %call72, 983040
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %or73) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 16) #6
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.end61.if.end77_crit_edge
  %.sink191 = phi i32 [ 31, %if.then71 ], [ 18, %if.end61.if.end77_crit_edge ]
  %.sink190 = phi i32 [ -61441, %if.then71 ], [ -327681, %if.end61.if.end77_crit_edge ]
  %.sink = phi i32 [ 15, %if.then71 ], [ 16, %if.end61.if.end77_crit_edge ]
  %call74 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef %.sink191) #6
  %and75 = and i32 %call74, %.sink190
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef %.sink191, i32 noundef %and75) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef %.sink) #6
  %18 = ptrtoint ptr %is_mobility33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %is_mobility33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool79.not = icmp eq i32 %.pr, 0
  br i1 %tobool79.not, label %if.end77.if.end83_crit_edge, label %if.then80

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 53) #6
  %or82 = or i32 %call81, 1792
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 53, i32 noundef %or82) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 16) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77.if.end83_crit_edge, %if.else68.if.end83_crit_edge
  %call84 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %and85 = and i32 %call84, -63681
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %and85) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 16) #6
  %call86 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #6
  %and87 = and i32 %call86, -193
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 8, i32 noundef %and87) #6
  tail call void @_radeon_msleep(ptr noundef %rinfo, i32 noundef 16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then17, %if.then9, %if.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeonfb_pm_exit(ptr nocapture noundef %rinfo) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeonfb_pci_suspend_late(ptr nocapture noundef %dev, [1 x i32] %mesg.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mesg.coerce.fca.0.extract = extractvalue [1 x i32] %mesg.coerce, 0
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mesg.coerce.fca.0.extract, i32 %5)
  %cmp = icmp eq i32 %mesg.coerce.fca.0.extract, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %init_name.i.i = getelementptr i8, ptr %dev, i32 144
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %do.end.pci_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i, i32 noundef %mesg.coerce.fca.0.extract) #9
  %10 = zext i32 %mesg.coerce.fca.0.extract to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %mesg.coerce.fca.0.extract, label %sw.epilog [
    i32 1, label %pci_name.exit.done_crit_edge
    i32 8, label %pci_name.exit.done_crit_edge1
  ]

pci_name.exit.done_crit_edge1:                    ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

pci_name.exit.done_crit_edge:                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.epilog:                                        ; preds = %pci_name.exit
  tail call void @console_lock() #6
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #6
  %flags = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then8, label %sw.epilog.if.end9_crit_edge

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_radeon_engine_idle(ptr noundef %3) #6
  tail call void @radeonfb_engine_reset(ptr noundef %3) #6
  tail call void @_radeon_engine_idle(ptr noundef %3) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.epilog.if.end9_crit_edge
  %call10 = tail call i32 @radeon_screen_blank(ptr noundef %3, i32 noundef 4, i32 noundef 1) #6
  %asleep = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 41
  %13 = ptrtoint ptr %asleep to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %asleep, align 4
  %lock_blank = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 42
  %14 = ptrtoint ptr %lock_blank to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %lock_blank, align 8
  %lvds_timer = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 48
  %call11 = tail call i32 @del_timer_sync(ptr noundef %lvds_timer) #6
  %pm_mode = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 45
  %15 = ptrtoint ptr %pm_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pm_mode, align 4
  %and12 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.if.end70_crit_edge, label %if.then14

if.end9.if.end70_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then14:                                        ; preds = %if.end9
  tail call fastcc void @radeon_pm_disable_dynamic_mode(ptr noundef %3)
  tail call void @msleep(i32 noundef 50) #6
  tail call fastcc void @radeon_pm_save_regs(ptr noundef %3)
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 26
  %17 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %if.then14.if.end70_crit_edge, label %land.lhs.true

if.then14.if.end70_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true:                                    ; preds = %if.then14
  %19 = ptrtoint ptr %pm_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pm_mode, align 4
  %and17 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base, align 8
  %add.ptr23 = getelementptr i8, ptr %22, i32 720
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %24 = and i32 %23, -257
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 8
  %add.ptr29 = getelementptr i8, ptr %26, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %24) #6, !srcloc !63
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base, align 8
  %add.ptr36 = getelementptr i8, ptr %28, i32 720
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %30 = and i32 %29, 2130706431
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 8
  %add.ptr42 = getelementptr i8, ptr %32, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %30) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base, align 8
  %add.ptr49 = getelementptr i8, ptr %34, i32 724
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %36 = and i32 %35, -812974593
  %37 = or i32 %36, 512
  %38 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base, align 8
  %add.ptr55 = getelementptr i8, ptr %39, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %37) #6, !srcloc !63
  tail call void @msleep(i32 noundef 20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base, align 8
  %add.ptr62 = getelementptr i8, ptr %41, i32 720
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %43 = and i32 %42, -1025
  %44 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_base, align 8
  %add.ptr68 = getelementptr i8, ptr %45, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %43) #6, !srcloc !63
  br label %if.end70

if.end70:                                         ; preds = %if.then19, %land.lhs.true.if.end70_crit_edge, %if.then14.if.end70_crit_edge, %if.end9.if.end70_crit_edge
  %46 = ptrtoint ptr %pm_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pm_mode, align 4
  %and72 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end75_crit_edge, label %if.then74

if.end70.if.end75_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_set_suspend(ptr noundef %3, i32 noundef 1)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end70.if.end75_crit_edge
  tail call void @console_unlock() #6
  br label %done

done:                                             ; preds = %if.end75, %pci_name.exit.done_crit_edge, %pci_name.exit.done_crit_edge1
  %48 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mesg.coerce.fca.0.extract, ptr %power, align 8
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_radeon_engine_idle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_engine_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_screen_blank(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_save_regs(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 21) #6
  %save_regs = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40
  %0 = ptrtoint ptr %save_regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %save_regs, align 4
  %call1 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 20) #6
  %arrayidx3 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %arrayidx3, align 4
  %call4 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %arrayidx6 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call4, ptr %arrayidx6, align 4
  %call7 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %arrayidx9 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 3
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call7, ptr %arrayidx9, align 4
  %call10 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 1) #6
  %arrayidx12 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 4
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call10, ptr %arrayidx12, align 4
  %call13 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #6
  %arrayidx15 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 5
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call13, ptr %arrayidx15, align 4
  %call16 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %arrayidx18 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 6
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call16, ptr %arrayidx18, align 4
  %call19 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 31) #6
  %arrayidx21 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 7
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call19, ptr %arrayidx21, align 4
  %call22 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 42) #6
  %arrayidx24 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 8
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call22, ptr %arrayidx24, align 4
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 3328
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %arrayidx28 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 9
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx28, align 4
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %add.ptr32 = getelementptr i8, ptr %15, i32 3336
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !54
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %arrayidx37 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 10
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx37, align 4
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr41 = getelementptr i8, ptr %20, i32 720
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #6, !srcloc !54
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %arrayidx46 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 11
  %23 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx46, align 4
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 8
  %add.ptr50 = getelementptr i8, ptr %25, i32 2188
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #6, !srcloc !54
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %arrayidx55 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 13
  %28 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx55, align 4
  %29 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_base, align 8
  %add.ptr59 = getelementptr i8, ptr %30, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #6, !srcloc !54
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %arrayidx64 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 14
  %33 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx64, align 4
  %34 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base, align 8
  %add.ptr68 = getelementptr i8, ptr %35, i32 552
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #6, !srcloc !54
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %arrayidx73 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 15
  %38 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx73, align 4
  %39 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio_base, align 8
  %add.ptr77 = getelementptr i8, ptr %40, i32 372
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #6, !srcloc !54
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %arrayidx82 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 16
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx82, align 4
  %44 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_base, align 8
  %add.ptr86 = getelementptr i8, ptr %45, i32 80
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %47 = and i32 %46, -7
  %48 = or i32 %47, 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %arrayidx91 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 17
  %50 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx91, align 4
  %51 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio_base, align 8
  %add.ptr95 = getelementptr i8, ptr %52, i32 1016
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %54 = and i32 %53, -7
  %55 = or i32 %54, 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %arrayidx102 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 18
  %57 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx102, align 4
  %58 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio_base, align 8
  %add.ptr106 = getelementptr i8, ptr %59, i32 412
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #6, !srcloc !54
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %arrayidx111 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 19
  %62 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx111, align 4
  %63 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio_base, align 8
  %add.ptr115 = getelementptr i8, ptr %64, i32 416
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #6, !srcloc !54
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %arrayidx120 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 20
  %67 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx120, align 4
  %68 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_base, align 8
  %add.ptr124 = getelementptr i8, ptr %69, i32 408
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #6, !srcloc !54
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %arrayidx129 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 21
  %72 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx129, align 4
  %73 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio_base, align 8
  %add.ptr133 = getelementptr i8, ptr %74, i32 428
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #6, !srcloc !54
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %arrayidx138 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 22
  %77 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx138, align 4
  %78 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_base, align 8
  %add.ptr142 = getelementptr i8, ptr %79, i32 432
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #6, !srcloc !54
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %arrayidx147 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 23
  %82 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx147, align 4
  %83 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio_base, align 8
  %add.ptr151 = getelementptr i8, ptr %84, i32 424
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #6, !srcloc !54
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %arrayidx156 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 24
  %87 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx156, align 4
  %88 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio_base, align 8
  %add.ptr160 = getelementptr i8, ptr %89, i32 96
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #6, !srcloc !54
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %arrayidx165 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 25
  %92 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx165, align 4
  %93 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio_base, align 8
  %add.ptr169 = getelementptr i8, ptr %94, i32 100
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #6, !srcloc !54
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %arrayidx174 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 26
  %97 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx174, align 4
  %98 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio_base, align 8
  %add.ptr178 = getelementptr i8, ptr %99, i32 104
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #6, !srcloc !54
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %arrayidx183 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 27
  %102 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx183, align 4
  %103 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio_base, align 8
  %add.ptr187 = getelementptr i8, ptr %104, i32 108
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #6, !srcloc !54
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %arrayidx192 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 28
  %107 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx192, align 4
  %108 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio_base, align 8
  %add.ptr196 = getelementptr i8, ptr %109, i32 2816
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #6, !srcloc !54
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %arrayidx201 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 29
  %112 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx201, align 4
  %113 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mmio_base, align 8
  %add.ptr205 = getelementptr i8, ptr %114, i32 328
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #6, !srcloc !54
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %arrayidx210 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 30
  %117 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx210, align 4
  %118 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio_base, align 8
  %add.ptr214 = getelementptr i8, ptr %119, i32 572
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr214) #6, !srcloc !54
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %arrayidx219 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 31
  %122 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %arrayidx219, align 4
  %123 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mmio_base, align 8
  %add.ptr223 = getelementptr i8, ptr %124, i32 332
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223) #6, !srcloc !54
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %arrayidx228 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 32
  %127 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx228, align 4
  %128 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio_base, align 8
  %add.ptr232 = getelementptr i8, ptr %129, i32 828
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr232) #6, !srcloc !54
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %arrayidx237 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 33
  %132 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx237, align 4
  %call238 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 53) #6
  %arrayidx240 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 34
  %133 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %call238, ptr %arrayidx240, align 4
  %134 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio_base, align 8
  %add.ptr244 = getelementptr i8, ptr %135, i32 344
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr244) #6, !srcloc !54
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %arrayidx249 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 35
  %138 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx249, align 4
  %139 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio_base, align 8
  %add.ptr253 = getelementptr i8, ptr %140, i32 48
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #6, !srcloc !54
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %arrayidx258 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 36
  %143 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx258, align 4
  %144 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio_base, align 8
  %add.ptr262 = getelementptr i8, ptr %145, i32 236
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr262) #6, !srcloc !54
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %arrayidx267 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 39
  %148 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx267, align 4
  %149 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio_base, align 8
  %add.ptr271 = getelementptr i8, ptr %150, i32 88
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr271) #6, !srcloc !54
  %152 = tail call i32 @llvm.bswap.i32(i32 %151)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %arrayidx276 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 40
  %153 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %arrayidx276, align 4
  %154 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio_base, align 8
  %add.ptr280 = getelementptr i8, ptr %155, i32 304
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr280) #6, !srcloc !54
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %arrayidx285 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 41
  %158 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx285, align 4
  %159 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio_base, align 8
  %add.ptr289 = getelementptr i8, ptr %160, i32 448
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr289) #6, !srcloc !54
  %162 = tail call i32 @llvm.bswap.i32(i32 %161)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %arrayidx294 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 37
  %163 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx294, align 4
  %164 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio_base, align 8
  %add.ptr298 = getelementptr i8, ptr %165, i32 2320
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr298) #6, !srcloc !54
  %167 = tail call i32 @llvm.bswap.i32(i32 %166)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %arrayidx303 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 38
  %168 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %arrayidx303, align 4
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %169 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not = icmp eq i32 %170, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio_base, align 8
  %add.ptr307 = getelementptr i8, ptr %172, i32 724
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307) #6, !srcloc !54
  %174 = tail call i32 @llvm.bswap.i32(i32 %173)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %arrayidx312 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 12
  %175 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx312, align 4
  %call313 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 48) #6
  %arrayidx315 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 43
  %176 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %call313, ptr %arrayidx315, align 4
  %call316 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 49) #6
  %arrayidx318 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 44
  %177 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %call316, ptr %arrayidx318, align 4
  %call319 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 50) #6
  %arrayidx321 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 45
  %178 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call319, ptr %arrayidx321, align 4
  %call322 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 51) #6
  %arrayidx324 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 90
  %179 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %call322, ptr %arrayidx324, align 4
  %call325 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 52) #6
  %arrayidx327 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 91
  %180 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call325, ptr %arrayidx327, align 4
  %181 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mmio_base, align 8
  %add.ptr331 = getelementptr i8, ptr %182, i32 720
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331) #6, !srcloc !54
  %184 = tail call i32 @llvm.bswap.i32(i32 %183)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %arrayidx336 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 81
  %185 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx336, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %186 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %187)
  %cmp = icmp ugt i8 %187, 4
  br i1 %cmp, label %if.then338, label %if.end.if.end420_crit_edge

if.end.if.end420_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end420

if.then338:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %188 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mmio_base, align 8
  %add.ptr342 = getelementptr i8, ptr %189, i32 376
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr342) #6, !srcloc !54
  %191 = tail call i32 @llvm.bswap.i32(i32 %190)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %arrayidx347 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 42
  %192 = ptrtoint ptr %arrayidx347 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx347, align 4
  %193 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio_base, align 8
  %add.ptr351 = getelementptr i8, ptr %194, i32 320
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr351) #6, !srcloc !54
  %196 = tail call i32 @llvm.bswap.i32(i32 %195)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %arrayidx356 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 46
  %197 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %arrayidx356, align 4
  %198 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio_base, align 8
  %add.ptr360 = getelementptr i8, ptr %199, i32 340
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr360) #6, !srcloc !54
  %201 = tail call i32 @llvm.bswap.i32(i32 %200)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %arrayidx365 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 47
  %202 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %arrayidx365, align 4
  %203 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio_base, align 8
  %add.ptr369 = getelementptr i8, ptr %204, i32 384
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr369) #6, !srcloc !54
  %206 = tail call i32 @llvm.bswap.i32(i32 %205)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %arrayidx374 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 48
  %207 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %arrayidx374, align 4
  %208 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mmio_base, align 8
  %add.ptr378 = getelementptr i8, ptr %209, i32 324
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr378) #6, !srcloc !54
  %211 = tail call i32 @llvm.bswap.i32(i32 %210)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %arrayidx383 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 49
  %212 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx383, align 4
  %213 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mmio_base, align 8
  %add.ptr387 = getelementptr i8, ptr %214, i32 380
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr387) #6, !srcloc !54
  %216 = tail call i32 @llvm.bswap.i32(i32 %215)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %arrayidx392 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 50
  %217 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %arrayidx392, align 4
  %218 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio_base, align 8
  %add.ptr396 = getelementptr i8, ptr %219, i32 388
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr396) #6, !srcloc !54
  %221 = tail call i32 @llvm.bswap.i32(i32 %220)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  %arrayidx401 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 51
  %222 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %arrayidx401, align 4
  %223 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mmio_base, align 8
  %add.ptr405 = getelementptr i8, ptr %224, i32 396
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr405) #6, !srcloc !54
  %226 = tail call i32 @llvm.bswap.i32(i32 %225)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %arrayidx410 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 52
  %227 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %arrayidx410, align 4
  %228 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mmio_base, align 8
  %add.ptr414 = getelementptr i8, ptr %229, i32 392
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr414) #6, !srcloc !54
  %231 = tail call i32 @llvm.bswap.i32(i32 %230)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %arrayidx419 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 53
  %232 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %arrayidx419, align 4
  br label %if.end420

if.end420:                                        ; preds = %if.then338, %if.end.if.end420_crit_edge
  %233 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %mmio_base, align 8
  %add.ptr424 = getelementptr i8, ptr %234, i32 2708
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr424) #6, !srcloc !54
  %236 = tail call i32 @llvm.bswap.i32(i32 %235)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %arrayidx429 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 54
  %237 = ptrtoint ptr %arrayidx429 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx429, align 4
  %238 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio_base, align 8
  %add.ptr433 = getelementptr i8, ptr %239, i32 2712
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr433) #6, !srcloc !54
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %arrayidx438 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 55
  %242 = ptrtoint ptr %arrayidx438 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %arrayidx438, align 4
  %243 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio_base, align 8
  %add.ptr442 = getelementptr i8, ptr %244, i32 2720
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr442) #6, !srcloc !54
  %246 = tail call i32 @llvm.bswap.i32(i32 %245)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %arrayidx447 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 56
  %247 = ptrtoint ptr %arrayidx447 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %arrayidx447, align 4
  %248 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mmio_base, align 8
  %add.ptr451 = getelementptr i8, ptr %249, i32 280
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr451) #6, !srcloc !54
  %251 = tail call i32 @llvm.bswap.i32(i32 %250)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %arrayidx456 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 57
  %252 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %arrayidx456, align 4
  %253 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %254)
  %cmp459 = icmp ugt i8 %254, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %255 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i = getelementptr i8, ptr %256, i32 504
  br i1 %cmp459, label %if.then461, label %if.else

if.then461:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 620756992) #6, !srcloc !63
  %257 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i = getelementptr i8, ptr %258, i32 508
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !54
  %260 = tail call i32 @llvm.bswap.i32(i32 %259) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx464 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 58
  %261 = ptrtoint ptr %arrayidx464 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %arrayidx464, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %262 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i2 = getelementptr i8, ptr %263, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 402653184) #6, !srcloc !63
  %264 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i3 = getelementptr i8, ptr %265, i32 508
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3) #6, !srcloc !54
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx467 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 59
  %268 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %arrayidx467, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %269 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i5 = getelementptr i8, ptr %270, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 486539264) #6, !srcloc !63
  %271 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i6 = getelementptr i8, ptr %272, i32 508
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i6) #6, !srcloc !54
  %274 = tail call i32 @llvm.bswap.i32(i32 %273) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx470 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 60
  %275 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %arrayidx470, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %276 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i8 = getelementptr i8, ptr %277, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 503316480) #6, !srcloc !63
  %278 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i9 = getelementptr i8, ptr %279, i32 508
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i9) #6, !srcloc !54
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx473 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 61
  %282 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %281, ptr %arrayidx473, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %283 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i11 = getelementptr i8, ptr %284, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 520093696) #6, !srcloc !63
  %285 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i12 = getelementptr i8, ptr %286, i32 508
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i12) #6, !srcloc !54
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx476 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 62
  %289 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx476, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %290 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i14 = getelementptr i8, ptr %291, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 536870912) #6, !srcloc !63
  %292 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i15 = getelementptr i8, ptr %293, i32 508
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i15) #6, !srcloc !54
  %295 = tail call i32 @llvm.bswap.i32(i32 %294) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx479 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 63
  %296 = ptrtoint ptr %arrayidx479 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %arrayidx479, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %297 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i17 = getelementptr i8, ptr %298, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 721420288) #6, !srcloc !63
  %299 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i18 = getelementptr i8, ptr %300, i32 508
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i18) #6, !srcloc !54
  %302 = tail call i32 @llvm.bswap.i32(i32 %301) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx482 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 64
  %303 = ptrtoint ptr %arrayidx482 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %arrayidx482, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %304 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i20 = getelementptr i8, ptr %305, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 419430400) #6, !srcloc !63
  %306 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i21 = getelementptr i8, ptr %307, i32 508
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i21) #6, !srcloc !54
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx485 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 65
  %310 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %arrayidx485, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %311 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i23 = getelementptr i8, ptr %312, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 436207616) #6, !srcloc !63
  %313 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i24 = getelementptr i8, ptr %314, i32 508
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i24) #6, !srcloc !54
  %316 = tail call i32 @llvm.bswap.i32(i32 %315) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx488 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 66
  %317 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %arrayidx488, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %318 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i26 = getelementptr i8, ptr %319, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 452984832) #6, !srcloc !63
  %320 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i27 = getelementptr i8, ptr %321, i32 508
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i27) #6, !srcloc !54
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx491 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 67
  %324 = ptrtoint ptr %arrayidx491 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %323, ptr %arrayidx491, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %325 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i29 = getelementptr i8, ptr %326, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 469762048) #6, !srcloc !63
  %327 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i30 = getelementptr i8, ptr %328, i32 508
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i30) #6, !srcloc !54
  %330 = tail call i32 @llvm.bswap.i32(i32 %329) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx494 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 68
  %331 = ptrtoint ptr %arrayidx494 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %arrayidx494, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %332 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i32 = getelementptr i8, ptr %333, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 637534208) #6, !srcloc !63
  %334 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i33 = getelementptr i8, ptr %335, i32 508
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i33) #6, !srcloc !54
  %337 = tail call i32 @llvm.bswap.i32(i32 %336) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx497 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 69
  %338 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %arrayidx497, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %339 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i35 = getelementptr i8, ptr %340, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 788529152) #6, !srcloc !63
  %341 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i36 = getelementptr i8, ptr %342, i32 508
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i36) #6, !srcloc !54
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx500 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 70
  %345 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %arrayidx500, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %346 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i38 = getelementptr i8, ptr %347, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 553648128) #6, !srcloc !63
  %348 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i39 = getelementptr i8, ptr %349, i32 508
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i39) #6, !srcloc !54
  %351 = tail call i32 @llvm.bswap.i32(i32 %350) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx503 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 71
  %352 = ptrtoint ptr %arrayidx503 to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %351, ptr %arrayidx503, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %353 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i41 = getelementptr i8, ptr %354, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 570425344) #6, !srcloc !63
  %355 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i42 = getelementptr i8, ptr %356, i32 508
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i42) #6, !srcloc !54
  %358 = tail call i32 @llvm.bswap.i32(i32 %357) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx506 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 72
  %359 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %arrayidx506, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %360 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i44 = getelementptr i8, ptr %361, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 603979776) #6, !srcloc !63
  %362 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i45 = getelementptr i8, ptr %363, i32 508
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i45) #6, !srcloc !54
  %365 = tail call i32 @llvm.bswap.i32(i32 %364) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx509 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 96
  %366 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %365, ptr %arrayidx509, align 4
  br label %if.end528

if.else:                                          ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772160) #6, !srcloc !63
  %367 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i48 = getelementptr i8, ptr %368, i32 508
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i48) #6, !srcloc !54
  %370 = tail call i32 @llvm.bswap.i32(i32 %369) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx512 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 59
  %371 = ptrtoint ptr %arrayidx512 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %370, ptr %arrayidx512, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %372 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i50 = getelementptr i8, ptr %373, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 184549376) #6, !srcloc !63
  %374 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i51 = getelementptr i8, ptr %375, i32 508
  %376 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i51) #6, !srcloc !54
  %377 = tail call i32 @llvm.bswap.i32(i32 %376) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx515 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 65
  %378 = ptrtoint ptr %arrayidx515 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %arrayidx515, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %379 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i53 = getelementptr i8, ptr %380, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 201326592) #6, !srcloc !63
  %381 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i54 = getelementptr i8, ptr %382, i32 508
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i54) #6, !srcloc !54
  %384 = tail call i32 @llvm.bswap.i32(i32 %383) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx518 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 66
  %385 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %arrayidx518, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %386 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i56 = getelementptr i8, ptr %387, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 218103808) #6, !srcloc !63
  %388 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i57 = getelementptr i8, ptr %389, i32 508
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i57) #6, !srcloc !54
  %391 = tail call i32 @llvm.bswap.i32(i32 %390) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx521 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 67
  %392 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %arrayidx521, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %393 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i59 = getelementptr i8, ptr %394, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 234881024) #6, !srcloc !63
  %395 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i60 = getelementptr i8, ptr %396, i32 508
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i60) #6, !srcloc !54
  %398 = tail call i32 @llvm.bswap.i32(i32 %397) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx524 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 68
  %399 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %398, ptr %arrayidx524, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %400 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i62 = getelementptr i8, ptr %401, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 251658240) #6, !srcloc !63
  %402 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i63 = getelementptr i8, ptr %403, i32 508
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i63) #6, !srcloc !54
  %405 = tail call i32 @llvm.bswap.i32(i32 %404) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %arrayidx527 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 71
  %406 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %arrayidx527, align 4
  br label %if.end528

if.end528:                                        ; preds = %if.else, %if.then461
  %call529 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 14) #6
  %arrayidx531 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 73
  %407 = ptrtoint ptr %arrayidx531 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %call529, ptr %arrayidx531, align 4
  %call532 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 12) #6
  %arrayidx534 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 74
  %408 = ptrtoint ptr %arrayidx534 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %call532, ptr %arrayidx534, align 4
  %call535 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 37) #6
  %arrayidx537 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 75
  %409 = ptrtoint ptr %arrayidx537 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %call535, ptr %arrayidx537, align 4
  %call538 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 36) #6
  %arrayidx540 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 76
  %410 = ptrtoint ptr %arrayidx540 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %call538, ptr %arrayidx540, align 4
  %call541 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 10) #6
  %arrayidx543 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 77
  %411 = ptrtoint ptr %arrayidx543 to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %call541, ptr %arrayidx543, align 4
  %call544 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 11) #6
  %arrayidx546 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 78
  %412 = ptrtoint ptr %arrayidx546 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %call544, ptr %arrayidx546, align 4
  %413 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mmio_base, align 8
  %add.ptr550 = getelementptr i8, ptr %414, i32 2716
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr550) #6, !srcloc !54
  %416 = tail call i32 @llvm.bswap.i32(i32 %415)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  %arrayidx555 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 79
  %417 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %416, ptr %arrayidx555, align 4
  %418 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %mmio_base, align 8
  %add.ptr559 = getelementptr i8, ptr %419, i32 1084
  %420 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr559) #6, !srcloc !54
  %421 = tail call i32 @llvm.bswap.i32(i32 %420)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %arrayidx564 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 80
  %422 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %421, ptr %arrayidx564, align 4
  %423 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %mmio_base, align 8
  %add.ptr568 = getelementptr i8, ptr %424, i32 644
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr568) #6, !srcloc !54
  %426 = tail call i32 @llvm.bswap.i32(i32 %425)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %arrayidx573 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 82
  %427 = ptrtoint ptr %arrayidx573 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %426, ptr %arrayidx573, align 4
  %428 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %mmio_base, align 8
  %add.ptr577 = getelementptr i8, ptr %429, i32 648
  %430 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr577) #6, !srcloc !54
  %431 = tail call i32 @llvm.bswap.i32(i32 %430)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %arrayidx582 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 83
  %432 = ptrtoint ptr %arrayidx582 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 %431, ptr %arrayidx582, align 4
  %433 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %mmio_base, align 8
  %add.ptr586 = getelementptr i8, ptr %434, i32 660
  %435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr586) #6, !srcloc !54
  %436 = tail call i32 @llvm.bswap.i32(i32 %435)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %arrayidx591 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 84
  %437 = ptrtoint ptr %arrayidx591 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %436, ptr %arrayidx591, align 4
  %438 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %mmio_base, align 8
  %add.ptr595 = getelementptr i8, ptr %439, i32 676
  %440 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr595) #6, !srcloc !54
  %441 = tail call i32 @llvm.bswap.i32(i32 %440)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %arrayidx600 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 85
  %442 = ptrtoint ptr %arrayidx600 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %441, ptr %arrayidx600, align 4
  %443 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %mmio_base, align 8
  %add.ptr604 = getelementptr i8, ptr %444, i32 3428
  %445 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr604) #6, !srcloc !54
  %446 = tail call i32 @llvm.bswap.i32(i32 %445)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %arrayidx609 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 86
  %447 = ptrtoint ptr %arrayidx609 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %446, ptr %arrayidx609, align 4
  %448 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %mmio_base, align 8
  %add.ptr613 = getelementptr i8, ptr %449, i32 3348
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr613) #6, !srcloc !54
  %451 = tail call i32 @llvm.bswap.i32(i32 %450)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %arrayidx618 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 87
  %452 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %arrayidx618, align 4
  %453 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %mmio_base, align 8
  %add.ptr622 = getelementptr i8, ptr %454, i32 2048
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr622) #6, !srcloc !54
  %456 = tail call i32 @llvm.bswap.i32(i32 %455)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %arrayidx627 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 88
  %457 = ptrtoint ptr %arrayidx627 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 %456, ptr %arrayidx627, align 4
  %call628 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 43) #6
  %arrayidx630 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 89
  %458 = ptrtoint ptr %arrayidx630 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %call628, ptr %arrayidx630, align 4
  %call631 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 4) #6
  %arrayidx633 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 92
  %459 = ptrtoint ptr %arrayidx633 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %call631, ptr %arrayidx633, align 4
  %call634 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 2) #6
  %arrayidx636 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 93
  %460 = ptrtoint ptr %arrayidx636 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %call634, ptr %arrayidx636, align 4
  %461 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %mmio_base, align 8
  %add.ptr640 = getelementptr i8, ptr %462, i32 752
  %463 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr640) #6, !srcloc !54
  %464 = tail call i32 @llvm.bswap.i32(i32 %463)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %arrayidx645 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 94
  %465 = ptrtoint ptr %arrayidx645 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %464, ptr %arrayidx645, align 4
  %466 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %mmio_base, align 8
  %add.ptr649 = getelementptr i8, ptr %467, i32 1008
  %468 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr649) #6, !srcloc !54
  %469 = tail call i32 @llvm.bswap.i32(i32 %468)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %arrayidx654 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 95
  %470 = ptrtoint ptr %arrayidx654 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %arrayidx654, align 4
  %471 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %mmio_base, align 8
  %add.ptr658 = getelementptr i8, ptr %472, i32 312
  %473 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr658) #6, !srcloc !54
  %474 = tail call i32 @llvm.bswap.i32(i32 %473)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %arrayidx663 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 96
  %475 = ptrtoint ptr %arrayidx663 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %474, ptr %arrayidx663, align 4
  %call664 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 15) #6
  %arrayidx666 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 97
  %476 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %call664, ptr %arrayidx666, align 4
  %call667 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 16) #6
  %arrayidx669 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 98
  %477 = ptrtoint ptr %arrayidx669 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %call667, ptr %arrayidx669, align 4
  %call670 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 17) #6
  %arrayidx672 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 99
  %478 = ptrtoint ptr %arrayidx672 to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %call670, ptr %arrayidx672, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_set_suspend(ptr noundef %rinfo, i32 noundef %suspend) unnamed_addr #0 align 64 {
entry:
  %pwr_cmd.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 9
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %pm_cap = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %pm_cap to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool1.not = icmp eq i32 %suspend, 0
  %init_name.i.i55 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i55 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i55, align 8
  %tobool.not.i.i56 = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.end21, label %do.end

do.end:                                           ; preds = %if.end
  br i1 %tobool.not.i.i56, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %do.end.pci_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i) #9
  tail call fastcc void @radeon_pm_disable_dynamic_mode(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_save_regs(ptr noundef %rinfo)
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %8 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %pci_name.exit.if.end13_crit_edge, label %if.then7

pci_name.exit.if.end13_crit_edge:                 ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %pci_name.exit
  tail call fastcc void @radeon_pm_program_v2clk(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_disable_iopad(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_low_current(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_setup_for_suspend(ptr noundef %rinfo)
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %11)
  %cmp = icmp ult i8 %11, 11
  br i1 %cmp, label %if.then9, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 15) #6
  %or11 = or i32 %call10, 131074
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 15, i32 noundef %or11) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then7.if.end13_crit_edge, %pci_name.exit.if.end13_crit_edge
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_device(ptr noundef %13) #6
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %call16 = tail call i32 @pci_save_state(ptr noundef %15) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pwr_cmd.i) #6
  %16 = ptrtoint ptr %pwr_cmd.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %pwr_cmd.i, align 2, !annotation !130
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %pm_cap1.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 32
  %19 = ptrtoint ptr %pm_cap1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_cap1.i, align 1
  %conv2.i = zext i8 %20 to i32
  %add3.i = add nuw nsw i32 %conv2.i, 4
  %call4.i = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef %add3.i, ptr noundef nonnull %pwr_cmd.i) #6
  %21 = ptrtoint ptr %pwr_cmd.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pwr_cmd.i, align 2
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not5.i = icmp eq i16 %23, 0
  br i1 %tobool.not5.i, label %if.end13.if.end.i_crit_edge, label %if.end13.radeonfb_whack_power_state.exit_crit_edge

if.end13.radeonfb_whack_power_state.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeonfb_whack_power_state.exit

if.end13.if.end.i_crit_edge:                      ; preds = %if.end13
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end13.if.end.i_crit_edge
  %24 = phi i16 [ %35, %if.end.i.if.end.i_crit_edge ], [ %22, %if.end13.if.end.i_crit_edge ]
  %and4.i = and i16 %24, -4
  %or.i = or i16 %and4.i, 2
  %25 = ptrtoint ptr %pwr_cmd.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or.i, ptr %pwr_cmd.i, align 2
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %pm_cap8.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %pm_cap8.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pm_cap8.i, align 1
  %conv9.i = zext i8 %29 to i32
  %add10.i = add nuw nsw i32 %conv9.i, 4
  %call11.i = call i32 @pci_write_config_word(ptr noundef %27, i32 noundef %add10.i, i16 noundef zeroext %or.i) #6
  call void @msleep(i32 noundef 500) #6
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %pm_cap.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %pm_cap.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pm_cap.i, align 1
  %conv.i = zext i8 %33 to i32
  %add.i = add nuw nsw i32 %conv.i, 4
  %call.i = call i32 @pci_read_config_word(ptr noundef %31, i32 noundef %add.i, ptr noundef nonnull %pwr_cmd.i) #6
  %34 = ptrtoint ptr %pwr_cmd.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pwr_cmd.i, align 2
  %36 = and i16 %35, 2
  %tobool.not.i = icmp eq i16 %36, 0
  br i1 %tobool.not.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.radeonfb_whack_power_state.exit_crit_edge

if.end.i.radeonfb_whack_power_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeonfb_whack_power_state.exit

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

radeonfb_whack_power_state.exit:                  ; preds = %if.end.i.radeonfb_whack_power_state.exit_crit_edge, %if.end13.radeonfb_whack_power_state.exit_crit_edge
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 4
  %current_state.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 30
  %39 = ptrtoint ptr %current_state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %current_state.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pwr_cmd.i) #6
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 4
  %call18 = call i32 @pci_platform_power_transition(ptr noundef %41, i32 noundef 2) #6
  br label %cleanup

do.end21:                                         ; preds = %if.end
  br i1 %tobool.not.i.i56, label %if.end.i.i58, label %do.end21.pci_name.exit60_crit_edge

do.end21.pci_name.exit60_crit_edge:               ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit60

if.end.i.i58:                                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i57 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %42 = ptrtoint ptr %dev.i57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i57, align 4
  br label %pci_name.exit60

pci_name.exit60:                                  ; preds = %if.end.i.i58, %do.end21.pci_name.exit60_crit_edge
  %retval.0.i.i59 = phi ptr [ %43, %if.end.i.i58 ], [ %5, %do.end21.pci_name.exit60_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i59) #9
  %family26 = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %44 = ptrtoint ptr %family26 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %family26, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %45)
  %cmp28 = icmp ult i8 %45, 9
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %pci_name.exit60
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_full_reset_sdram(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_restore_regs(ptr noundef %rinfo)
  br label %cleanup

if.else31:                                        ; preds = %pci_name.exit60
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_restore_regs(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_full_reset_sdram(ptr noundef %rinfo)
  br label %cleanup

cleanup:                                          ; preds = %if.else31, %if.then30, %radeonfb_whack_power_state.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__INPLL(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_program_v2clk(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp = icmp ult i8 %1, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %and = and i32 %call, -4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %and) #6
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 43, i32 noundef 12) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 43, i32 noundef 12) #6
  %call2 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 43) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 42752, %if.else ], [ 48896, %if.then ]
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 42, i32 noundef %.sink) #6
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 44, i32 noundef 163956) #6
  %call3 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 42) #6
  %and4 = and i32 %call3, -3
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 42, i32 noundef %and4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  %call5 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 42) #6
  %and6 = and i32 %call5, -2
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 42, i32 noundef %and6) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  %call7 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %or = or i32 %call7, 3
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %or) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_disable_iopad(ptr nocapture noundef readonly %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65280) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 262144) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 8
  %add.ptr16 = getelementptr i8, ptr %9, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr24 = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 768) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %add.ptr28 = getelementptr i8, ptr %15, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base, align 8
  %add.ptr32 = getelementptr i8, ptr %17, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 768) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base, align 8
  %add.ptr36 = getelementptr i8, ptr %19, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #6, !srcloc !63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_low_current(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %5)
  %cmp = icmp ult i8 %5, 11
  %and = and i32 %3, 1946157055
  %or = or i32 %and, -2080374784
  %or3 = or i32 %3, 16512
  %reg.0 = select i1 %cmp, i32 %or, i32 %or3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %7 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_base, align 8
  %add.ptr5 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #6, !srcloc !63
  %call6 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 21) #6
  %or7 = and i32 %call6, -327711
  %and8 = or i32 %or7, 30
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 21, i32 noundef %and8) #6
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 8
  %add.ptr13 = getelementptr i8, ptr %10, i32 2188
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %12 = and i32 %11, -1073807112
  %13 = or i32 %12, 1073776647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %add.ptr23 = getelementptr i8, ptr %15, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %13) #6, !srcloc !63
  %16 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio_base, align 8
  %add.ptr27 = getelementptr i8, ptr %17, i32 676
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %19 = and i32 %18, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base, align 8
  %add.ptr36 = getelementptr i8, ptr %21, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %19) #6, !srcloc !63
  %22 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base, align 8
  %add.ptr40 = getelementptr i8, ptr %23, i32 88
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  %25 = and i32 %24, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base, align 8
  %add.ptr49 = getelementptr i8, ptr %27, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %25) #6, !srcloc !63
  %28 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base, align 8
  %add.ptr53 = getelementptr i8, ptr %29, i32 124
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  %31 = and i32 %30, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base, align 8
  %add.ptr62 = getelementptr i8, ptr %33, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %31) #6, !srcloc !63
  %34 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base, align 8
  %add.ptr66 = getelementptr i8, ptr %35, i32 2188
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  %37 = and i32 %36, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base, align 8
  %add.ptr75 = getelementptr i8, ptr %39, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %37) #6, !srcloc !63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_setup_for_suspend(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp = icmp ult i8 %1, 11
  %sclk_cntl.0.v = select i1 %cmp, i32 -256, i32 -16777224
  %sclk_cntl.0 = or i32 %sclk_cntl.0.v, %call
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %sclk_cntl.0) #6
  %call4 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 53) #6
  %or5 = or i32 %call4, 1792
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 53, i32 noundef %or5) #6
  %call6 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  %and = and i32 %call6, -2031617
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %and) #6
  %call7 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 8) #6
  %and8 = and i32 %call7, -262337
  %or9 = or i32 %and8, 262144
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 8, i32 noundef %or9) #6
  %call10 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 45) #6
  %and11 = and i32 %call10, -63681
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %and11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 720
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %5 = and i32 %4, 2130703359
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr17 = getelementptr i8, ptr %7, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %5) #6, !srcloc !63
  %call18 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 21) #6
  %or19 = or i32 %call18, 31
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 21, i32 noundef %or19) #6
  %call20 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 20) #6
  %and21 = and i32 %call20, -2131784960
  %or22 = or i32 %and21, 1049600
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 20, i32 noundef %or22) #6
  %call23 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 1) #6
  %call25 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 31) #6
  %or26 = or i32 %call25, 262144
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 31, i32 noundef %or26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base, align 8
  %add.ptr33 = getelementptr i8, ptr %9, i32 552
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %11 = and i32 %10, -4097
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr39 = getelementptr i8, ptr %13, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %11) #6, !srcloc !63
  %and40 = and i32 %call23, -534529
  %or41 = or i32 %and40, 524288
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 1, i32 noundef %or41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %add.ptr48 = getelementptr i8, ptr %15, i32 372
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %17 = and i32 %16, 16777215
  %18 = or i32 %17, 536870912
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr55 = getelementptr i8, ptr %20, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %18) #6, !srcloc !63
  %call56 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 21) #6
  %and57 = and i32 %call56, -8193
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 21, i32 noundef %and57) #6
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base, align 8
  %add.ptr61 = getelementptr i8, ptr %22, i32 3328
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  %24 = and i32 %23, -2005929729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 8
  %add.ptr70 = getelementptr i8, ptr %26, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %24) #6, !srcloc !63
  %27 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_base, align 8
  %add.ptr74 = getelementptr i8, ptr %28, i32 3336
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %30 = and i32 %29, -285474564
  %31 = or i32 %30, 64515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base, align 8
  %add.ptr84 = getelementptr i8, ptr %33, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %31) #6, !srcloc !63
  %call85 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 20) #6
  %call86 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 21) #6
  %call87 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 1) #6
  %34 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio_base, align 8
  %add.ptr91 = getelementptr i8, ptr %35, i32 3336
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  %or95 = or i32 %call85, 1048576
  %or96 = or i32 %call86, 196608
  %or97 = or i32 %call87, 524288
  %37 = and i32 %36, -285212673
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 20, i32 noundef %or95) #6
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 21, i32 noundef %or96) #6
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 1, i32 noundef %or97) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base, align 8
  %add.ptr103 = getelementptr i8, ptr %39, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %37) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base, align 8
  %add.ptr110 = getelementptr i8, ptr %41, i32 80
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  %43 = and i32 %42, -7
  %44 = or i32 %43, 4
  %45 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base, align 8
  %add.ptr117 = getelementptr i8, ptr %46, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %44) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio_base, align 8
  %add.ptr124 = getelementptr i8, ptr %48, i32 1016
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %50 = and i32 %49, -7
  %51 = or i32 %50, 4
  %52 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_base, align 8
  %add.ptr131 = getelementptr i8, ptr %53, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %51) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__OUTPLL(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_platform_power_transition(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_full_reset_sdram(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  %3 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 1016
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 636
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  %9 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base, align 8
  %add.ptr19 = getelementptr i8, ptr %10, i32 644
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  %12 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base, align 8
  %add.ptr26 = getelementptr i8, ptr %13, i32 648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base, align 8
  %add.ptr31 = getelementptr i8, ptr %16, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base, align 8
  %add.ptr36 = getelementptr i8, ptr %18, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base, align 8
  %add.ptr41 = getelementptr i8, ptr %20, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %21 = or i32 %2, 4
  %22 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base, align 8
  %add.ptr46 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %21) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void @arm_heavy_mb() #6
  %24 = or i32 %5, 4
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 8
  %add.ptr52 = getelementptr i8, ptr %26, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %24) #6, !srcloc !63
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %27 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %28)
  %cmp = icmp eq i8 %28, 13
  br i1 %cmp, label %while.body.preheader, label %if.else98

while.body.preheader:                             ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #6
  %59 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio_base, align 8
  %add.ptr57 = getelementptr i8, ptr %60, i32 376
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  %62 = and i32 %61, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void @arm_heavy_mb() #6
  %63 = or i32 %61, 65536
  %64 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio_base, align 8
  %add.ptr66 = getelementptr i8, ptr %65, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %63) #6, !srcloc !63
  %arrayidx.i = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 70
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 788594688) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %70 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %71 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio_base, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %72, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %70) #6, !srcloc !63
  %73 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i = getelementptr i8, ptr %74, i32 320
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  %and.i = and i32 %76, 3
  %77 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and.i, label %sw.epilog.thread.i [
    i32 1, label %sw.bb.i
    i32 2, label %while.body.preheader.sw.bb14.i_crit_edge
    i32 0, label %while.body.preheader.radeon_pm_enable_dll_m10.exit_crit_edge
  ]

while.body.preheader.radeon_pm_enable_dll_m10.exit_crit_edge: ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_pm_enable_dll_m10.exit

while.body.preheader.sw.bb14.i_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

sw.epilog.thread.i:                               ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_pm_enable_dll_m10.exit

sw.bb.i:                                          ; preds = %while.body.preheader
  %and2.i = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.radeon_pm_enable_dll_m10.exit_crit_edge, label %sw.bb.i.sw.bb14.i_crit_edge

sw.bb.i.sw.bb14.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

sw.bb.i.radeon_pm_enable_dll_m10.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %radeon_pm_enable_dll_m10.exit

sw.bb14.i:                                        ; preds = %sw.bb.i.sw.bb14.i_crit_edge, %while.body.preheader.sw.bb14.i_crit_edge
  %dll_sleep_mask.151.i = phi i32 [ -81, %sw.bb.i.sw.bb14.i_crit_edge ], [ -86, %while.body.preheader.sw.bb14.i_crit_edge ]
  %dll_reset_mask.149.i = phi i32 [ -161, %sw.bb.i.sw.bb14.i_crit_edge ], [ -171, %while.body.preheader.sw.bb14.i_crit_edge ]
  br label %radeon_pm_enable_dll_m10.exit

radeon_pm_enable_dll_m10.exit:                    ; preds = %sw.bb14.i, %sw.bb.i.radeon_pm_enable_dll_m10.exit_crit_edge, %sw.epilog.thread.i, %while.body.preheader.radeon_pm_enable_dll_m10.exit_crit_edge
  %dll_reset_mask.2.i = phi i32 [ %dll_reset_mask.149.i, %sw.bb14.i ], [ -11, %sw.bb.i.radeon_pm_enable_dll_m10.exit_crit_edge ], [ -1, %sw.epilog.thread.i ], [ -3, %while.body.preheader.radeon_pm_enable_dll_m10.exit_crit_edge ]
  %dll_sleep_mask.2.i = phi i32 [ %dll_sleep_mask.151.i, %sw.bb14.i ], [ -6, %sw.bb.i.radeon_pm_enable_dll_m10.exit_crit_edge ], [ -1, %sw.epilog.thread.i ], [ -2, %while.body.preheader.radeon_pm_enable_dll_m10.exit_crit_edge ]
  %call20.i = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 16) #6
  %and21.i = and i32 %call20.i, %dll_sleep_mask.2.i
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 16, i32 noundef %and21.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  %and23.i = and i32 %and21.i, %dll_reset_mask.2.i
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 16, i32 noundef %and23.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i.i397 = getelementptr i8, ptr %85, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i397, i32 436207616) #6, !srcloc !63
  %86 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %87, i32 508
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %89 = and i32 %88, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %91, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 469762048) #6, !srcloc !63
  %92 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio_base, align 8
  %add.ptr2.i13.i = getelementptr i8, ptr %93, i32 508
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i13.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %95 = and i32 %94, -4
  %96 = or i32 %89, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %98, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 436273152) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio_base, align 8
  %add.ptr4.i.i398 = getelementptr i8, ptr %100, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i398, i32 %96) #6, !srcloc !63
  %101 = or i32 %95, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %103, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 469827584) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio_base, align 8
  %add.ptr4.i18.i = getelementptr i8, ptr %105, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i18.i, i32 %101) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i20.i = getelementptr i8, ptr %107, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 436273152) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio_base, align 8
  %add.ptr4.i21.i = getelementptr i8, ptr %109, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i21.i, i32 %89) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %110 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %111, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 469827584) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_base, align 8
  %add.ptr4.i24.i = getelementptr i8, ptr %113, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24.i, i32 %95) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void @arm_heavy_mb() #6
  %115 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio_base, align 8
  %add.ptr72 = getelementptr i8, ptr %116, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 838873633) #6, !srcloc !63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %radeon_pm_enable_dll_m10.exit
  %sdram_mode_reg.0404 = phi i32 [ 556924978, %radeon_pm_enable_dll_m10.exit ], [ %sdram_mode_reg.1, %for.inc.for.body_crit_edge ]
  %i.0403 = phi i32 [ 0, %radeon_pm_enable_dll_m10.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx75 = getelementptr i32, ptr @radeon_pm_full_reset_sdram.default_mrtable, i32 %i.0403
  %117 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp76 = icmp eq i32 %118, -1
  br i1 %cmp76, label %for.body.for.body.i_crit_edge, label %if.else

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %cnt.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #6
  %120 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio_base, align 8
  %add.ptr.i399 = getelementptr i8, ptr %121, i32 336
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i399) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  %123 = and i32 %122, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i400 = icmp ne i32 %123, 0
  %inc.i = add nuw nsw i32 %cnt.03.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  %or.cond.i = select i1 %tobool.not.i400, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %and79 = and i32 %sdram_mode_reg.0404, 1879015424
  %or81 = or i32 %118, %and79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %124 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %125 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio_base, align 8
  %add.ptr86 = getelementptr i8, ptr %126, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %124) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.i.for.inc_crit_edge
  %sdram_mode_reg.1 = phi i32 [ %or81, %if.else ], [ %sdram_mode_reg.0404, %for.body.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0403, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %do.body87, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body87:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %128 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio_base, align 8
  %add.ptr91 = getelementptr i8, ptr %129, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %62) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %140(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %141(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %144(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %158 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %158(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #6
  br label %do.body276

if.else98:                                        ; preds = %entry
  %is_mobility = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 26
  %160 = ptrtoint ptr %is_mobility to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %is_mobility, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool99.not = icmp eq i32 %161, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %28)
  %cmp102 = icmp eq i8 %28, 5
  %or.cond = select i1 %tobool99.not, i1 %cmp102, i1 false
  br i1 %or.cond, label %if.then104, label %if.else156

if.then104:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio_base, align 8
  %add.ptr108 = getelementptr i8, ptr %163, i32 376
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %165 = or i32 %164, 65536
  %166 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio_base, align 8
  %add.ptr118 = getelementptr i8, ptr %167, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %165) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %168 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %168(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %170(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %171 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %171(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %175(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %176(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %179(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %181(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %182(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %189(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %191(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 214748000) #6
  %198 = and i32 %164, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %199 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio_base, align 8
  %add.ptr131 = getelementptr i8, ptr %200, i32 344
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  %202 = and i32 %201, -17
  %203 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio_base, align 8
  %add.ptr137 = getelementptr i8, ptr %204, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %202) #6, !srcloc !63
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 8194, i8 noundef zeroext 2)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 306, i8 noundef zeroext 2)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 50, i8 noundef zeroext 2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  tail call void @arm_heavy_mb() #6
  %205 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mmio_base, align 8
  %add.ptr144 = getelementptr i8, ptr %206, i32 344
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  %208 = or i32 %207, 16
  %209 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio_base, align 8
  %add.ptr150 = getelementptr i8, ptr %210, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %208) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void @arm_heavy_mb() #6
  %211 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mmio_base, align 8
  %add.ptr155 = getelementptr i8, ptr %212, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %198) #6, !srcloc !63
  br label %do.body276

if.else156:                                       ; preds = %if.else98
  br i1 %tobool99.not, label %if.else156.do.body276_crit_edge, label %land.lhs.true159

if.else156.do.body276_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body276

land.lhs.true159:                                 ; preds = %if.else156
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp162 = icmp eq i8 %28, 3
  %213 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mmio_base, align 8
  br i1 %cmp162, label %if.then164, label %if.then213

if.then164:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr168 = getelementptr i8, ptr %214, i32 324
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %216 = and i32 %215, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %217 = or i32 %215, 4096
  %218 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio_base, align 8
  %add.ptr178 = getelementptr i8, ptr %219, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %217) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %220 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mmio_base, align 8
  %add.ptr185 = getelementptr i8, ptr %221, i32 344
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  %223 = and i32 %222, -17
  %224 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mmio_base, align 8
  %add.ptr191 = getelementptr i8, ptr %225, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %223) #6, !srcloc !63
  tail call fastcc void @radeon_pm_enable_dll(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_yclk_mclk_sync(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 8192, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 8193, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 8194, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 306, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 50, i8 noundef zeroext 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %226 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio_base, align 8
  %add.ptr198 = getelementptr i8, ptr %227, i32 344
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %229 = or i32 %228, 16
  %230 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mmio_base, align 8
  %add.ptr204 = getelementptr i8, ptr %231, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %229) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %232 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mmio_base, align 8
  %add.ptr209 = getelementptr i8, ptr %233, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 %216) #6, !srcloc !63
  br label %do.body276

if.then213:                                       ; preds = %land.lhs.true159
  %add.ptr217 = getelementptr i8, ptr %214, i32 376
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  %235 = and i32 %234, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %236 = or i32 %234, 65536
  %237 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mmio_base, align 8
  %add.ptr227 = getelementptr i8, ptr %238, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227, i32 %236) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %239 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mmio_base, align 8
  %add.ptr234 = getelementptr i8, ptr %240, i32 344
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr234) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %242 = and i32 %241, -17
  %243 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio_base, align 8
  %add.ptr240 = getelementptr i8, ptr %244, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 %242) #6, !srcloc !63
  tail call fastcc void @radeon_pm_enable_dll(ptr noundef %rinfo)
  tail call fastcc void @radeon_pm_yclk_mclk_sync(ptr noundef %rinfo)
  %245 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %246)
  %cmp243 = icmp ult i8 %246, 9
  br i1 %cmp243, label %if.then245, label %if.else246

if.then245:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 8192, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 8193, i8 noundef zeroext 1)
  br label %do.body254.sink.split

if.else246:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %246)
  %cmp249 = icmp eq i8 %246, 10
  br i1 %cmp249, label %if.else246.do.body254.sink.split_crit_edge, label %if.else246.do.body254_crit_edge

if.else246.do.body254_crit_edge:                  ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body254

if.else246.do.body254.sink.split_crit_edge:       ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body254.sink.split

do.body254.sink.split:                            ; preds = %if.else246.do.body254.sink.split_crit_edge, %if.then245
  %.sink = phi i16 [ 8194, %if.then245 ], [ 8192, %if.else246.do.body254.sink.split_crit_edge ]
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext %.sink, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 306, i8 noundef zeroext 1)
  tail call fastcc void @radeon_pm_program_mode_reg(ptr noundef %rinfo, i16 noundef zeroext 50, i8 noundef zeroext 1)
  br label %do.body254

do.body254:                                       ; preds = %do.body254.sink.split, %if.else246.do.body254_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %247 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mmio_base, align 8
  %add.ptr260 = getelementptr i8, ptr %248, i32 344
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr260) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  %250 = or i32 %249, 16
  %251 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mmio_base, align 8
  %add.ptr266 = getelementptr i8, ptr %252, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr266, i32 %250) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %253 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mmio_base, align 8
  %add.ptr271 = getelementptr i8, ptr %254, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr271, i32 %235) #6, !srcloc !63
  br label %do.body276

do.body276:                                       ; preds = %do.body254, %if.then164, %if.else156.do.body276_crit_edge, %if.then104, %do.body87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %255 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmio_base, align 8
  %add.ptr280 = getelementptr i8, ptr %256, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 %2) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %257 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mmio_base, align 8
  %add.ptr285 = getelementptr i8, ptr %258, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 %5) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %259 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mmio_base, align 8
  %add.ptr290 = getelementptr i8, ptr %260, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr290, i32 %11) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %261 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %mmio_base, align 8
  %add.ptr295 = getelementptr i8, ptr %262, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr295, i32 %14) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %263 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mmio_base, align 8
  %add.ptr300 = getelementptr i8, ptr %264, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 %8) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %265(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %266(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %267 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %267(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %268 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %268(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %269 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %269(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %270 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %270(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %271 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %271(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %272 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %272(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %273(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %274(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %275(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %276 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %276(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %277(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %278 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %278(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %279 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %279(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_restore_regs(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %save_regs = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40
  %arrayidx = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, -2
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 42, i32 noundef %and) #6
  %2 = ptrtoint ptr %save_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %save_regs, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 21, i32 noundef %3) #6
  %arrayidx4 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 20, i32 noundef %5) #6
  %arrayidx6 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 18, i32 noundef %7) #6
  %arrayidx8 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 13, i32 noundef %9) #6
  %arrayidx10 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 4
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 1, i32 noundef %11) #6
  %arrayidx12 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 5
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 8, i32 noundef %13) #6
  %arrayidx14 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 6
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 45, i32 noundef %15) #6
  %arrayidx16 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 7
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 31, i32 noundef %17) #6
  %family = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 15
  %18 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %19)
  %cmp = icmp eq i8 %19, 13
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx19 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 34
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 53, i32 noundef %21) #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %arrayidx21 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 29
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %25 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %26, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %arrayidx25 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 30
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio_base, align 8
  %add.ptr27 = getelementptr i8, ptr %31, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %29) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %arrayidx31 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 31
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx31, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base, align 8
  %add.ptr33 = getelementptr i8, ptr %36, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %34) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %arrayidx37 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 32
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx37, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base, align 8
  %add.ptr39 = getelementptr i8, ptr %41, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %39) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %arrayidx43 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 33
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx43, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio_base, align 8
  %add.ptr45 = getelementptr i8, ptr %46, i32 828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %44) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %video_ram = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 18
  %47 = ptrtoint ptr %video_ram to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %video_ram, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio_base, align 8
  %add.ptr49 = getelementptr i8, ptr %51, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %49) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %arrayidx53 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 9
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx53, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio_base, align 8
  %add.ptr55 = getelementptr i8, ptr %56, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %54) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %arrayidx59 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 10
  %57 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx59, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio_base, align 8
  %add.ptr61 = getelementptr i8, ptr %61, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %59) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %arrayidx65 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 11
  %62 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx65, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio_base, align 8
  %add.ptr67 = getelementptr i8, ptr %66, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %64) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  %arrayidx71 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 12
  %67 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx71, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio_base, align 8
  %add.ptr73 = getelementptr i8, ptr %71, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %69) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %arrayidx77 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 13
  %72 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx77, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio_base, align 8
  %add.ptr79 = getelementptr i8, ptr %76, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %74) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %arrayidx83 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 14
  %77 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx83, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %80 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio_base, align 8
  %add.ptr85 = getelementptr i8, ptr %81, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %79) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %arrayidx89 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 15
  %82 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx89, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio_base, align 8
  %add.ptr91 = getelementptr i8, ptr %86, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %84) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @arm_heavy_mb() #6
  %arrayidx95 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 16
  %87 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx95, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_base, align 8
  %add.ptr97 = getelementptr i8, ptr %91, i32 372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %89) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %arrayidx101 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 17
  %92 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx101, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio_base, align 8
  %add.ptr103 = getelementptr i8, ptr %96, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %94) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %arrayidx107 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 18
  %97 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx107, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %100 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio_base, align 8
  %add.ptr109 = getelementptr i8, ptr %101, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %99) #6, !srcloc !63
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx, align 4
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 42, i32 noundef %103) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void @arm_heavy_mb() #6
  %arrayidx115 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 19
  %104 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx115, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %107 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio_base, align 8
  %add.ptr117 = getelementptr i8, ptr %108, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %106) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %arrayidx121 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 20
  %109 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx121, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio_base, align 8
  %add.ptr123 = getelementptr i8, ptr %113, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %111) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %arrayidx127 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 21
  %114 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx127, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %117 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio_base, align 8
  %add.ptr129 = getelementptr i8, ptr %118, i32 408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %116) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %arrayidx133 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 22
  %119 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx133, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %122 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_base, align 8
  %add.ptr135 = getelementptr i8, ptr %123, i32 428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %121) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %arrayidx139 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 23
  %124 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx139, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %127 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio_base, align 8
  %add.ptr141 = getelementptr i8, ptr %128, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %126) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %arrayidx145 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 24
  %129 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx145, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %132 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio_base, align 8
  %add.ptr147 = getelementptr i8, ptr %133, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %131) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %arrayidx151 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 25
  %134 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx151, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %137 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mmio_base, align 8
  %add.ptr153 = getelementptr i8, ptr %138, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %136) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void @arm_heavy_mb() #6
  %arrayidx157 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 26
  %139 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx157, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140)
  %142 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio_base, align 8
  %add.ptr159 = getelementptr i8, ptr %143, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %141) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %arrayidx163 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 27
  %144 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx163, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %147 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio_base, align 8
  %add.ptr165 = getelementptr i8, ptr %148, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %146) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %arrayidx169 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 28
  %149 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx169, align 4
  %151 = tail call i32 @llvm.bswap.i32(i32 %150)
  %152 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio_base, align 8
  %add.ptr171 = getelementptr i8, ptr %153, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr171, i32 %151) #6, !srcloc !63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_program_mode_reg(ptr nocapture noundef readonly %rinfo, i16 noundef zeroext %value, i8 noundef zeroext %delay_required) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 344
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  %3 = and i32 %2, 8454143
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i16 %value to i32
  %or = or i32 %4, %conv
  %or2 = or i32 %or, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #6, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %delay_required)
  %cmp = icmp ugt i8 %delay_required, 1
  br i1 %cmp, label %if.then, label %if.end17.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  %or7.c = or i32 %or, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or7.c)
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 8
  %add.ptr12.c = getelementptr i8, ptr %11, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.c, i32 %9) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  %and18.c65 = and i32 %or2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and18.c65)
  %14 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base, align 8
  %add.ptr23.c66 = getelementptr i8, ptr %15, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.c66, i32 %13) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  br label %if.then34

if.end17.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or7.c63 = or i32 %or, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or7.c63)
  %18 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base, align 8
  %add.ptr12.c64 = getelementptr i8, ptr %19, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.c64, i32 %17) #6, !srcloc !63
  %and18.c = and i32 %or2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %and18.c)
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base, align 8
  %add.ptr23.c = getelementptr i8, ptr %22, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.c, i32 %20) #6, !srcloc !63
  br label %do.cond36.preheader

do.body30:                                        ; preds = %do.cond36
  br i1 %cmp, label %do.body30.if.then34_crit_edge, label %do.body30.do.cond36_crit_edge

do.body30.do.cond36_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond36

do.body30.if.then34_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then34:                                        ; preds = %do.body30.if.then34_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  br label %do.cond36.preheader

do.cond36.preheader:                              ; preds = %if.then34, %if.end17.critedge
  br label %do.cond36

do.cond36:                                        ; preds = %do.cond36.preheader, %do.body30.do.cond36_crit_edge
  %24 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base, align 8
  %add.ptr40 = getelementptr i8, ptr %25, i32 336
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %27 = and i32 %26, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp45 = icmp eq i32 %27, 0
  br i1 %cmp45, label %do.body30, label %if.end48

if.end48:                                         ; preds = %do.cond36
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_enable_dll(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 15) #6
  %or1 = or i32 %call, 3
  %call2 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 16) #6
  %or6 = or i32 %call2, 196611
  %call7 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 17) #6
  %or11 = or i32 %call7, 196611
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 15, i32 noundef %or1) #6
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 16, i32 noundef %or6) #6
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 17, i32 noundef %or11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  %and = and i32 %or1, -65538
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 15, i32 noundef %and) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  %and12 = and i32 %call, -196612
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 15, i32 noundef %and12) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %and19 = and i32 %or6, -65538
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 16, i32 noundef %and19) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  %and20 = and i32 %call2, -196612
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 16, i32 noundef %and20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %and27 = and i32 %or11, -65538
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 17, i32 noundef %and27) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  %and28 = and i32 %call7, -196612
  tail call void @__OUTPLL(ptr noundef %rinfo, i32 noundef 17, i32 noundef %and28) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_pm_yclk_mclk_sync(ptr nocapture noundef readonly %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %mmio_base.i = getelementptr inbounds %struct.radeonfb_info, ptr %rinfo, i32 0, i32 6
  %0 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 201326592) #6, !srcloc !63
  %2 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %3, i32 508
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %5 = and i32 %4, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 234881024) #6, !srcloc !63
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr2.i13 = getelementptr i8, ptr %9, i32 508
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i13) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %11 = and i32 %10, -4
  %12 = or i32 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %14, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 201392128) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %16, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #6, !srcloc !63
  %17 = or i32 %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i17 = getelementptr i8, ptr %19, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 234946560) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i18 = getelementptr i8, ptr %21, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i18, i32 %17) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i20 = getelementptr i8, ptr %23, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 201392128) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i21 = getelementptr i8, ptr %25, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i21, i32 %5) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %27, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 234946560) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base.i, align 8
  %add.ptr4.i24 = getelementptr i8, ptr %29, i32 508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24, i32 %11) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @console_trylock() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_check_power_loss(ptr noundef %rinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp.not = icmp eq i32 %1, %call
  br i1 %cmp.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call3)
  %cmp4.not = icmp eq i32 %3, %call3
  br i1 %cmp4.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6 = getelementptr %struct.radeonfb_info, ptr %rinfo, i32 0, i32 40, i32 3
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call i32 @__INPLL(ptr noundef %rinfo, i32 noundef 13) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call7)
  %cmp8 = icmp ne i32 %5, %call7
  %phi.cast = zext i1 %cmp8 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %6 = phi i32 [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_write_mode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeonfb_engine_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_radeon_msleep(ptr noundef, i32 noundef) local_unnamed_addr #4

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @radeonfb_pci_pm_ops, !1, !"radeonfb_pci_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2809, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2842, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @radeonfb_pm_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @radeonfb_pm_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2845, i32 3}
!10 = !{ptr @radeonfb_pm_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @radeonfb_pm_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2910, i32 3}
!14 = !{ptr @radeonfb_pm_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeonfb_pm_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2916, i32 3}
!18 = !{ptr @radeonfb_pm_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @radeonfb_pm_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2623, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @radeonfb_pci_suspend_late._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @radeonfb_pci_suspend_late._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2550, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @radeon_set_suspend._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @radeon_set_suspend._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2596, i32 3}
!32 = !{ptr @radeon_set_suspend._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @radeon_set_suspend._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @radeon_pm_full_reset_sdram.default_mrtable, !35, !"default_mrtable", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 1271, i32 20}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2741, i32 2}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @radeonfb_pci_resume._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @radeonfb_pci_resume._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/aty/radeon_pm.c", i32 2754, i32 5}
!43 = !{ptr @radeonfb_pci_resume._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @radeonfb_pci_resume._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 5089136}
!55 = !{i64 2156431690}
!56 = !{i64 2156433557}
!57 = !{i64 2156434791}
!58 = !{i64 2156435380}
!59 = !{i64 2156436114}
!60 = !{i64 2156436789}
!61 = !{i64 2156598305}
!62 = !{i64 2156599270}
!63 = !{i64 5088718}
!64 = !{i64 2156600722}
!65 = !{i64 2156601707}
!66 = !{i64 2156603141}
!67 = !{i64 2156604118}
!68 = !{i64 2156605545}
!69 = !{i64 2156606510}
!70 = !{i64 2156440167}
!71 = !{i64 2156440734}
!72 = !{i64 2156441301}
!73 = !{i64 2156441868}
!74 = !{i64 2156442435}
!75 = !{i64 2156443002}
!76 = !{i64 2156443569}
!77 = !{i64 2156444136}
!78 = !{i64 2156444703}
!79 = !{i64 2156445270}
!80 = !{i64 2156445837}
!81 = !{i64 2156446404}
!82 = !{i64 2156446971}
!83 = !{i64 2156447538}
!84 = !{i64 2156448105}
!85 = !{i64 2156448672}
!86 = !{i64 2156449239}
!87 = !{i64 2156449806}
!88 = !{i64 2156450373}
!89 = !{i64 2156450940}
!90 = !{i64 2156451507}
!91 = !{i64 2156452074}
!92 = !{i64 2156452641}
!93 = !{i64 2156453208}
!94 = !{i64 2156453810}
!95 = !{i64 2156454377}
!96 = !{i64 2156454944}
!97 = !{i64 2156455511}
!98 = !{i64 2156456078}
!99 = !{i64 2156456645}
!100 = !{i64 2156457212}
!101 = !{i64 2156457779}
!102 = !{i64 2156458521}
!103 = !{i64 2156459088}
!104 = !{i64 2156459655}
!105 = !{i64 2156460222}
!106 = !{i64 2156460789}
!107 = !{i64 2156461356}
!108 = !{i64 2156461923}
!109 = !{i64 2156462490}
!110 = !{i64 2156463057}
!111 = !{i64 2156463624}
!112 = !{i64 2156464191}
!113 = !{i64 2156464758}
!114 = !{i64 2156465325}
!115 = !{i64 2156465892}
!116 = !{i64 2156439285}
!117 = !{i64 2156438531}
!118 = !{i64 2156466823}
!119 = !{i64 2156467390}
!120 = !{i64 2156467957}
!121 = !{i64 2156468524}
!122 = !{i64 2156469091}
!123 = !{i64 2156469658}
!124 = !{i64 2156470225}
!125 = !{i64 2156470792}
!126 = !{i64 2156471359}
!127 = !{i64 2156472031}
!128 = !{i64 2156472598}
!129 = !{i64 2156473165}
!130 = !{!"auto-init"}
!131 = !{i64 2156488455}
!132 = !{i64 2156488952}
!133 = !{i64 2156489449}
!134 = !{i64 2156489946}
!135 = !{i64 2156490443}
!136 = !{i64 2156490940}
!137 = !{i64 2156491437}
!138 = !{i64 2156491934}
!139 = !{i64 2156492431}
!140 = !{i64 2156492928}
!141 = !{i64 2156498425}
!142 = !{i64 2156498728}
!143 = !{i64 2156499626}
!144 = !{i64 2156499976}
!145 = !{i64 2156500727}
!146 = !{i64 2156501023}
!147 = !{i64 2156501774}
!148 = !{i64 2156502062}
!149 = !{i64 2156502813}
!150 = !{i64 2156503100}
!151 = !{i64 2156503851}
!152 = !{i64 2156504140}
!153 = !{i64 2156506842}
!154 = !{i64 2156507891}
!155 = !{i64 2156509931}
!156 = !{i64 2156510904}
!157 = !{i64 2156512481}
!158 = !{i64 2156513508}
!159 = !{i64 2156514225}
!160 = !{i64 2156514667}
!161 = !{i64 2156515448}
!162 = !{i64 2156515900}
!163 = !{i64 2156516783}
!164 = !{i64 2156517322}
!165 = !{i64 2156518980}
!166 = !{i64 2156519985}
!167 = !{i64 2156521478}
!168 = !{i64 2156522483}
!169 = !{i64 2156554337}
!170 = !{i64 2156554904}
!171 = !{i64 2156555471}
!172 = !{i64 2156556038}
!173 = !{i64 2156556605}
!174 = !{i64 2156556879}
!175 = !{i64 2156557331}
!176 = !{i64 2156557783}
!177 = !{i64 2156558301}
!178 = !{i64 2156558902}
!179 = !{i64 2156561442}
!180 = !{i64 2156561800}
!181 = !{i64 2156437550}
!182 = !{i64 2156438061}
!183 = !{i64 2156550856}
!184 = !{i64 2156562368}
!185 = !{i64 2156540415}
!186 = !{i64 2156562921}
!187 = !{i64 2156564726}
!188 = !{i64 2156566808}
!189 = !{i64 2156567178}
!190 = !{i64 2156570157}
!191 = !{i64 2156571120}
!192 = !{i64 2156572539}
!193 = !{i64 2156573498}
!194 = !{i64 2156573824}
!195 = !{i64 2156574608}
!196 = !{i64 2156574932}
!197 = !{i64 2156576580}
!198 = !{i64 2156577543}
!199 = !{i64 2156578962}
!200 = !{i64 2156579921}
!201 = !{i64 2156580247}
!202 = !{i64 2156581031}
!203 = !{i64 2156581389}
!204 = !{i64 2156583052}
!205 = !{i64 2156584015}
!206 = !{i64 2156585434}
!207 = !{i64 2156586393}
!208 = !{i64 2156586719}
!209 = !{i64 2156587230}
!210 = !{i64 2156587734}
!211 = !{i64 2156588239}
!212 = !{i64 2156588743}
!213 = !{i64 2156589254}
!214 = !{i64 2156474216}
!215 = !{i64 2156474763}
!216 = !{i64 2156475310}
!217 = !{i64 2156475857}
!218 = !{i64 2156476404}
!219 = !{i64 2156476943}
!220 = !{i64 2156477476}
!221 = !{i64 2156478020}
!222 = !{i64 2156478567}
!223 = !{i64 2156479114}
!224 = !{i64 2156479661}
!225 = !{i64 2156480208}
!226 = !{i64 2156480755}
!227 = !{i64 2156481302}
!228 = !{i64 2156481849}
!229 = !{i64 2156482396}
!230 = !{i64 2156483005}
!231 = !{i64 2156483552}
!232 = !{i64 2156484099}
!233 = !{i64 2156484646}
!234 = !{i64 2156485193}
!235 = !{i64 2156485740}
!236 = !{i64 2156486287}
!237 = !{i64 2156486834}
!238 = !{i64 2156487381}
!239 = !{i64 2156487928}
!240 = !{i64 2156527146}
!241 = !{i64 2156527481}
!242 = !{i64 2156529298}
!243 = !{i64 2156531115}
!244 = !{i64 2156534475}
