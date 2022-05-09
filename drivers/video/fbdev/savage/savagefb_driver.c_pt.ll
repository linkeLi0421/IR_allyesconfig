; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/savage/savagefb_driver.c_pt.bc'
source_filename = "../drivers/video/fbdev/savage/savagefb_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.savagefb_par = type { ptr, i32, %struct.savagefb_i2c_chan, %struct.savage_reg, %struct.savage_reg, %struct.savage_reg, %struct.vgastate, %struct.mutex, ptr, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, %struct.anon.86, %struct.anon.87, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, [256 x %struct.anon.88], i32, i32 }
%struct.savagefb_i2c_chan = type { ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.savage_reg = type { i8, [25 x i8], [5 x i8], [9 x i8], [21 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [22 x i32], i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.86 = type { ptr, i32, i32, i32 }
%struct.anon.87 = type { ptr, i32, i32 }
%struct.anon.88 = type { i16, i16, i16, i16 }

@savagefb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @savagefb_devices, ptr @savagefb_probe, ptr @savagefb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @savagefb_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_savagefb__305_2561_savagefb_init6 = internal global ptr @savagefb_init, section ".initcall6.init", align 4
@__exitcall_savage_done = internal global ptr @savage_done, section ".exitcall.exit", align 4
@__param_str_mode_option = internal constant [21 x i8] c"savagefb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype306 = internal constant [36 x i8] c"savagefb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option307 = internal constant [53 x i8] c"savagefb.parm=mode_option:Specify initial video mode\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"savagefb\00", [23 x i8] zeroinitializer }, align 32
@savagefb_devices = internal constant { [24 x %struct.pci_device_id], [192 x i8] } { [24 x %struct.pci_device_id] [%struct.pci_device_id { i32 21299, i32 35874, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35876, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35878, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35882, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35883, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35884, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35885, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35886, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35887, i32 -1, i32 -1, i32 0, i32 0, i32 140, i32 0 }, %struct.pci_device_id { i32 21299, i32 35362, i32 -1, i32 -1, i32 0, i32 0, i32 128, i32 0 }, %struct.pci_device_id { i32 21299, i32 35360, i32 -1, i32 -1, i32 0, i32 0, i32 129, i32 0 }, %struct.pci_device_id { i32 21299, i32 35361, i32 -1, i32 -1, i32 0, i32 0, i32 130, i32 0 }, %struct.pci_device_id { i32 21299, i32 37122, i32 -1, i32 -1, i32 0, i32 0, i32 131, i32 0 }, %struct.pci_device_id { i32 21299, i32 35856, i32 -1, i32 -1, i32 0, i32 0, i32 132, i32 0 }, %struct.pci_device_id { i32 21299, i32 35857, i32 -1, i32 -1, i32 0, i32 0, i32 133, i32 0 }, %struct.pci_device_id { i32 21299, i32 35858, i32 -1, i32 -1, i32 0, i32 0, i32 134, i32 0 }, %struct.pci_device_id { i32 21299, i32 35859, i32 -1, i32 -1, i32 0, i32 0, i32 135, i32 0 }, %struct.pci_device_id { i32 21299, i32 35365, i32 -1, i32 -1, i32 0, i32 0, i32 136, i32 0 }, %struct.pci_device_id { i32 21299, i32 35366, i32 -1, i32 -1, i32 0, i32 0, i32 137, i32 0 }, %struct.pci_device_id { i32 21299, i32 36097, i32 -1, i32 -1, i32 0, i32 0, i32 138, i32 0 }, %struct.pci_device_id { i32 21299, i32 36098, i32 -1, i32 -1, i32 0, i32 0, i32 139, i32 0 }, %struct.pci_device_id { i32 21299, i32 36099, i32 -1, i32 -1, i32 0, i32 0, i32 141, i32 0 }, %struct.pci_device_id { i32 21299, i32 36100, i32 -1, i32 -1, i32 0, i32 0, i32 142, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@savagefb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @savagefb_suspend, ptr @savagefb_resume, ptr @savagefb_freeze, ptr @savagefb_resume, ptr @savagefb_hibernate, ptr @savagefb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@savagefb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&par->open_lock\00", [16 x i8] zeroinitializer }, align 32
@savagefb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013cannot request PCI regions\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"savagefb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/video/fbdev/savage/savagefb_driver.c\00", [51 x i8] zeroinitializer }, align 32
@savagefb_probe._entry_ptr = internal global ptr @savagefb_probe._entry, section ".printk_index", align 4
@savagefb_var800x600x8 = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 800, i32 600, i32 800, i32 600, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, i32 25000, i32 88, i32 40, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@savagefb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014No CVT mode found for panel\0A\00", [33 x i8] zeroinitializer }, align 32
@savagefb_probe._entry_ptr.7 = internal global ptr @savagefb_probe._entry.5, section ".printk_index", align 4
@savagefb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016savagefb v0.4.0_2.6: %dkB VRAM, using %dx%d, %d.%03dkHz, %dHz\0A\00", [63 x i8] zeroinitializer }, align 32
@savagefb_probe._entry_ptr.10 = internal global ptr @savagefb_probe._entry.8, section ".printk_index", align 4
@savagefb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016fb: S3 %s frame buffer device\0A\00", [63 x i8] zeroinitializer }, align 32
@savagefb_probe._entry_ptr.13 = internal global ptr @savagefb_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SuperSavage\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Savage3D\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Savage3D-MV\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Savage2000\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Savage/MX-MV\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Savage/MX\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Savage/IX-MV\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Savage/IX\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ProSavagePM\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ProSavageKM\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TwisterP\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TwisterK\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ProSavageDDR\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ProSavage8\00", [21 x i8] zeroinitializer }, align 32
@savagefb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @savagefb_open, ptr @savagefb_release, ptr null, ptr null, ptr @savagefb_check_var, ptr @savagefb_set_par, ptr @savagefb_setcolreg, ptr null, ptr @savagefb_blank, ptr @savagefb_pan_display, ptr @savagefb_fillrect, ptr @savagefb_copyarea, ptr @savagefb_imageblit, ptr null, ptr @savagefb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@SavageCalcClock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013invalid frequency %ld Khz\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SavageCalcClock\00", [16 x i8] zeroinitializer }, align 32
@SavageCalcClock._entry_ptr = internal global ptr @SavageCalcClock._entry, section ".printk_index", align 4
@SavageCalcClock._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@SavageCalcClock._entry_ptr.32 = internal global ptr @SavageCalcClock._entry.31, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@savage_map_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"savagefb: unable to map memory mapped IO\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"savage_map_mmio\00", [16 x i8] zeroinitializer }, align 32
@savage_map_mmio._entry_ptr = internal global ptr @savage_map_mmio._entry, section ".printk_index", align 4
@savage_map_mmio._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016savagefb: mapped io at %p\0A\00", [35 x i8] zeroinitializer }, align 32
@savage_map_mmio._entry_ptr.37 = internal global ptr @savage_map_mmio._entry.35, section ".printk_index", align 4
@savage_init_hw.RamSavage3D = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\08\04\04\02", [28 x i8] zeroinitializer }, align 32
@savage_init_hw.RamSavage4 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\02\04\08\0C\10 @ ", [24 x i8] zeroinitializer }, align 32
@savage_init_hw.RamSavageMX = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\02\08\04\10\08\10\04\10", [24 x i8] zeroinitializer }, align 32
@savage_init_hw.RamSavageNB = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04\08\10 \02\02", [24 x i8] zeroinitializer }, align 32
@savage_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016savagefb: probed videoram:  %dk\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"savage_init_hw\00", [17 x i8] zeroinitializer }, align 32
@savage_init_hw._entry_ptr = internal global ptr @savage_init_hw._entry, section ".printk_index", align 4
@savage_init_hw._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 1935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016savagefb: Detected current MCLK value of %d kHz\0A\00", [45 x i8] zeroinitializer }, align 32
@savage_init_hw._entry_ptr.42 = internal global ptr @savage_init_hw._entry.40, section ".printk_index", align 4
@savage_init_hw._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"savagefb: Digital Flat Panel Detected\0A\00", [57 x i8] zeroinitializer }, align 32
@savage_init_hw._entry_ptr.45 = internal global ptr @savage_init_hw._entry.43, section ".printk_index", align 4
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TFT\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DSTN\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STN\00", [28 x i8] zeroinitializer }, align 32
@savage_init_hw._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.39, ptr @.str.4, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016savagefb: %dx%d %s LCD panel detected %s\0A\00", [52 x i8] zeroinitializer }, align 32
@savage_init_hw._entry_ptr.52 = internal global ptr @savage_init_hw._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"and active\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"but not active\00", [17 x i8] zeroinitializer }, align 32
@savage_init_hw._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.4, i32 2010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016savagefb: Limiting video mode to %dx%d\0A\00", [54 x i8] zeroinitializer }, align 32
@savage_init_hw._entry_ptr.57 = internal global ptr @savage_init_hw._entry.55, section ".printk_index", align 4
@savage_map_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 1776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"savagefb: unable to map screen memory\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"savage_map_video\00", [47 x i8] zeroinitializer }, align 32
@savage_map_video._entry_ptr = internal global ptr @savage_map_video._entry, section ".printk_index", align 4
@savage_map_video._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 1780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016savagefb: mapped framebuffer at %p, pbase == %x\0A\00", [45 x i8] zeroinitializer }, align 32
@savage_map_video._entry_ptr.62 = internal global ptr @savage_map_video._entry.60, section ".printk_index", align 4
@savagefb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Mode (%dx%d) larger than the LCD panel (%dx%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"savagefb_check_var\00", [45 x i8] zeroinitializer }, align 32
@savagefb_check_var._entry_ptr = internal global ptr @savagefb_check_var._entry, section ".printk_index", align 4
@.str.65 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142]
@__sancov_gen_cov_switch_values.66 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.69 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 800, i64 1024, i64 1152, i64 1280, i64 1600]
@__sancov_gen_cov_switch_values.73 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"savagefb_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2513, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 67, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2514, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"savagefb_devices\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2438, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"savagefb_pm_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2427, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2182, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2188, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"savagefb_var800x600x8\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1662, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2234, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2287, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2301, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2058, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2066, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2070, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2074, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2078, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2082, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2086, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2090, i32 30 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2094, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2098, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2102, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2106, i32 30 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2110, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2114, i32 30 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"savagefb_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1639, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 424, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 428, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1729, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1732, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"RamSavage3D\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1811, i32 23 }
@___asan_gen_.206 = private unnamed_addr constant [11 x i8] c"RamSavage4\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1812, i32 23 }
@___asan_gen_.209 = private unnamed_addr constant [12 x i8] c"RamSavageMX\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1813, i32 23 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"RamSavageNB\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1814, i32 23 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1887, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1934, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1949, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1992, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1994, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1996, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1999, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2009, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1776, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 1779, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 930, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [48 x i8] c"../drivers/video/fbdev/savage/savagefb_driver.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 2540, i32 38 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @SavageCalcClock._entry, ptr @SavageCalcClock._entry.31, ptr @SavageCalcClock._entry_ptr, ptr @SavageCalcClock._entry_ptr.32, ptr @__UNIQUE_ID_mode_option307, ptr @__UNIQUE_ID_mode_optiontype306, ptr @__exitcall_savage_done, ptr @__initcall__kmod_savagefb__305_2561_savagefb_init6, ptr @__param_mode_option, ptr @savage_done, ptr @savage_init_hw._entry, ptr @savage_init_hw._entry.40, ptr @savage_init_hw._entry.43, ptr @savage_init_hw._entry.50, ptr @savage_init_hw._entry.55, ptr @savage_init_hw._entry_ptr, ptr @savage_init_hw._entry_ptr.42, ptr @savage_init_hw._entry_ptr.45, ptr @savage_init_hw._entry_ptr.52, ptr @savage_init_hw._entry_ptr.57, ptr @savage_map_mmio._entry, ptr @savage_map_mmio._entry.35, ptr @savage_map_mmio._entry_ptr, ptr @savage_map_mmio._entry_ptr.37, ptr @savage_map_video._entry, ptr @savage_map_video._entry.60, ptr @savage_map_video._entry_ptr, ptr @savage_map_video._entry_ptr.62, ptr @savagefb_check_var._entry, ptr @savagefb_check_var._entry_ptr, ptr @savagefb_probe._entry, ptr @savagefb_probe._entry.11, ptr @savagefb_probe._entry.5, ptr @savagefb_probe._entry.8, ptr @savagefb_probe._entry_ptr, ptr @savagefb_probe._entry_ptr.10, ptr @savagefb_probe._entry_ptr.13, ptr @savagefb_probe._entry_ptr.7, ptr @savagefb_driver, ptr @mode_option, ptr @.str, ptr @savagefb_devices, ptr @savagefb_pm_ops, ptr @savagefb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @savagefb_var800x600x8, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @savagefb_ops, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @savage_init_hw.RamSavage3D, ptr @savage_init_hw.RamSavage4, ptr @savage_init_hw.RamSavageMX, ptr @savage_init_hw.RamSavageNB, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_devices to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_var800x600x8 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SavageCalcClock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SavageCalcClock._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_map_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_map_mmio._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw.RamSavage3D to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw.RamSavage4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw.RamSavageMX to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw.RamSavageNB to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_init_hw._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_map_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savage_map_video._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @savagefb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @savage_done() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @savagefb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #8
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %option, align 4, !annotation !156
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %option, align 4
  call fastcc void @savagefb_setup(ptr noundef %2) #11
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @savagefb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %cvt_mode = alloca %struct.fb_videomode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call = tail call ptr @framebuffer_alloc(i32 noundef 4512, ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %par2 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 30
  %0 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par2, align 4
  %open_lock = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @savagefb_probe.__key) #8
  %call3 = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.failed_enable_crit_edge

if.end.failed_enable_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_enable

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %failed_enable

if.end15:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %3, align 8
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type.i, align 4
  %type_aux.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 4
  %6 = ptrtoint ptr %type_aux.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type_aux.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 7
  %7 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 8
  %8 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %ywrapstep.i, align 4
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data.i, align 4
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 12
  %11 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %accel.i, align 4
  %12 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end15.sw.epilog.i_crit_edge [
    i32 140, label %sw.bb.i
    i32 128, label %sw.bb10.i
    i32 129, label %sw.bb16.i
    i32 130, label %sw.bb22.i
    i32 131, label %sw.bb28.i
    i32 132, label %sw.bb34.i
    i32 133, label %sw.bb40.i
    i32 134, label %sw.bb46.i
    i32 135, label %sw.bb52.i
    i32 136, label %sw.bb58.i
    i32 137, label %sw.bb64.i
    i32 138, label %sw.bb70.i
    i32 139, label %sw.bb76.i
    i32 141, label %sw.bb82.i
    i32 142, label %sw.bb88.i
  ]

if.end15.sw.epilog.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %chip.i, align 4
  %14 = call ptr @memcpy(ptr %fix.i, ptr @.str.14, i32 12)
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip11.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %chip11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %chip11.i, align 4
  %16 = ptrtoint ptr %fix.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 6008213538607543296, ptr %fix.i, align 1
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip17.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %chip17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %chip17.i, align 4
  %18 = call ptr @memcpy(ptr %fix.i, ptr @.str.16, i32 9)
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip23.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %chip23.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %chip23.i, align 4
  %20 = call ptr @memcpy(ptr %fix.i, ptr @.str.17, i32 12)
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip29.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %chip29.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %chip29.i, align 4
  %22 = call ptr @memcpy(ptr %fix.i, ptr @.str.18, i32 11)
  br label %sw.epilog.i

sw.bb34.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip35.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %chip35.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %chip35.i, align 4
  %24 = call ptr @memcpy(ptr %fix.i, ptr @.str.19, i32 13)
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip41.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %chip41.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %chip41.i, align 4
  %26 = call ptr @memcpy(ptr %fix.i, ptr @.str.20, i32 10)
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip47.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %chip47.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %chip47.i, align 4
  %28 = call ptr @memcpy(ptr %fix.i, ptr @.str.21, i32 13)
  br label %sw.epilog.i

sw.bb52.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip53.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %chip53.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %chip53.i, align 4
  %30 = call ptr @memcpy(ptr %fix.i, ptr @.str.22, i32 10)
  br label %sw.epilog.i

sw.bb58.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip59.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %chip59.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %chip59.i, align 4
  %32 = call ptr @memcpy(ptr %fix.i, ptr @.str.23, i32 12)
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip65.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %chip65.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %chip65.i, align 4
  %34 = call ptr @memcpy(ptr %fix.i, ptr @.str.24, i32 12)
  br label %sw.epilog.i

sw.bb70.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip71.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %chip71.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %chip71.i, align 4
  %36 = call ptr @memcpy(ptr %fix.i, ptr @.str.25, i32 9)
  br label %sw.epilog.i

sw.bb76.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip77.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %chip77.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %chip77.i, align 4
  %38 = call ptr @memcpy(ptr %fix.i, ptr @.str.26, i32 9)
  br label %sw.epilog.i

sw.bb82.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip83.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %chip83.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %chip83.i, align 4
  %40 = call ptr @memcpy(ptr %fix.i, ptr @.str.27, i32 13)
  br label %sw.epilog.i

sw.bb88.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %chip89.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %chip89.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6, ptr %chip89.i, align 4
  %42 = call ptr @memcpy(ptr %fix.i, ptr @.str.28, i32 11)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb88.i, %sw.bb82.i, %sw.bb76.i, %sw.bb70.i, %sw.bb64.i, %sw.bb58.i, %sw.bb52.i, %sw.bb46.i, %sw.bb40.i, %sw.bb34.i, %sw.bb28.i, %sw.bb22.i, %sw.bb16.i, %sw.bb10.i, %sw.bb.i, %if.end15.sw.epilog.i_crit_edge
  %chip94.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %chip94.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chip94.i, align 4
  %45 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %SavageWaitIdle.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 31
  %47 = ptrtoint ptr %SavageWaitIdle.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @savage3D_waitidle, ptr %SavageWaitIdle.i, align 4
  br label %if.end110.i

if.else.i:                                        ; preds = %sw.epilog.i
  %48 = add i32 %44, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %48)
  %49 = icmp ult i32 %48, 5
  %SavageWaitIdle105.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 31
  br i1 %49, label %if.then104.i, label %if.else107.i

if.then104.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %SavageWaitIdle105.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @savage4_waitidle, ptr %SavageWaitIdle105.i, align 4
  br label %if.end110.i

if.else107.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %SavageWaitIdle105.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @savage2000_waitidle, ptr %SavageWaitIdle105.i, align 4
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.else107.i, %if.then104.i, %if.then.i
  %savage4_waitfifo.sink.i = phi ptr [ @savage4_waitfifo, %if.then104.i ], [ @savage2000_waitfifo, %if.else107.i ], [ @savage3D_waitfifo, %if.then.i ]
  %SavageWaitFifo106.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 32
  %52 = ptrtoint ptr %SavageWaitFifo106.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %savage4_waitfifo.sink.i, ptr %SavageWaitFifo106.i, align 8
  %nonstd.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 12
  %53 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %nonstd.i, align 4
  %activate.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 13
  %54 = ptrtoint ptr %activate.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %activate.i, align 4
  %width.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 15
  %55 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 14
  %56 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %height.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 16
  %57 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %accel_flags.i, align 4
  %fbops.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 20
  %58 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @savagefb_ops, ptr %fbops.i, align 4
  %flags.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 2
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 12288, ptr %flags.i, align 4
  %pseudo_palette.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 9
  %pseudo_palette116.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 27
  %60 = ptrtoint ptr %pseudo_palette116.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pseudo_palette.i, ptr %pseudo_palette116.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 8192) #13
  %pixmap.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 10
  %62 = ptrtoint ptr %pixmap.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i.i.i, ptr %pixmap.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end110.i.failed_init_crit_edge, label %if.then120.i

if.end110.i.failed_init_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_init

if.then120.i:                                     ; preds = %if.end110.i
  %size.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8192, ptr %size.i, align 4
  %scan_align.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 10, i32 4
  %64 = ptrtoint ptr %scan_align.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %scan_align.i, align 4
  %buf_align.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 10, i32 3
  %65 = ptrtoint ptr %buf_align.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %buf_align.i, align 4
  %access_align.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 10, i32 5
  %66 = ptrtoint ptr %access_align.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32, ptr %access_align.i, align 4
  %cmap.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 12
  %call125.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.i)
  %tobool126.not.i = icmp eq i32 %call125.i, 0
  br i1 %tobool126.not.i, label %if.end19, label %if.else129.i

if.else129.i:                                     ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %pixmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pixmap.i, align 4
  tail call void @kfree(ptr noundef %68) #8
  br label %failed_init

if.end19:                                         ; preds = %if.then120.i
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %70, 1792
  store i32 %or.i, ptr %flags.i, align 4
  %71 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %par2, align 4
  %chip.i238 = getelementptr inbounds %struct.savagefb_par, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %chip.i238 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %chip.i238, align 4
  %75 = add i32 %74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %76 = icmp ult i32 %75, 2
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %72, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 47
  %79 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %resource.i, align 8
  %add.i = add i32 %80, 16777216
  %.sink.i = select i1 %76, i32 %add.i, i32 %80
  %81 = getelementptr inbounds %struct.savagefb_par, ptr %72, i32 0, i32 25, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink.i, ptr %81, align 4
  %mmio11.i = getelementptr inbounds %struct.savagefb_par, ptr %72, i32 0, i32 25
  %len.i = getelementptr inbounds %struct.savagefb_par, ptr %72, i32 0, i32 25, i32 2
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 524288, ptr %len.i, align 4
  %call.i = tail call ptr @ioremap(i32 noundef %.sink.i, i32 noundef 524288) #8
  %84 = ptrtoint ptr %mmio11.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call.i, ptr %mmio11.i, align 4
  %tobool.not.i239 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i239, label %savage_map_mmio.exit, label %if.end23

savage_map_mmio.exit:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %failed_mmio

if.end23:                                         ; preds = %if.end19
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %call.i) #12
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %81, align 4
  %mmio_start.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 10
  %87 = ptrtoint ptr %mmio_start.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %mmio_start.i, align 4
  %88 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i, align 4
  %mmio_len.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 11
  %90 = ptrtoint ptr %mmio_len.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %mmio_len.i, align 4
  %91 = ptrtoint ptr %mmio11.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio11.i, align 4
  %add.ptr.i = getelementptr i8, ptr %92, i32 65536
  %bci_base.i = getelementptr inbounds %struct.savagefb_par, ptr %72, i32 0, i32 26
  %93 = ptrtoint ptr %bci_base.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr.i, ptr %bci_base.i, align 8
  %bci_ptr.i = getelementptr inbounds %struct.savagefb_par, ptr %72, i32 0, i32 27
  %94 = ptrtoint ptr %bci_ptr.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %bci_ptr.i, align 4
  tail call fastcc void @savage_enable_mmio(ptr noundef %72) #8
  %call24 = tail call fastcc i32 @savage_init_hw(ptr noundef %1)
  %95 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %par2, align 4
  %chip.i241 = getelementptr inbounds %struct.savagefb_par, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %chip.i241 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chip.i241, align 4
  %99 = add i32 %98, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %99)
  %100 = icmp ult i32 %99, -2
  %resource.0.i = zext i1 %100 to i32
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %96, align 8
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %102, i32 0, i32 47, i32 %resource.0.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 8
  %video.i = getelementptr inbounds %struct.savagefb_par, ptr %96, i32 0, i32 24
  %pbase.i = getelementptr inbounds %struct.savagefb_par, ptr %96, i32 0, i32 24, i32 1
  %105 = ptrtoint ptr %pbase.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %pbase.i, align 4
  %len.i242 = getelementptr inbounds %struct.savagefb_par, ptr %96, i32 0, i32 24, i32 2
  %106 = ptrtoint ptr %len.i242 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call24, ptr %len.i242, align 4
  %call.i243 = tail call ptr @ioremap_wc(i32 noundef %104, i32 noundef %call24) #8
  %107 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i243, ptr %video.i, align 4
  %tobool.not.i244 = icmp eq ptr %call.i243, null
  br i1 %tobool.not.i244, label %savage_map_video.exit, label %if.end30

savage_map_video.exit:                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %failed_video

if.end30:                                         ; preds = %if.end23
  %108 = ptrtoint ptr %pbase.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pbase.i, align 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %call.i243, i32 noundef %109) #12
  %110 = ptrtoint ptr %pbase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pbase.i, align 4
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %smem_start.i, align 4
  %113 = ptrtoint ptr %len.i242 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len.i242, align 4
  %cob_size.i = getelementptr inbounds %struct.savagefb_par, ptr %96, i32 0, i32 29
  %115 = ptrtoint ptr %cob_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cob_size.i, align 4
  %sub.i = sub i32 %114, %116
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 2
  %117 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %sub.i, ptr %smem_len.i, align 4
  %118 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %video.i, align 4
  %120 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 25
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %119, ptr %120, align 4
  %wc_cookie.i = getelementptr inbounds %struct.savagefb_par, ptr %96, i32 0, i32 24, i32 3
  %122 = ptrtoint ptr %wc_cookie.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %wc_cookie.i, align 4
  %123 = load ptr, ptr %video.i, align 4
  %124 = load i32, ptr %len.i242, align 4
  tail call void @mmioset(ptr noundef %123, i32 noundef 0, i32 noundef %124) #8
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13
  %125 = ptrtoint ptr %modelist to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %modelist, ptr %modelist, align 4
  %prev.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 13, i32 1
  %126 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %modelist, ptr %prev.i, align 4
  tail call void @savagefb_create_i2c_busses(ptr noundef nonnull %call) #8
  %edid = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 8
  %call31 = tail call i32 @savagefb_probe_i2c_connector(ptr noundef nonnull %call, ptr noundef %edid) #8
  %127 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %edid, align 4
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8
  tail call void @fb_edid_to_monspecs(ptr noundef %128, ptr noundef %monspecs) #8
  %129 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %130) #8
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 1
  %131 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %modedb, align 4
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 8, i32 6
  %133 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %modedb_len, align 4
  tail call void @fb_videomode_to_modelist(ptr noundef %132, i32 noundef %134, ptr noundef %modelist) #8
  %var = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6
  %135 = call ptr @memcpy(ptr %var, ptr @savagefb_var800x600x8, i32 160)
  %SavagePanelWidth = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 34
  %136 = ptrtoint ptr %SavagePanelWidth to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %SavagePanelWidth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool37.not = icmp eq i32 %137, 0
  br i1 %tobool37.not, label %if.end30.if.end55_crit_edge, label %if.then38

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then38:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cvt_mode) #8
  %138 = call ptr @memset(ptr %cvt_mode, i32 0, i32 56)
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %cvt_mode, i32 0, i32 2
  %139 = ptrtoint ptr %xres to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %137, ptr %xres, align 4
  %SavagePanelHeight = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 35
  %140 = ptrtoint ptr %SavagePanelHeight to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %SavagePanelHeight, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %cvt_mode, i32 0, i32 3
  %142 = ptrtoint ptr %yres to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %yres, align 4
  %refresh = getelementptr inbounds %struct.fb_videomode, ptr %cvt_mode, i32 0, i32 1
  %143 = ptrtoint ptr %refresh to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 60, ptr %refresh, align 4
  %call40 = call i32 @fb_find_mode_cvt(ptr noundef nonnull %cvt_mode, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else, label %do.end45

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %if.end54

if.else:                                          ; preds = %if.then38
  %call49 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cvt_mode, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 3
  br i1 %cmp50.not, label %if.else.if.end54_crit_edge, label %if.then51

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %144 = call ptr @memcpy(ptr %var, ptr @savagefb_var800x600x8, i32 160)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.else.if.end54_crit_edge, %do.end45
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cvt_mode) #8
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end30.if.end55_crit_edge
  %145 = load ptr, ptr @mode_option, align 4
  %tobool56.not = icmp eq ptr %145, null
  %146 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %modedb, align 4
  br i1 %tobool56.not, label %if.else64, label %if.then57

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %modedb_len, align 4
  %call63 = call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call, ptr noundef nonnull %145, ptr noundef %147, i32 noundef %149, ptr noundef null, i32 noundef 8) #8
  br label %if.end74

if.else64:                                        ; preds = %if.end55
  %cmp67.not = icmp eq ptr %147, null
  br i1 %cmp67.not, label %if.else64.if.end74_crit_edge, label %if.then68

if.else64.if.end74_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then68:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #8
  call fastcc void @savage_update_var(ptr noundef %var, ptr noundef %call71)
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %if.else64.if.end74_crit_edge, %if.then57
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 2
  %150 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 6
  %152 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %bits_per_pixel, align 4
  %add = add i32 %153, 7
  %shr = lshr i32 %add, 3
  %mul = mul i32 %shr, %151
  %154 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %smem_len.i, align 4
  %div = udiv i32 %155, %mul
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 3
  %156 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %div, ptr %yres_virtual, align 4
  %yres81 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 1
  %157 = ptrtoint ptr %yres81 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %yres81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %158)
  %cmp82 = icmp ult i32 %div, %158
  br i1 %cmp82, label %if.end74.failed_crit_edge, label %if.end84

if.end74.failed_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end84:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div)
  %cmp87 = icmp ugt i32 %div, 4096
  br i1 %cmp87, label %if.then88, label %if.end84.if.end91_crit_edge

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 4096, ptr %yres_virtual, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end84.if.end91_crit_edge
  %160 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %161)
  %cmp94 = icmp ugt i32 %161, 4096
  br i1 %cmp94, label %if.then95, label %if.end91.if.end98_crit_edge

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 4096, ptr %xres_virtual, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.end91.if.end98_crit_edge
  %call100 = call i32 @savagefb_check_var(ptr noundef %var, ptr noundef nonnull %call)
  %163 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %xres_virtual, align 4
  %165 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bits_per_pixel, align 4
  %mul.i = mul i32 %166, %164
  %div17.i = lshr i32 %mul.i, 3
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 9
  %167 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %div17.i, ptr %line_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %166)
  %cmp.i = icmp eq i32 %166, 8
  %spec.select.i = select i1 %cmp.i, i32 3, i32 2
  %spec.select19.i = select i1 %cmp.i, i16 4, i16 2
  %168 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 5
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %spec.select.i, ptr %168, align 4
  %170 = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 7, i32 6
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %spec.select19.i, ptr %170, align 4
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 17
  %172 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pixclock, align 4
  %div102 = udiv i32 1953125000, %173
  %mul103 = shl i32 %div102, 9
  %174 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %var, align 4
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 18
  %176 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %left_margin, align 4
  %add107 = add i32 %177, %175
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 19
  %178 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %right_margin, align 4
  %add109 = add i32 %add107, %179
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 22
  %180 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %hsync_len, align 4
  %add111 = add i32 %add109, %181
  %div112 = udiv i32 %mul103, %add111
  %182 = ptrtoint ptr %yres81 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %yres81, align 4
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 20
  %184 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %upper_margin, align 4
  %add116 = add i32 %185, %183
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 21
  %186 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %lower_margin, align 4
  %add118 = add i32 %add116, %187
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %call, i32 0, i32 6, i32 23
  %188 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %vsync_len, align 4
  %add120 = add i32 %add118, %189
  %div121 = udiv i32 %div112, %add120
  %190 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %smem_len.i, align 4
  %shr128 = lshr i32 %191, 10
  %div112.frozen = freeze i32 %div112
  %div133 = udiv i32 %div112.frozen, 1000
  %192 = mul i32 %div133, 1000
  %rem.decomposed = sub i32 %div112.frozen, %192
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %shr128, i32 noundef %175, i32 noundef %183, i32 noundef %div133, i32 noundef %rem.decomposed, i32 noundef %div121) #12
  %193 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %modedb, align 4
  call void @fb_destroy_modedb(ptr noundef %194) #8
  %195 = ptrtoint ptr %modedb to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %modedb, align 4
  %call139 = call i32 @register_framebuffer(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.end98.failed_crit_edge, label %do.end145

if.end98.failed_crit_edge:                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

do.end145:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %fix.i) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %196 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

failed:                                           ; preds = %if.end98.failed_crit_edge, %if.end74.failed_crit_edge
  %err.0 = phi i32 [ %call139, %if.end98.failed_crit_edge ], [ -12, %if.end74.failed_crit_edge ]
  call void @savagefb_delete_i2c_busses(ptr noundef nonnull %call) #8
  %call150 = call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 0, i32 noundef 0) #8
  %197 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %par2, align 4
  %video.i248 = getelementptr inbounds %struct.savagefb_par, ptr %198, i32 0, i32 24
  %199 = ptrtoint ptr %video.i248 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %video.i248, align 4
  %tobool.not.i249 = icmp eq ptr %200, null
  br i1 %tobool.not.i249, label %failed.failed_video_crit_edge, label %if.then.i250

failed.failed_video_crit_edge:                    ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_video

if.then.i250:                                     ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %200) #8
  %201 = ptrtoint ptr %video.i248 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %video.i248, align 4
  %202 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %120, align 4
  br label %failed_video

failed_video:                                     ; preds = %if.then.i250, %failed.failed_video_crit_edge, %savage_map_video.exit
  %err.1 = phi i32 [ -12, %savage_map_video.exit ], [ %err.0, %failed.failed_video_crit_edge ], [ %err.0, %if.then.i250 ]
  %203 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %par2, align 4
  %chip.i.i = getelementptr inbounds %struct.savagefb_par, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %chip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %206)
  %cmp.i.i = icmp ugt i32 %206, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %failed_video.savage_disable_mmio.exit.i_crit_edge

failed_video.savage_disable_mmio.exit.i_crit_edge: ; preds = %failed_video
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_disable_mmio.exit.i

if.then.i.i:                                      ; preds = %failed_video
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @arm_heavy_mb() #8
  %mmio.i.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %204, i32 0, i32 25
  %207 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %208, i32 33748
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 64) #8, !srcloc !158
  %209 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %210, i32 33749
  %211 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i6.i.i) #8, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %212 = or i8 %211, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @arm_heavy_mb() #8
  %213 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %214, i32 33749
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i8.i.i, i8 %212) #8, !srcloc !158
  br label %savage_disable_mmio.exit.i

savage_disable_mmio.exit.i:                       ; preds = %if.then.i.i, %failed_video.savage_disable_mmio.exit.i_crit_edge
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %204, i32 0, i32 25
  %215 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mmio.i, align 4
  %tobool.not.i252 = icmp eq ptr %216, null
  br i1 %tobool.not.i252, label %savage_disable_mmio.exit.i.failed_mmio_crit_edge, label %if.then.i253

savage_disable_mmio.exit.i.failed_mmio_crit_edge: ; preds = %savage_disable_mmio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed_mmio

if.then.i253:                                     ; preds = %savage_disable_mmio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %216) #8
  %217 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %mmio.i, align 4
  br label %failed_mmio

failed_mmio:                                      ; preds = %if.then.i253, %savage_disable_mmio.exit.i.failed_mmio_crit_edge, %savage_map_mmio.exit
  %err.2 = phi i32 [ -12, %savage_map_mmio.exit ], [ %err.1, %savage_disable_mmio.exit.i.failed_mmio_crit_edge ], [ %err.1, %if.then.i253 ]
  %218 = ptrtoint ptr %pixmap.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pixmap.i, align 4
  call void @kfree(ptr noundef %219) #8
  br label %failed_init

failed_init:                                      ; preds = %failed_mmio, %if.else129.i, %if.end110.i.failed_init_crit_edge
  %err.3 = phi i32 [ %err.2, %failed_mmio ], [ -12, %if.end110.i.failed_init_crit_edge ], [ %call125.i, %if.else129.i ]
  call void @pci_release_regions(ptr noundef %dev) #8
  br label %failed_enable

failed_enable:                                    ; preds = %failed_init, %do.end12, %if.end.failed_enable_crit_edge
  %err.4 = phi i32 [ %call3, %if.end.failed_enable_crit_edge ], [ %call7, %do.end12 ], [ %err.3, %failed_init ]
  call void @framebuffer_release(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %failed_enable, %do.end145, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %failed_enable ], [ 0, %do.end145 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savagefb_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #8
  tail call void @savagefb_delete_i2c_busses(ptr noundef nonnull %1) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  %call1 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 0, i32 noundef 0) #8
  %par1.i = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1.i, align 4
  %video.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.savage_unmap_video.exit_crit_edge, label %if.then.i

if.then.savage_unmap_video.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_unmap_video.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %video.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %video.i, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %7, align 4
  br label %savage_unmap_video.exit

savage_unmap_video.exit:                          ; preds = %if.then.i, %if.then.savage_unmap_video.exit_crit_edge
  %9 = ptrtoint ptr %par1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par1.i, align 4
  %chip.i.i = getelementptr inbounds %struct.savagefb_par, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i.i = icmp ugt i32 %12, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %savage_unmap_video.exit.savage_disable_mmio.exit.i_crit_edge

savage_unmap_video.exit.savage_disable_mmio.exit.i_crit_edge: ; preds = %savage_unmap_video.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_disable_mmio.exit.i

if.then.i.i:                                      ; preds = %savage_unmap_video.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %10, i32 0, i32 25
  %13 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 64) #8, !srcloc !158
  %15 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i6.i.i = getelementptr i8, ptr %16, i32 33749
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i6.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %18 = or i8 %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i.i.i, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %20, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i8.i.i, i8 %18) #8, !srcloc !158
  br label %savage_disable_mmio.exit.i

savage_disable_mmio.exit.i:                       ; preds = %if.then.i.i, %savage_unmap_video.exit.savage_disable_mmio.exit.i_crit_edge
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %10, i32 0, i32 25
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %tobool.not.i11 = icmp eq ptr %22, null
  br i1 %tobool.not.i11, label %savage_disable_mmio.exit.i.savage_unmap_mmio.exit_crit_edge, label %if.then.i12

savage_disable_mmio.exit.i.savage_unmap_mmio.exit_crit_edge: ; preds = %savage_disable_mmio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_unmap_mmio.exit

if.then.i12:                                      ; preds = %savage_disable_mmio.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %22) #8
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mmio.i, align 4
  br label %savage_unmap_mmio.exit

savage_unmap_mmio.exit:                           ; preds = %if.then.i12, %savage_disable_mmio.exit.i.savage_unmap_mmio.exit_crit_edge
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %25) #8
  tail call void @pci_release_regions(ptr noundef %dev) #8
  tail call void @framebuffer_release(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %savage_unmap_mmio.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @savage_init_hw(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 17) #8, !srcloc !158
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i317 = getelementptr i8, ptr %3, i32 33749
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i317) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %5 = and i8 %4, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i319 = getelementptr i8, ptr %7, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i319, i8 %5) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i321 = getelementptr i8, ptr %9, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i321, i16 14408) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i323 = getelementptr i8, ptr %11, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i323, i16 14752) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i325 = getelementptr i8, ptr %13, i32 33732
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i325, i16 2054) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i327 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i327, i8 64) #8, !srcloc !158
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i329 = getelementptr i8, ptr %17, i32 33749
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i329) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %19 = and i8 %18, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i331 = getelementptr i8, ptr %21, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i331, i8 %19) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i333 = getelementptr i8, ptr %23, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i333, i8 56) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i335 = getelementptr i8, ptr %25, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i335, i8 72) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i337 = getelementptr i8, ptr %27, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i337, i16 14408) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i339 = getelementptr i8, ptr %29, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i339, i8 54) #8, !srcloc !158
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i341 = getelementptr i8, ptr %31, i32 33749
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i341) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %chip = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 1
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %34, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb11
    i32 8, label %entry.sw.bb16_crit_edge
    i32 2, label %entry.sw.bb23_crit_edge
    i32 7, label %entry.sw.bb23_crit_edge412
    i32 4, label %entry.sw.bb30_crit_edge
    i32 6, label %entry.sw.bb30_crit_edge413
    i32 5, label %entry.sw.bb30_crit_edge414
  ]

entry.sw.bb30_crit_edge414:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

entry.sw.bb30_crit_edge413:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

entry.sw.bb23_crit_edge412:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %36 = lshr i8 %32, 6
  %37 = zext i8 %36 to i32
  %arrayidx = getelementptr [4 x i8], ptr @savage_init_hw.RamSavage3D, i32 0, i32 %37
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i343 = getelementptr i8, ptr %39, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i343, i8 104) #8, !srcloc !158
  %40 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i345 = getelementptr i8, ptr %41, i32 33749
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i345) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %43 = and i8 %42, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %43)
  %cmp = icmp eq i8 %43, 64
  br i1 %cmp, label %if.then, label %sw.bb11.sw.bb16_crit_edge

sw.bb11.sw.bb16_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.then:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  store i8 8, ptr getelementptr inbounds ([8 x i8], ptr @savage_init_hw.RamSavage4, i32 0, i32 1), align 1
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.then, %sw.bb11.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge
  %44 = lshr i8 %32, 5
  %45 = zext i8 %44 to i32
  %arrayidx20 = getelementptr [8 x i8], ptr @savage_init_hw.RamSavage4, i32 0, i32 %45
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %entry.sw.bb23_crit_edge, %entry.sw.bb23_crit_edge412
  %46 = lshr i8 %32, 1
  %47 = and i8 %46, 7
  %48 = zext i8 %47 to i32
  %arrayidx27 = getelementptr [8 x i8], ptr @savage_init_hw.RamSavageMX, i32 0, i32 %48
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge413, %entry.sw.bb30_crit_edge414
  %49 = lshr i8 %32, 5
  %50 = zext i8 %49 to i32
  %arrayidx34 = getelementptr [8 x i8], ptr @savage_init_hw.RamSavageNB, i32 0, i32 %50
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb30, %sw.bb23, %sw.bb16, %sw.bb
  %arrayidx34.sink = phi ptr [ %arrayidx34, %sw.bb30 ], [ %arrayidx27, %sw.bb23 ], [ %arrayidx20, %sw.bb16 ], [ %arrayidx, %sw.bb ]
  %51 = ptrtoint ptr %arrayidx34.sink to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx34.sink, align 1
  %conv35 = zext i8 %52 to i32
  %mul36 = shl nuw nsw i32 %conv35, 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %videoRam.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %mul36, %sw.epilog.sink.split ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %videoRam.0) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i347 = getelementptr i8, ptr %54, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i347, i8 102) #8, !srcloc !158
  %55 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i349 = getelementptr i8, ptr %56, i32 33749
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i349) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %or = or i8 %57, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i351 = getelementptr i8, ptr %59, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i351, i8 %or) #8, !srcloc !158
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i353 = getelementptr i8, ptr %61, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i353, i8 102) #8, !srcloc !158
  %62 = and i8 %57, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %63 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i355 = getelementptr i8, ptr %64, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i355, i8 %62) #8, !srcloc !158
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i357 = getelementptr i8, ptr %66, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i357, i8 63) #8, !srcloc !158
  %67 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i359 = getelementptr i8, ptr %68, i32 33749
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i359) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %or48 = or i8 %69, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i361 = getelementptr i8, ptr %71, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i361, i8 %or48) #8, !srcloc !158
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i363 = getelementptr i8, ptr %73, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i363, i8 63) #8, !srcloc !158
  %74 = and i8 %69, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i365 = getelementptr i8, ptr %76, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i365, i8 %74) #8, !srcloc !158
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %numClocks = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 19
  %77 = ptrtoint ptr %numClocks to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %numClocks, align 4
  %clock = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 20
  %78 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 250000, ptr %clock, align 8
  %arrayidx55 = getelementptr %struct.savagefb_par, ptr %par, i32 0, i32 20, i32 1
  %79 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 250000, ptr %arrayidx55, align 4
  %arrayidx57 = getelementptr %struct.savagefb_par, ptr %par, i32 0, i32 20, i32 2
  %80 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 220000, ptr %arrayidx57, align 8
  %arrayidx59 = getelementptr %struct.savagefb_par, ptr %par, i32 0, i32 20, i32 3
  %81 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 220000, ptr %arrayidx59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i367 = getelementptr i8, ptr %83, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i367, i8 8) #8, !srcloc !158
  %84 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i369 = getelementptr i8, ptr %85, i32 33733
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i369) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i371 = getelementptr i8, ptr %88, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i371, i8 6) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %89 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i373 = getelementptr i8, ptr %90, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i373, i8 16) #8, !srcloc !158
  %91 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i375 = getelementptr i8, ptr %92, i32 33733
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i375) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i377 = getelementptr i8, ptr %95, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i377, i8 17) #8, !srcloc !158
  %96 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i379 = getelementptr i8, ptr %97, i32 33733
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i379) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i381 = getelementptr i8, ptr %100, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i381, i8 8) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %101 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i383 = getelementptr i8, ptr %102, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i383, i8 %86) #8, !srcloc !158
  %103 = and i8 %98, 127
  %and67 = and i8 %93, 31
  %104 = lshr i8 %93, 5
  %105 = and i8 %104, 3
  %narrow = add nuw i8 %103, 2
  %add = zext i8 %narrow to i32
  %mul74 = mul nuw nsw i32 %add, 1431818
  %narrow314 = add nuw nsw i8 %and67, 2
  %add76 = zext i8 %narrow314 to i32
  %div = udiv i32 %mul74, %add76
  %conv77 = zext i8 %105 to i32
  %div78315 = lshr i32 %div, %conv77
  %add79 = add nuw nsw i32 %div78315, 50
  %div80 = udiv i32 %add79, 100
  %MCLK = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 21
  %106 = ptrtoint ptr %MCLK to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div80, ptr %MCLK, align 8
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %div80) #12
  %107 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %108)
  %cmp88 = icmp eq i32 %108, 3
  br i1 %cmp88, label %if.then90, label %sw.epilog.if.end105_crit_edge

sw.epilog.if.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then90:                                        ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i385 = getelementptr i8, ptr %110, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i385, i8 48) #8, !srcloc !158
  %111 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i387 = getelementptr i8, ptr %112, i32 33733
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i387) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %114 = and i8 %113, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i389 = getelementptr i8, ptr %116, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i389, i8 %114) #8, !srcloc !158
  %117 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i391 = getelementptr i8, ptr %118, i32 33733
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i391) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %120 = and i8 %119, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not = icmp eq i8 %120, 0
  br i1 %tobool.not, label %if.then90.if.end105thread-pre-split_crit_edge, label %if.then98

if.then90.if.end105thread-pre-split_crit_edge:    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105thread-pre-split

if.then98:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %if.end105thread-pre-split

if.end105thread-pre-split:                        ; preds = %if.then98, %if.then90.if.end105thread-pre-split_crit_edge
  %dvi.1.ph = phi i32 [ 0, %if.then90.if.end105thread-pre-split_crit_edge ], [ 1, %if.then98 ]
  %121 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr = load i32, ptr %chip, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end105thread-pre-split, %sw.epilog.if.end105_crit_edge
  %122 = phi i32 [ %.pr, %if.end105thread-pre-split ], [ %108, %sw.epilog.if.end105_crit_edge ]
  %dvi.1 = phi i32 [ %dvi.1.ph, %if.end105thread-pre-split ], [ 0, %sw.epilog.if.end105_crit_edge ]
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %122, label %if.end105.if.else_crit_edge [
    i32 2, label %if.end105.land.lhs.true_crit_edge
    i32 7, label %if.end105.land.lhs.true_crit_edge415
    i32 5, label %if.end105.land.lhs.true_crit_edge416
    i32 6, label %if.end105.land.lhs.true_crit_edge417
  ]

if.end105.land.lhs.true_crit_edge417:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end105.land.lhs.true_crit_edge416:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end105.land.lhs.true_crit_edge415:             ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end105.land.lhs.true_crit_edge:                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end105.if.else_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end105.land.lhs.true_crit_edge, %if.end105.land.lhs.true_crit_edge415, %if.end105.land.lhs.true_crit_edge416, %if.end105.land.lhs.true_crit_edge417
  %crtonly = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 15
  %124 = ptrtoint ptr %crtonly to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %crtonly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool120.not = icmp eq i32 %125, 0
  br i1 %tobool120.not, label %land.lhs.true.if.end135_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end135_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end105.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dvi.1)
  %tobool122.not = icmp eq i32 %dvi.1, 0
  br i1 %tobool122.not, label %lor.lhs.false123, label %if.else.if.end135_crit_edge

if.else.if.end135_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

lor.lhs.false123:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %122)
  %cmp125 = icmp eq i32 %122, 3
  br i1 %cmp125, label %land.lhs.true127, label %lor.lhs.false123.if.else132_crit_edge

lor.lhs.false123.if.else132_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else132

land.lhs.true127:                                 ; preds = %lor.lhs.false123
  %dvi128 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 14
  %126 = ptrtoint ptr %dvi128 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dvi128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool129.not = icmp eq i32 %127, 0
  br i1 %tobool129.not, label %land.lhs.true127.if.else132_crit_edge, label %land.lhs.true127.if.end135_crit_edge

land.lhs.true127.if.end135_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

land.lhs.true127.if.else132_crit_edge:            ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else132

if.else132:                                       ; preds = %land.lhs.true127.if.else132_crit_edge, %lor.lhs.false123.if.else132_crit_edge
  br label %if.end135

if.end135:                                        ; preds = %if.else132, %land.lhs.true127.if.end135_crit_edge, %if.else.if.end135_crit_edge, %land.lhs.true.if.end135_crit_edge
  %cmp137 = phi i1 [ false, %if.else.if.end135_crit_edge ], [ false, %land.lhs.true127.if.end135_crit_edge ], [ true, %land.lhs.true.if.end135_crit_edge ], [ false, %if.else132 ]
  %.sink410 = phi i32 [ 3, %if.else.if.end135_crit_edge ], [ 3, %land.lhs.true127.if.end135_crit_edge ], [ 2, %land.lhs.true.if.end135_crit_edge ], [ 1, %if.else132 ]
  %display_type131 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 13
  %128 = ptrtoint ptr %display_type131 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %.sink410, ptr %display_type131, align 4
  %display_type136 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 13
  br i1 %cmp137, label %if.then139, label %if.end135.if.end194_crit_edge

if.end135.if.end194_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then139:                                       ; preds = %if.end135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %129 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %130, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 107) #8, !srcloc !158
  %131 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %132, i32 33749
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i2.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %134 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i393 = getelementptr i8, ptr %135, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i393, i8 97) #8, !srcloc !158
  %136 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %137, i32 33733
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %conv142 = zext i8 %138 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i395 = getelementptr i8, ptr %140, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i395, i8 102) #8, !srcloc !158
  %141 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i3.i396 = getelementptr i8, ptr %142, i32 33733
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i396) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %144 = and i8 %143, 2
  %and145 = zext i8 %144 to i32
  %145 = shl nuw nsw i32 %and145, 10
  %146 = shl nuw nsw i32 %conv142, 3
  %add148 = add nuw nsw i32 %146, 8
  %mul149 = add nuw nsw i32 %add148, %145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %147 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i398 = getelementptr i8, ptr %148, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i398, i8 105) #8, !srcloc !158
  %149 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i3.i399 = getelementptr i8, ptr %150, i32 33733
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i399) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %conv151 = zext i8 %151 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %152 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i401 = getelementptr i8, ptr %153, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i401, i8 110) #8, !srcloc !158
  %154 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i3.i402 = getelementptr i8, ptr %155, i32 33733
  %156 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i402) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %157 = and i8 %156, 112
  %and154 = zext i8 %157 to i32
  %shl155 = shl nuw nsw i32 %and154, 4
  %add156 = add nuw nsw i32 %conv151, 1
  %add157 = add nuw nsw i32 %add156, %shl155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %158 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i404 = getelementptr i8, ptr %159, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i404, i8 57) #8, !srcloc !158
  %160 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i3.i405 = getelementptr i8, ptr %161, i32 33733
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i405) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %163 = and i8 %162, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp161 = icmp eq i8 %163, 0
  br i1 %cmp161, label %if.then139.do.end176_crit_edge, label %if.else164

if.then139.do.end176_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end176

if.else164:                                       ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %164 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i407 = getelementptr i8, ptr %165, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i407, i8 48) #8, !srcloc !158
  %166 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i3.i408 = getelementptr i8, ptr %167, i32 33733
  %168 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i408) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %169 = and i8 %168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp168 = icmp eq i8 %169, 0
  %.str.48..str.49 = select i1 %cmp168, ptr @.str.48, ptr @.str.49
  br label %do.end176

do.end176:                                        ; preds = %if.else164, %if.then139.do.end176_crit_edge
  %sTechnology.0 = phi ptr [ @.str.47, %if.then139.do.end176_crit_edge ], [ %.str.48..str.49, %if.else164 ]
  %170 = and i8 %133, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool180.not = icmp eq i8 %170, 0
  %cond = select i1 %tobool180.not, ptr @.str.54, ptr @.str.53
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %mul149, i32 noundef %add157, ptr noundef nonnull %sTechnology.0, ptr noundef nonnull %cond) #12
  br i1 %tobool180.not, label %if.else191, label %do.end188

do.end188:                                        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #10
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %mul149, i32 noundef %add157) #12
  %SavagePanelWidth = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 34
  %171 = ptrtoint ptr %SavagePanelWidth to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %mul149, ptr %SavagePanelWidth, align 8
  %SavagePanelHeight = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 35
  %172 = ptrtoint ptr %SavagePanelHeight to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add157, ptr %SavagePanelHeight, align 4
  br label %if.end194

if.else191:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %display_type136 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %display_type136, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.else191, %do.end188, %if.end135.if.end194_crit_edge
  %mul37 = shl nuw nsw i32 %videoRam.0, 10
  %state = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 3
  tail call fastcc void @savage_get_default_par(ptr noundef %par, ptr noundef %state)
  %save = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 4
  %174 = call ptr @memcpy(ptr %save, ptr %state, i32 232)
  %175 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %chip, align 4
  %177 = add i32 %176, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %178 = icmp ult i32 %177, 4
  %sub = add nsw i32 %mul37, -131072
  %spec.select = select i1 %178, i32 2, i32 7
  %spec.select411 = select i1 %178, i32 %mul37, i32 %sub
  %179 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 30
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %spec.select, ptr %179, align 8
  %181 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 29
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 131072, ptr %181, align 4
  %183 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 28
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %spec.select411, ptr %183, align 8
  ret i32 %mul37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @savagefb_create_i2c_busses(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @savagefb_probe_i2c_connector(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode_cvt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @savage_update_var(ptr nocapture noundef %var, ptr nocapture noundef readonly %modedb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 2
  %0 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %xres_virtual, align 4
  %3 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 3
  %4 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres, align 4
  %yres2 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %6 = ptrtoint ptr %yres2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %yres2, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %7 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp = icmp ult i32 %8, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %yres_virtual, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %10 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %yoffset, align 4
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %11 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %xoffset, align 4
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 4
  %12 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixclock, align 4
  %pixclock6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %14 = ptrtoint ptr %pixclock6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pixclock6, align 4
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 5
  %15 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %left_margin, align 4
  %left_margin7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %17 = ptrtoint ptr %left_margin7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %left_margin7, align 4
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 6
  %18 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %right_margin, align 4
  %right_margin8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %20 = ptrtoint ptr %right_margin8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %right_margin8, align 4
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 7
  %21 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %upper_margin, align 4
  %upper_margin9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %23 = ptrtoint ptr %upper_margin9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %upper_margin9, align 4
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 8
  %24 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lower_margin, align 4
  %lower_margin10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %26 = ptrtoint ptr %lower_margin10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lower_margin10, align 4
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 9
  %27 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hsync_len, align 4
  %hsync_len11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %29 = ptrtoint ptr %hsync_len11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hsync_len11, align 4
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 10
  %30 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vsync_len, align 4
  %vsync_len12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %32 = ptrtoint ptr %vsync_len12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %vsync_len12, align 4
  %sync = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 11
  %33 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sync, align 4
  %sync13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %35 = ptrtoint ptr %sync13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %sync13, align 4
  %vmode = getelementptr inbounds %struct.fb_videomode, ptr %modedb, i32 0, i32 12
  %36 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vmode, align 4
  %vmode14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %38 = ptrtoint ptr %vmode14 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vmode14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_check_var(ptr noundef %var, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %2 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %transp, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %length, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 16, label %sw.bb13
    i32 32, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %7 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %blue, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %8 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %green, align 4
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %9 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %red, align 4
  %length8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %length8, align 4
  %length10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %length10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %length10, align 4
  %length12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %length12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %red14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %13 = ptrtoint ptr %red14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 11, ptr %red14, align 4
  %length17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %length17, align 4
  %green18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %15 = ptrtoint ptr %green18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %green18, align 4
  %length21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %length21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %length21, align 4
  %blue22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %17 = ptrtoint ptr %blue22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %blue22, align 4
  %length25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %length25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %length25, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 24, ptr %transp, align 4
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %length, align 4
  %red31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %21 = ptrtoint ptr %red31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %red31, align 4
  %length34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %length34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %length34, align 4
  %green35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %23 = ptrtoint ptr %green35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %green35, align 4
  %length38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %length38 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %length38, align 4
  %blue39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %25 = ptrtoint ptr %blue39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %blue39, align 4
  %length42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %length42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %length42, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb13, %sw.bb
  %hfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 12
  %27 = ptrtoint ptr %hfmax to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %sw.epilog.if.end71_crit_edge, label %lor.lhs.false

sw.epilog.if.end71_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

lor.lhs.false:                                    ; preds = %sw.epilog
  %vfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 19
  %29 = ptrtoint ptr %vfmax to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool44.not = icmp eq i16 %30, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.end71_crit_edge, label %lor.lhs.false45

lor.lhs.false.if.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

lor.lhs.false45:                                  ; preds = %lor.lhs.false
  %dclkmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 14
  %31 = ptrtoint ptr %dclkmax to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dclkmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool47.not = icmp eq i32 %32, 0
  br i1 %tobool47.not, label %lor.lhs.false45.if.end71_crit_edge, label %lor.lhs.false48

lor.lhs.false45.if.end71_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %call = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool49.not = icmp eq i32 %call, 0
  br i1 %tobool49.not, label %lor.lhs.false48.if.end71_crit_edge, label %land.lhs.true

lor.lhs.false48.if.end71_crit_edge:               ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true:                                    ; preds = %lor.lhs.false48
  %gtf = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 21
  %33 = ptrtoint ptr %gtf to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %gtf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool52.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool52.not, label %land.lhs.true.if.then60_crit_edge, label %if.then53

land.lhs.true.if.then60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.then53:                                        ; preds = %land.lhs.true
  %call54 = tail call i32 @fb_get_mode(i32 noundef 0, i32 noundef 0, ptr noundef %var, ptr noundef %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not.not, label %if.then53.if.end71_crit_edge, label %if.then53.if.then60_crit_edge

if.then53.if.then60_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.then53.if.end71_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then60:                                        ; preds = %if.then53.if.then60_crit_edge, %land.lhs.true.if.then60_crit_edge
  %modelist = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 13
  %call61 = tail call ptr @fb_find_best_mode(ptr noundef %var, ptr noundef %modelist) #8
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %land.lhs.true67, label %if.then63

if.then63:                                        ; preds = %if.then60
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 2
  %34 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xres.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %36 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %xres_virtual.i, align 4
  %37 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %var, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 3
  %38 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres.i, align 4
  %yres2.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %40 = ptrtoint ptr %yres2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %yres2.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %41 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %yres_virtual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %39)
  %cmp.i = icmp ult i32 %42, %39
  br i1 %cmp.i, label %if.then.i, label %if.then63.savage_update_var.exit_crit_edge

if.then63.savage_update_var.exit_crit_edge:       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_update_var.exit

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %yres_virtual.i, align 4
  br label %savage_update_var.exit

savage_update_var.exit:                           ; preds = %if.then.i, %if.then63.savage_update_var.exit_crit_edge
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %44 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %yoffset.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %45 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %xoffset.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 4
  %46 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixclock.i, align 4
  %pixclock6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %48 = ptrtoint ptr %pixclock6.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pixclock6.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 5
  %49 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %left_margin.i, align 4
  %left_margin7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %51 = ptrtoint ptr %left_margin7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %left_margin7.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 6
  %52 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %right_margin.i, align 4
  %right_margin8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %54 = ptrtoint ptr %right_margin8.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %right_margin8.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 7
  %55 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %upper_margin.i, align 4
  %upper_margin9.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %57 = ptrtoint ptr %upper_margin9.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %upper_margin9.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 8
  %58 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lower_margin.i, align 4
  %lower_margin10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %60 = ptrtoint ptr %lower_margin10.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %lower_margin10.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 9
  %61 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hsync_len.i, align 4
  %hsync_len11.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %63 = ptrtoint ptr %hsync_len11.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %hsync_len11.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 10
  %64 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vsync_len.i, align 4
  %vsync_len12.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %66 = ptrtoint ptr %vsync_len12.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %vsync_len12.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 11
  %67 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sync.i, align 4
  %sync13.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %69 = ptrtoint ptr %sync13.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sync13.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_videomode, ptr %call61, i32 0, i32 12
  %70 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vmode.i, align 4
  %vmode14.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %72 = ptrtoint ptr %vmode14.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %vmode14.i, align 4
  br label %if.end71

land.lhs.true67:                                  ; preds = %if.then60
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 6
  %73 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %modedb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool69.not = icmp eq i32 %74, 0
  br i1 %tobool69.not, label %land.lhs.true67.if.end71_crit_edge, label %land.lhs.true67.cleanup_crit_edge

land.lhs.true67.cleanup_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true67.if.end71_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.end71:                                         ; preds = %land.lhs.true67.if.end71_crit_edge, %savage_update_var.exit, %if.then53.if.end71_crit_edge, %lor.lhs.false48.if.end71_crit_edge, %lor.lhs.false45.if.end71_crit_edge, %lor.lhs.false.if.end71_crit_edge, %sw.epilog.if.end71_crit_edge
  %SavagePanelWidth = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 34
  %75 = ptrtoint ptr %SavagePanelWidth to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %SavagePanelWidth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool72.not = icmp eq i32 %76, 0
  br i1 %tobool72.not, label %if.end71.if.end86_crit_edge, label %land.lhs.true73

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

land.lhs.true73:                                  ; preds = %if.end71
  %77 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %76)
  %cmp = icmp ugt i32 %78, %76
  br i1 %cmp, label %land.lhs.true73.do.end_crit_edge, label %lor.lhs.false76

land.lhs.true73.do.end_crit_edge:                 ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false76:                                  ; preds = %land.lhs.true73
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %79 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %yres, align 4
  %SavagePanelHeight = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 35
  %81 = ptrtoint ptr %SavagePanelHeight to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %SavagePanelHeight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp77 = icmp ugt i32 %80, %82
  br i1 %cmp77, label %lor.lhs.false76.do.end_crit_edge, label %lor.lhs.false76.if.end86_crit_edge

lor.lhs.false76.if.end86_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

lor.lhs.false76.do.end_crit_edge:                 ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false76.do.end_crit_edge, %land.lhs.true73.do.end_crit_edge
  %yres82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %83 = ptrtoint ptr %yres82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %yres82, align 4
  %SavagePanelHeight84 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 35
  %85 = ptrtoint ptr %SavagePanelHeight84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %SavagePanelHeight84, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %78, i32 noundef %84, i32 noundef %76, i32 noundef %86) #12
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false76.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %87 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %yres_virtual, align 4
  %yres87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %89 = ptrtoint ptr %yres87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %yres87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp88 = icmp ult i32 %88, %90
  br i1 %cmp88, label %if.then90, label %if.end86.if.end93_crit_edge

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %yres_virtual, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end86.if.end93_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %92 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %xres_virtual, align 4
  %94 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp95 = icmp ult i32 %93, %95
  br i1 %cmp95, label %if.then97, label %if.end93.if.end100_crit_edge

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %xres_virtual, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end93.if.end100_crit_edge
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %97 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %smem_len, align 4
  %99 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %xres_virtual, align 4
  %101 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %102, %100
  %103 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %yres_virtual, align 4
  %mul104 = mul i32 %mul, %104
  %div252 = lshr i32 %mul104, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div252, i32 %98)
  %cmp105 = icmp sgt i32 %div252, %98
  br i1 %cmp105, label %if.then107, label %if.end100.if.end120_crit_edge

if.end100.if.end120_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then107:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %mul108 = shl i32 %98, 3
  %div112 = udiv i32 %mul108, %mul
  %105 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div112, ptr %yres_virtual, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then107, %if.end100.if.end120_crit_edge
  %106 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %90)
  %cmp123 = icmp ult i32 %107, %90
  br i1 %cmp123, label %if.then125, label %if.end120.if.end128_crit_edge

if.end120.if.end128_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then125:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %yres87 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %yres87, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end120.if.end128_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %95)
  %cmp131 = icmp ult i32 %100, %95
  br i1 %cmp131, label %if.then133, label %if.end128.if.end136_crit_edge

if.end128.if.end136_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %100, ptr %var, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end128.if.end136_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %110 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %xoffset, align 4
  %112 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %var, align 4
  %add = add i32 %113, %111
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %100)
  %cmp139 = icmp ugt i32 %add, %100
  br i1 %cmp139, label %if.then141, label %if.end136.if.end145_crit_edge

if.end136.if.end145_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %100, %113
  %114 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %sub, ptr %xoffset, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.end136.if.end145_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %115 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %yoffset, align 4
  %117 = ptrtoint ptr %yres87 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %yres87, align 4
  %add147 = add i32 %118, %116
  call void @__sanitizer_cov_trace_cmp4(i32 %add147, i32 %107)
  %cmp149 = icmp ugt i32 %add147, %107
  br i1 %cmp149, label %if.then151, label %if.end145.cleanup_crit_edge

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then151:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %sub154 = sub i32 %107, %118
  %119 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %sub154, ptr %yoffset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %if.end145.cleanup_crit_edge, %do.end, %land.lhs.true67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true67.cleanup_crit_edge ], [ 0, %if.then151 ], [ 0, %if.end145.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @savagefb_delete_i2c_busses(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage3D_waitidle(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 297984
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %3 = and i32 %2, -63488
  %cmp.not = icmp eq i32 %3, 2048
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage3D_waitfifo(ptr nocapture noundef readonly %par, i32 noundef %space) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 32512, %space
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 297984
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cmp = icmp ugt i32 %4, %sub
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage4_waitidle(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 298080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %3 = and i32 %2, 40960
  %cmp.not = icmp eq i32 %3, 40960
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage4_waitfifo(ptr nocapture noundef readonly %par, i32 noundef %space) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 32512, %space
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 298080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %3 = and i32 %2, -57600
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cmp = icmp ugt i32 %4, %sub
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage2000_waitidle(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 298080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %3 = and i32 %2, -24832
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @savage2000_waitfifo(ptr nocapture noundef readonly %par, i32 noundef %space) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 32512, %space
  %mmio.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 298080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cmp = icmp ugt i32 %4, %sub
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_open(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %open_count = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vgastate = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 6
  %4 = call ptr @memset(ptr %vgastate, i32 0, i32 40)
  %flags = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 31, ptr %flags, align 4
  %mmio = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32768
  %8 = ptrtoint ptr %vgastate to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %vgastate, align 8
  %call = tail call i32 @save_vga(ptr noundef %vgastate) #8
  %initial = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 5
  tail call fastcc void @savage_get_default_par(ptr noundef %1, ptr noundef %initial)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open_count, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %open_count, align 8
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_release(ptr nocapture noundef readonly %info, i32 noundef %user) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %open_lock = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #8
  %open_count = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %initial = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 5
  tail call fastcc void @savage_set_default_par(ptr noundef %1, ptr noundef %initial)
  %vgastate = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 6
  %call = tail call i32 @restore_vga(ptr noundef %vgastate) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %open_count, align 8
  tail call void @mutex_unlock(ptr noundef %open_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %state = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3
  %pixclock1.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %2 = ptrtoint ptr %pixclock1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixclock1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 10000, i32 %3
  %div.i = udiv i32 1000000000, %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %spec.store.select.i)
  %cmp.i = icmp ugt i32 %spec.store.select.i, 1000000000
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %div.i
  %vmode.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %4 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vmode.i, align 4
  %and.i = and i32 %5, 2
  %6 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var2, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %8 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %right_margin.i, align 4
  %add.i = add i32 %9, %7
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %10 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hsync_len.i, align 4
  %add11.i = add i32 %add.i, %11
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %12 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %left_margin.i, align 4
  %add13.i = add i32 %add11.i, %13
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %16 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lower_margin.i, align 4
  %add15.i = add i32 %17, %15
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %18 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vsync_len.i, align 4
  %add17.i = add i32 %add15.i, %19
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %20 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %upper_margin.i, align 4
  %add19.i = add i32 %add17.i, %21
  %sync.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %22 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sync.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bits_per_pixel.i, align 4
  %depth.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 37
  %26 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %depth.i, align 8
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xres_virtual.i, align 4
  %vwidth.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 38
  %29 = ptrtoint ptr %vwidth.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %vwidth.i, align 4
  %30 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp22.i = icmp eq i32 %30, 16
  br i1 %cmp22.i, label %land.lhs.true.i, label %entry.if.end32.i_crit_edge

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %entry
  %chip.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp23.i = icmp eq i32 %32, 1
  br i1 %cmp23.i, label %if.then24.i, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %7, 1
  %mul27.i = shl i32 %add.i, 1
  %mul29.i = shl i32 %add11.i, 1
  %mul31.i = shl i32 %add13.i, 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then24.i, %land.lhs.true.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %timings.sroa.6.0.i = phi i32 [ %mul.i, %if.then24.i ], [ %7, %land.lhs.true.i.if.end32.i_crit_edge ], [ %7, %entry.if.end32.i_crit_edge ]
  %timings.sroa.11.0.i = phi i32 [ %mul27.i, %if.then24.i ], [ %add.i, %land.lhs.true.i.if.end32.i_crit_edge ], [ %add.i, %entry.if.end32.i_crit_edge ]
  %timings.sroa.18.0.i = phi i32 [ %mul29.i, %if.then24.i ], [ %add11.i, %land.lhs.true.i.if.end32.i_crit_edge ], [ %add11.i, %entry.if.end32.i_crit_edge ]
  %timings.sroa.25.0.i = phi i32 [ %mul31.i, %if.then24.i ], [ %add13.i, %land.lhs.true.i.if.end32.i_crit_edge ], [ %add13.i, %entry.if.end32.i_crit_edge ]
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i8 99, i8 35
  %and4.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %33 = or i8 %spec.store.select.i.i, -128
  %spec.select147.i = select i1 %tobool5.not.i.i, i8 %33, i8 %spec.store.select.i.i
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select147.i, ptr %state, align 4
  %Sequencer.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %Sequencer.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %Sequencer.i.i, align 2
  %arrayidx13.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx13.i.i, align 1
  %arrayidx15.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 2, i32 2
  %37 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 15, ptr %arrayidx15.i.i, align 2
  %arrayidx17.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 2, i32 3
  %38 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx17.i.i, align 1
  %arrayidx19.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 2, i32 4
  %39 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 14, ptr %arrayidx19.i.i, align 2
  %shr.i.i = lshr i32 %timings.sroa.25.0.i, 3
  %40 = trunc i32 %shr.i.i to i8
  %conv20.i.i = add i8 %40, -5
  %CRTC.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %CRTC.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv20.i.i, ptr %CRTC.i.i, align 1
  %shr22.i.i = lshr i32 %timings.sroa.6.0.i, 3
  %42 = trunc i32 %shr22.i.i to i8
  %conv24.i.i = add i8 %42, -1
  %arrayidx26.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv24.i.i, ptr %arrayidx26.i.i, align 1
  %shr27.i.i = lshr i32 %timings.sroa.11.0.i, 3
  %44 = trunc i32 %shr27.i.i to i8
  %conv29.i.i = add i8 %44, -1
  %arrayidx31.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv29.i.i, ptr %arrayidx31.i.i, align 1
  %46 = trunc i32 %timings.sroa.18.0.i to i8
  %47 = lshr i8 %46, 3
  %48 = add nuw nsw i8 %47, 31
  %49 = and i8 %48, 31
  %conv36.i.i = or i8 %49, -128
  %arrayidx38.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv36.i.i, ptr %arrayidx38.i.i, align 1
  %arrayidx43.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 4
  %51 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %44, ptr %arrayidx43.i.i, align 1
  %shr45.i.i = lshr i32 %timings.sroa.18.0.i, 3
  %sub46.i.i = shl nuw nsw i32 %shr45.i.i, 2
  %and47.i.i = add nuw i32 %sub46.i.i, 252
  %shl.i.i = and i32 %and47.i.i, 128
  %and50.i.i = and i32 %shr45.i.i, 31
  %or51.i.i = or i32 %shl.i.i, %and50.i.i
  %conv52.i.i = trunc i32 %or51.i.i to i8
  %arrayidx54.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 5
  %52 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv52.i.i, ptr %arrayidx54.i.i, align 1
  %53 = trunc i32 %add19.i to i8
  %conv57.i.i = add i8 %53, -2
  %arrayidx59.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 6
  %54 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv57.i.i, ptr %arrayidx59.i.i, align 1
  %sub61.i.i = add i32 %add19.i, -2
  %and62.i.i = lshr i32 %sub61.i.i, 8
  %shr63.i.i = and i32 %and62.i.i, 1
  %sub64.i.i = add i32 %15, -1
  %and65.i.i = lshr i32 %sub64.i.i, 7
  %shr66.i.i = and i32 %and65.i.i, 2
  %and68.i.i = lshr i32 %add15.i, 6
  %shr69.i.i = and i32 %and68.i.i, 4
  %sub72.i.i = add i32 %add15.i, 511
  %and73.i.i = lshr i32 %sub72.i.i, 5
  %shr74.i.i = and i32 %and73.i.i, 8
  %and79.i.i = lshr i32 %sub61.i.i, 4
  %shr80.i.i = and i32 %and79.i.i, 32
  %and84.i.i = lshr i32 %sub64.i.i, 3
  %shr85.i.i = and i32 %and84.i.i, 64
  %and88.i.i = lshr i32 %add15.i, 2
  %shr89.i.i = and i32 %and88.i.i, 128
  %or67.i.i = or i32 %shr85.i.i, %shr66.i.i
  %or70.i.i = or i32 %or67.i.i, %shr69.i.i
  %or75.i.i = or i32 %or70.i.i, %shr89.i.i
  %or76.i.i = or i32 %or75.i.i, %shr74.i.i
  %or81.i.i = or i32 %or76.i.i, %shr63.i.i
  %or86.i.i = or i32 %or81.i.i, %shr80.i.i
  %55 = trunc i32 %or86.i.i to i8
  %conv91.i.i = or i8 %55, 16
  %arrayidx93.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 7
  %56 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv91.i.i, ptr %arrayidx93.i.i, align 1
  %arrayidx95.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 8
  %57 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx95.i.i, align 1
  %sub97.i.i = add i32 %add15.i, 1023
  %and98.i.i = lshr i32 %sub97.i.i, 4
  %58 = trunc i32 %and98.i.i to i8
  %59 = and i8 %58, 32
  %arrayidx103.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool104.not.i.i = icmp eq i32 %and.i, 0
  %storemerge145.v.i = select i1 %tobool104.not.i.i, i8 64, i8 -64
  %storemerge145.i = or i8 %59, %storemerge145.v.i
  %60 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %storemerge145.i, ptr %arrayidx103.i.i, align 1
  %arrayidx113.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 10
  %61 = call ptr @memset(ptr %arrayidx113.i.i, i32 0, i32 6)
  %conv126.i.i = trunc i32 %add15.i to i8
  %arrayidx128.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 16
  %62 = ptrtoint ptr %arrayidx128.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv126.i.i, ptr %arrayidx128.i.i, align 1
  %63 = trunc i32 %add17.i to i8
  %64 = and i8 %63, 15
  %conv131.i.i = or i8 %64, 32
  %arrayidx133.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 17
  %65 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv131.i.i, ptr %arrayidx133.i.i, align 1
  %66 = trunc i32 %15 to i8
  %conv137.i.i = add i8 %66, -1
  %arrayidx139.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 18
  %67 = ptrtoint ptr %arrayidx139.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv137.i.i, ptr %arrayidx139.i.i, align 1
  %68 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xres_virtual.i, align 4
  %shr140.i.i = lshr i32 %69, 4
  %conv141.i.i = trunc i32 %shr140.i.i to i8
  %arrayidx143.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 19
  %70 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv141.i.i, ptr %arrayidx143.i.i, align 1
  %arrayidx145.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 20
  %71 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx145.i.i, align 1
  %conv149.i.i = add i8 %conv126.i.i, -1
  %arrayidx151.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 21
  %72 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv149.i.i, ptr %arrayidx151.i.i, align 1
  %conv155.i.i = add i8 %63, -1
  %arrayidx157.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 22
  %73 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv155.i.i, ptr %arrayidx157.i.i, align 1
  %arrayidx159.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 23
  %74 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -61, ptr %arrayidx159.i.i, align 1
  %arrayidx161.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 24
  %75 = ptrtoint ptr %arrayidx161.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %arrayidx161.i.i, align 1
  %Graphics.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 3
  %arrayidx172.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 3, i32 5
  %76 = call ptr @memset(ptr %Graphics.i.i, i32 0, i32 5)
  %77 = ptrtoint ptr %arrayidx172.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 64, ptr %arrayidx172.i.i, align 1
  %arrayidx174.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 3, i32 6
  %78 = ptrtoint ptr %arrayidx174.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %arrayidx174.i.i, align 1
  %arrayidx176.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 3, i32 7
  %79 = ptrtoint ptr %arrayidx176.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 15, ptr %arrayidx176.i.i, align 1
  %arrayidx178.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 3, i32 8
  %80 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %arrayidx178.i.i, align 1
  %Attribute.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4
  %81 = ptrtoint ptr %Attribute.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %Attribute.i.i, align 4
  %arrayidx181.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 1
  %82 = ptrtoint ptr %arrayidx181.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %arrayidx181.i.i, align 1
  %arrayidx183.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 2
  %83 = ptrtoint ptr %arrayidx183.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %arrayidx183.i.i, align 2
  %arrayidx185.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 3
  %84 = ptrtoint ptr %arrayidx185.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %arrayidx185.i.i, align 1
  %arrayidx187.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 4
  %85 = ptrtoint ptr %arrayidx187.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 4, ptr %arrayidx187.i.i, align 4
  %arrayidx189.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 5
  %86 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 5, ptr %arrayidx189.i.i, align 1
  %arrayidx191.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 6
  %87 = ptrtoint ptr %arrayidx191.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 6, ptr %arrayidx191.i.i, align 2
  %arrayidx193.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 7
  %88 = ptrtoint ptr %arrayidx193.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 7, ptr %arrayidx193.i.i, align 1
  %arrayidx195.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 8
  %89 = ptrtoint ptr %arrayidx195.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 8, ptr %arrayidx195.i.i, align 4
  %arrayidx197.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 9
  %90 = ptrtoint ptr %arrayidx197.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 9, ptr %arrayidx197.i.i, align 1
  %arrayidx199.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 10
  %91 = ptrtoint ptr %arrayidx199.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 10, ptr %arrayidx199.i.i, align 2
  %arrayidx201.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 11
  %92 = ptrtoint ptr %arrayidx201.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 11, ptr %arrayidx201.i.i, align 1
  %arrayidx203.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 12
  %93 = ptrtoint ptr %arrayidx203.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 12, ptr %arrayidx203.i.i, align 4
  %arrayidx205.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 13
  %94 = ptrtoint ptr %arrayidx205.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 13, ptr %arrayidx205.i.i, align 1
  %arrayidx207.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 14
  %95 = ptrtoint ptr %arrayidx207.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 14, ptr %arrayidx207.i.i, align 2
  %arrayidx209.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 15
  %96 = ptrtoint ptr %arrayidx209.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 15, ptr %arrayidx209.i.i, align 1
  %arrayidx211.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 16
  %97 = ptrtoint ptr %arrayidx211.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 65, ptr %arrayidx211.i.i, align 4
  %arrayidx213.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 17
  %98 = ptrtoint ptr %arrayidx213.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %arrayidx213.i.i, align 1
  %arrayidx215.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 18
  %99 = ptrtoint ptr %arrayidx215.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 15, ptr %arrayidx215.i.i, align 2
  %arrayidx217.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 19
  %100 = ptrtoint ptr %arrayidx217.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %arrayidx217.i.i, align 1
  %arrayidx219.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 20
  %101 = ptrtoint ptr %arrayidx219.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx219.i.i, align 4
  %CR67.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 45
  %102 = ptrtoint ptr %CR67.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %CR67.i, align 1
  %103 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bits_per_pixel.i, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %104, label %if.end32.i.sw.epilog.i_crit_edge [
    i32 8, label %sw.bb.i
    i32 15, label %sw.bb43.i
    i32 16, label %sw.bb58.i
    i32 24, label %if.end32.i.sw.epilog.sink.split.i_crit_edge
    i32 32, label %sw.bb76.i
  ]

if.end32.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end32.i.sw.epilog.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end32.i
  %chip35.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 1
  %106 = ptrtoint ptr %chip35.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chip35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %107)
  %cmp36.i = icmp eq i32 %107, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 229999, i32 %spec.select.i)
  %cmp38.i = icmp ugt i32 %spec.select.i, 229999
  %or.cond.i = select i1 %cmp36.i, i1 %cmp38.i, i1 false
  br i1 %or.cond.i, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb43.i:                                        ; preds = %if.end32.i
  %chip44.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 1
  %108 = ptrtoint ptr %chip44.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %chip44.i, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %109, label %sw.bb43.i.if.else55.i_crit_edge [
    i32 2, label %sw.bb43.i.sw.epilog.sink.split.i_crit_edge
    i32 7, label %sw.bb43.i.sw.epilog.sink.split.i_crit_edge118
    i32 8, label %land.lhs.true51.i
  ]

sw.bb43.i.sw.epilog.sink.split.i_crit_edge118:    ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb43.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb43.i.if.else55.i_crit_edge:                  ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else55.i

land.lhs.true51.i:                                ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 229999, i32 %spec.select.i)
  %cmp52.i = icmp ugt i32 %spec.select.i, 229999
  br i1 %cmp52.i, label %land.lhs.true51.i.sw.epilog.sink.split.i_crit_edge, label %land.lhs.true51.i.if.else55.i_crit_edge

land.lhs.true51.i.if.else55.i_crit_edge:          ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else55.i

land.lhs.true51.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.else55.i:                                      ; preds = %land.lhs.true51.i.if.else55.i_crit_edge, %sw.bb43.i.if.else55.i_crit_edge
  br label %sw.epilog.sink.split.i

sw.bb58.i:                                        ; preds = %if.end32.i
  %chip59.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 1
  %111 = ptrtoint ptr %chip59.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %chip59.i, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %112, label %sw.bb58.i.if.else71.i_crit_edge [
    i32 2, label %sw.bb58.i.sw.epilog.sink.split.i_crit_edge
    i32 7, label %sw.bb58.i.sw.epilog.sink.split.i_crit_edge119
    i32 8, label %land.lhs.true67.i
  ]

sw.bb58.i.sw.epilog.sink.split.i_crit_edge119:    ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb58.i.sw.epilog.sink.split.i_crit_edge:       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.bb58.i.if.else71.i_crit_edge:                  ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71.i

land.lhs.true67.i:                                ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 229999, i32 %spec.select.i)
  %cmp68.i = icmp ugt i32 %spec.select.i, 229999
  br i1 %cmp68.i, label %land.lhs.true67.i.sw.epilog.sink.split.i_crit_edge, label %land.lhs.true67.i.if.else71.i_crit_edge

land.lhs.true67.i.if.else71.i_crit_edge:          ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71.i

land.lhs.true67.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.else71.i:                                      ; preds = %land.lhs.true67.i.if.else71.i_crit_edge, %sw.bb58.i.if.else71.i_crit_edge
  br label %sw.epilog.sink.split.i

sw.bb76.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb76.i, %if.else71.i, %land.lhs.true67.i.sw.epilog.sink.split.i_crit_edge, %sw.bb58.i.sw.epilog.sink.split.i_crit_edge, %sw.bb58.i.sw.epilog.sink.split.i_crit_edge119, %if.else55.i, %land.lhs.true51.i.sw.epilog.sink.split.i_crit_edge, %sw.bb43.i.sw.epilog.sink.split.i_crit_edge, %sw.bb43.i.sw.epilog.sink.split.i_crit_edge118, %sw.bb.i.sw.epilog.sink.split.i_crit_edge, %if.end32.i.sw.epilog.sink.split.i_crit_edge
  %.sink149.i = phi i8 [ 64, %if.else71.i ], [ 32, %if.else55.i ], [ -48, %sw.bb76.i ], [ 16, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ 48, %sw.bb43.i.sw.epilog.sink.split.i_crit_edge ], [ 48, %sw.bb43.i.sw.epilog.sink.split.i_crit_edge118 ], [ 48, %land.lhs.true51.i.sw.epilog.sink.split.i_crit_edge ], [ 80, %sw.bb58.i.sw.epilog.sink.split.i_crit_edge ], [ 80, %sw.bb58.i.sw.epilog.sink.split.i_crit_edge119 ], [ 80, %land.lhs.true67.i.sw.epilog.sink.split.i_crit_edge ], [ 112, %if.end32.i.sw.epilog.sink.split.i_crit_edge ]
  %114 = ptrtoint ptr %CR67.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %.sink149.i, ptr %CR67.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %sw.bb.i.sw.epilog.i_crit_edge, %if.end32.i.sw.epilog.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %115 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %116, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 58) #8, !srcloc !158
  %117 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %118, i32 33749
  %119 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i8.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %120 = and i8 %119, 106
  %121 = or i8 %120, 21
  %CR3A.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 25
  %122 = ptrtoint ptr %CR3A.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %CR3A.i, align 1
  %CR53.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 35
  %123 = ptrtoint ptr %CR53.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %CR53.i, align 1
  %CR31.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 20
  %124 = ptrtoint ptr %CR31.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -116, ptr %CR31.i, align 4
  %CR66.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 44
  %125 = ptrtoint ptr %CR66.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -119, ptr %CR66.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %127, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.i, i8 88) #8, !srcloc !158
  %128 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %129, i32 33749
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i12.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %131 = and i8 %130, -128
  %CR58.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 37
  %132 = or i8 %131, 19
  %133 = ptrtoint ptr %CR58.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %CR58.i, align 1
  %SR15.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 14
  %134 = ptrtoint ptr %SR15.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -125, ptr %SR15.i, align 1
  %SR18.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 15
  %135 = ptrtoint ptr %SR18.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %SR18.i, align 4
  %CR65.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 43
  %136 = ptrtoint ptr %CR65.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %CR65.i, align 1
  %CR45.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 32
  %137 = ptrtoint ptr %CR45.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %CR45.i, align 4
  %CR43.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 31
  %138 = ptrtoint ptr %CR43.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %CR43.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %139 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %140, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i14.i, i8 64) #8, !srcloc !158
  %141 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %142, i32 33749
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i16.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %144 = and i8 %143, -2
  %CR40.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 28
  %145 = ptrtoint ptr %CR40.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %CR40.i, align 4
  %MMPR0.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 56
  %146 = ptrtoint ptr %MMPR0.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 66560, ptr %MMPR0.i, align 4
  %MMPR1.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 57
  %147 = ptrtoint ptr %MMPR1.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %MMPR1.i, align 4
  %MMPR2.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 58
  %148 = ptrtoint ptr %MMPR2.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 2056, ptr %MMPR2.i, align 4
  %MMPR3.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 59
  %149 = ptrtoint ptr %MMPR3.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 134744080, ptr %MMPR3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11250, i32 %spec.select.i)
  %cmp.i.i = icmp ult i32 %spec.select.i, 11250
  br i1 %cmp.i.i, label %sw.epilog.i.if.end14.sink.split.i.i_crit_edge, label %if.end.i.i

sw.epilog.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 360000, i32 %spec.select.i)
  %cmp5.i.i = icmp ugt i32 %spec.select.i, 360000
  br i1 %cmp5.i.i, label %if.end.i.i.if.end14.sink.split.i.i_crit_edge, label %if.end.i.i.if.end14.i.i_crit_edge

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.end.i.i.if.end14.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split.i.i

if.end14.sink.split.i.i:                          ; preds = %if.end.i.i.if.end14.sink.split.i.i_crit_edge, %sw.epilog.i.if.end14.sink.split.i.i_crit_edge
  %freq.addr.1.ph.i.i = phi i32 [ 11250, %sw.epilog.i.if.end14.sink.split.i.i_crit_edge ], [ 360000, %if.end.i.i.if.end14.sink.split.i.i_crit_edge ]
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %spec.select.i) #12
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end14.sink.split.i.i, %if.end.i.i.if.end14.i.i_crit_edge
  %freq.addr.1.i.i = phi i32 [ %div.i, %if.end.i.i.if.end14.i.i_crit_edge ], [ %freq.addr.1.ph.i.i, %if.end14.sink.split.i.i ]
  br label %for.body24.i.i

for.body24.i.i:                                   ; preds = %for.inc.i.i.for.body24.i.i_crit_edge, %if.end14.i.i
  %indvars.iv.i.i = phi i32 [ 3, %if.end14.i.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body24.i.i_crit_edge ]
  %best_m.19.i.i = phi i8 [ 127, %if.end14.i.i ], [ %best_m.2.i.i, %for.inc.i.i.for.body24.i.i_crit_edge ]
  %best_n2.18.i.i = phi i8 [ 2, %if.end14.i.i ], [ %best_n2.2.i.i, %for.inc.i.i.for.body24.i.i_crit_edge ]
  %best_n1.17.i.i = phi i8 [ 18, %if.end14.i.i ], [ %best_n1.2.i.i, %for.inc.i.i.for.body24.i.i_crit_edge ]
  %best_diff.14.i.i = phi i32 [ %freq.addr.1.i.i, %if.end14.i.i ], [ %best_diff.2.i.i, %for.inc.i.i.for.body24.i.i_crit_edge ]
  %mul.i.i = mul i32 %indvars.iv.i.i, %freq.addr.1.i.i
  %add29.i.i = add i32 %mul.i.i, 7159
  %div30.i.i = sdiv i32 %add29.i.i, 14318
  %150 = add nsw i32 %div30.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %150)
  %151 = icmp ult i32 %150, -127
  br i1 %151, label %for.body24.i.i.for.inc.i.i_crit_edge, label %if.end37.i.i

for.body24.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end37.i.i:                                     ; preds = %for.body24.i.i
  %mul38.i.i = mul nuw nsw i32 %div30.i.i, 14318
  %mul40.i.i = mul nuw nsw i32 %indvars.iv.i.i, 180000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.i.i, i32 %mul40.i.i)
  %cmp41.not.i.i = icmp ult i32 %mul38.i.i, %mul40.i.i
  %mul45.i.i = mul nuw nsw i32 %indvars.iv.i.i, 360000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.i.i, i32 %mul45.i.i)
  %cmp46.not.i.i = icmp ugt i32 %mul38.i.i, %mul45.i.i
  %or.cond1.i.i = select i1 %cmp41.not.i.i, i1 true, i1 %cmp46.not.i.i
  br i1 %or.cond1.i.i, label %if.end37.i.i.for.inc.i.i_crit_edge, label %if.then48.i.i

if.end37.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then48.i.i:                                    ; preds = %if.end37.i.i
  %sub.i.i = sub i32 %mul.i.i, %mul38.i.i
  %152 = tail call i32 @llvm.abs.i32(i32 %sub.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %best_diff.14.i.i)
  %cmp60.i.i = icmp slt i32 %152, %best_diff.14.i.i
  br i1 %cmp60.i.i, label %if.then62.i.i, label %if.then48.i.i.for.inc.i.i_crit_edge

if.then48.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then62.i.i:                                    ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.i.i = trunc i32 %div30.i.i to i8
  %153 = trunc i32 %indvars.iv.i.i to i8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then62.i.i, %if.then48.i.i.for.inc.i.i_crit_edge, %if.end37.i.i.for.inc.i.i_crit_edge, %for.body24.i.i.for.inc.i.i_crit_edge
  %best_diff.2.i.i = phi i32 [ %best_diff.14.i.i, %for.body24.i.i.for.inc.i.i_crit_edge ], [ %152, %if.then62.i.i ], [ %best_diff.14.i.i, %if.then48.i.i.for.inc.i.i_crit_edge ], [ %best_diff.14.i.i, %if.end37.i.i.for.inc.i.i_crit_edge ]
  %best_n1.2.i.i = phi i8 [ %best_n1.17.i.i, %for.body24.i.i.for.inc.i.i_crit_edge ], [ %153, %if.then62.i.i ], [ %best_n1.17.i.i, %if.then48.i.i.for.inc.i.i_crit_edge ], [ %best_n1.17.i.i, %if.end37.i.i.for.inc.i.i_crit_edge ]
  %best_n2.2.i.i = phi i8 [ %best_n2.18.i.i, %for.body24.i.i.for.inc.i.i_crit_edge ], [ 0, %if.then62.i.i ], [ %best_n2.18.i.i, %if.then48.i.i.for.inc.i.i_crit_edge ], [ %best_n2.18.i.i, %if.end37.i.i.for.inc.i.i_crit_edge ]
  %best_m.2.i.i = phi i8 [ %best_m.19.i.i, %for.body24.i.i.for.inc.i.i_crit_edge ], [ %conv63.i.i, %if.then62.i.i ], [ %best_m.19.i.i, %if.then48.i.i.for.inc.i.i_crit_edge ], [ %best_m.19.i.i, %if.end37.i.i.for.inc.i.i_crit_edge ]
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 130
  br i1 %exitcond.not.i.i, label %for.inc66.i.i, label %for.inc.i.i.for.body24.i.i_crit_edge

for.inc.i.i.for.body24.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i.i

for.inc66.i.i:                                    ; preds = %for.inc.i.i
  %mul51.1.i.i = shl nsw i32 %freq.addr.1.i.i, 1
  br label %for.body24.1.i.i

for.body24.1.i.i:                                 ; preds = %for.inc.1.i.i.for.body24.1.i.i_crit_edge, %for.inc66.i.i
  %indvars.iv.1.i.i = phi i32 [ 3, %for.inc66.i.i ], [ %indvars.iv.next.1.i.i, %for.inc.1.i.i.for.body24.1.i.i_crit_edge ]
  %best_m.19.1.i.i = phi i8 [ %best_m.2.i.i, %for.inc66.i.i ], [ %best_m.2.1.i.i, %for.inc.1.i.i.for.body24.1.i.i_crit_edge ]
  %best_n2.18.1.i.i = phi i8 [ %best_n2.2.i.i, %for.inc66.i.i ], [ %best_n2.2.1.i.i, %for.inc.1.i.i.for.body24.1.i.i_crit_edge ]
  %best_n1.17.1.i.i = phi i8 [ %best_n1.2.i.i, %for.inc66.i.i ], [ %best_n1.2.1.i.i, %for.inc.1.i.i.for.body24.1.i.i_crit_edge ]
  %best_diff.14.1.i.i = phi i32 [ %best_diff.2.i.i, %for.inc66.i.i ], [ %best_diff.2.1.i.i, %for.inc.1.i.i.for.body24.1.i.i_crit_edge ]
  %mul28.1.i.i = mul i32 %indvars.iv.1.i.i, %mul51.1.i.i
  %add29.1.i.i = add i32 %mul28.1.i.i, 7159
  %div30.1.i.i = sdiv i32 %add29.1.i.i, 14318
  %154 = add nsw i32 %div30.1.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %154)
  %155 = icmp ult i32 %154, -127
  br i1 %155, label %for.body24.1.i.i.for.inc.1.i.i_crit_edge, label %if.end37.1.i.i

for.body24.1.i.i.for.inc.1.i.i_crit_edge:         ; preds = %for.body24.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.end37.1.i.i:                                   ; preds = %for.body24.1.i.i
  %mul38.1.i.i = mul nuw nsw i32 %div30.1.i.i, 14318
  %mul40.1.i.i = mul nuw nsw i32 %indvars.iv.1.i.i, 180000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.1.i.i, i32 %mul40.1.i.i)
  %cmp41.not.1.i.i = icmp ult i32 %mul38.1.i.i, %mul40.1.i.i
  %mul45.1.i.i = mul nuw nsw i32 %indvars.iv.1.i.i, 360000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.1.i.i, i32 %mul45.1.i.i)
  %cmp46.not.1.i.i = icmp ugt i32 %mul38.1.i.i, %mul45.1.i.i
  %or.cond1.1.i.i = select i1 %cmp41.not.1.i.i, i1 true, i1 %cmp46.not.1.i.i
  br i1 %or.cond1.1.i.i, label %if.end37.1.i.i.for.inc.1.i.i_crit_edge, label %if.then48.1.i.i

if.end37.1.i.i.for.inc.1.i.i_crit_edge:           ; preds = %if.end37.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then48.1.i.i:                                  ; preds = %if.end37.1.i.i
  %sub.1.i.i = sub i32 %mul28.1.i.i, %mul38.1.i.i
  %156 = tail call i32 @llvm.abs.i32(i32 %sub.1.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %best_diff.14.1.i.i)
  %cmp60.1.i.i = icmp slt i32 %156, %best_diff.14.1.i.i
  br i1 %cmp60.1.i.i, label %if.then62.1.i.i, label %if.then48.1.i.i.for.inc.1.i.i_crit_edge

if.then48.1.i.i.for.inc.1.i.i_crit_edge:          ; preds = %if.then48.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then62.1.i.i:                                  ; preds = %if.then48.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.1.i.i = trunc i32 %div30.1.i.i to i8
  %157 = trunc i32 %indvars.iv.1.i.i to i8
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then62.1.i.i, %if.then48.1.i.i.for.inc.1.i.i_crit_edge, %if.end37.1.i.i.for.inc.1.i.i_crit_edge, %for.body24.1.i.i.for.inc.1.i.i_crit_edge
  %best_diff.2.1.i.i = phi i32 [ %best_diff.14.1.i.i, %for.body24.1.i.i.for.inc.1.i.i_crit_edge ], [ %156, %if.then62.1.i.i ], [ %best_diff.14.1.i.i, %if.then48.1.i.i.for.inc.1.i.i_crit_edge ], [ %best_diff.14.1.i.i, %if.end37.1.i.i.for.inc.1.i.i_crit_edge ]
  %best_n1.2.1.i.i = phi i8 [ %best_n1.17.1.i.i, %for.body24.1.i.i.for.inc.1.i.i_crit_edge ], [ %157, %if.then62.1.i.i ], [ %best_n1.17.1.i.i, %if.then48.1.i.i.for.inc.1.i.i_crit_edge ], [ %best_n1.17.1.i.i, %if.end37.1.i.i.for.inc.1.i.i_crit_edge ]
  %best_n2.2.1.i.i = phi i8 [ %best_n2.18.1.i.i, %for.body24.1.i.i.for.inc.1.i.i_crit_edge ], [ 1, %if.then62.1.i.i ], [ %best_n2.18.1.i.i, %if.then48.1.i.i.for.inc.1.i.i_crit_edge ], [ %best_n2.18.1.i.i, %if.end37.1.i.i.for.inc.1.i.i_crit_edge ]
  %best_m.2.1.i.i = phi i8 [ %best_m.19.1.i.i, %for.body24.1.i.i.for.inc.1.i.i_crit_edge ], [ %conv63.1.i.i, %if.then62.1.i.i ], [ %best_m.19.1.i.i, %if.then48.1.i.i.for.inc.1.i.i_crit_edge ], [ %best_m.19.1.i.i, %if.end37.1.i.i.for.inc.1.i.i_crit_edge ]
  %indvars.iv.next.1.i.i = add nuw nsw i32 %indvars.iv.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %indvars.iv.next.1.i.i, 130
  br i1 %exitcond.1.not.i.i, label %for.inc66.1.i.i, label %for.inc.1.i.i.for.body24.1.i.i_crit_edge

for.inc.1.i.i.for.body24.1.i.i_crit_edge:         ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.1.i.i

for.inc66.1.i.i:                                  ; preds = %for.inc.1.i.i
  %mul51.2.i.i = shl i32 %freq.addr.1.i.i, 2
  br label %for.body24.2.i.i

for.body24.2.i.i:                                 ; preds = %for.inc.2.i.i.for.body24.2.i.i_crit_edge, %for.inc66.1.i.i
  %indvars.iv.2.i.i = phi i32 [ 3, %for.inc66.1.i.i ], [ %indvars.iv.next.2.i.i, %for.inc.2.i.i.for.body24.2.i.i_crit_edge ]
  %best_m.19.2.i.i = phi i8 [ %best_m.2.1.i.i, %for.inc66.1.i.i ], [ %best_m.2.2.i.i, %for.inc.2.i.i.for.body24.2.i.i_crit_edge ]
  %best_n2.18.2.i.i = phi i8 [ %best_n2.2.1.i.i, %for.inc66.1.i.i ], [ %best_n2.2.2.i.i, %for.inc.2.i.i.for.body24.2.i.i_crit_edge ]
  %best_n1.17.2.i.i = phi i8 [ %best_n1.2.1.i.i, %for.inc66.1.i.i ], [ %best_n1.2.2.i.i, %for.inc.2.i.i.for.body24.2.i.i_crit_edge ]
  %best_diff.14.2.i.i = phi i32 [ %best_diff.2.1.i.i, %for.inc66.1.i.i ], [ %best_diff.2.2.i.i, %for.inc.2.i.i.for.body24.2.i.i_crit_edge ]
  %mul28.2.i.i = mul i32 %indvars.iv.2.i.i, %mul51.2.i.i
  %add29.2.i.i = add i32 %mul28.2.i.i, 7159
  %div30.2.i.i = sdiv i32 %add29.2.i.i, 14318
  %158 = add nsw i32 %div30.2.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %158)
  %159 = icmp ult i32 %158, -127
  br i1 %159, label %for.body24.2.i.i.for.inc.2.i.i_crit_edge, label %if.end37.2.i.i

for.body24.2.i.i.for.inc.2.i.i_crit_edge:         ; preds = %for.body24.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.end37.2.i.i:                                   ; preds = %for.body24.2.i.i
  %mul38.2.i.i = mul nuw nsw i32 %div30.2.i.i, 14318
  %mul40.2.i.i = mul nuw nsw i32 %indvars.iv.2.i.i, 180000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.2.i.i, i32 %mul40.2.i.i)
  %cmp41.not.2.i.i = icmp ult i32 %mul38.2.i.i, %mul40.2.i.i
  %mul45.2.i.i = mul nuw nsw i32 %indvars.iv.2.i.i, 360000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.2.i.i, i32 %mul45.2.i.i)
  %cmp46.not.2.i.i = icmp ugt i32 %mul38.2.i.i, %mul45.2.i.i
  %or.cond1.2.i.i = select i1 %cmp41.not.2.i.i, i1 true, i1 %cmp46.not.2.i.i
  br i1 %or.cond1.2.i.i, label %if.end37.2.i.i.for.inc.2.i.i_crit_edge, label %if.then48.2.i.i

if.end37.2.i.i.for.inc.2.i.i_crit_edge:           ; preds = %if.end37.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.then48.2.i.i:                                  ; preds = %if.end37.2.i.i
  %sub.2.i.i = sub i32 %mul28.2.i.i, %mul38.2.i.i
  %160 = tail call i32 @llvm.abs.i32(i32 %sub.2.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %best_diff.14.2.i.i)
  %cmp60.2.i.i = icmp slt i32 %160, %best_diff.14.2.i.i
  br i1 %cmp60.2.i.i, label %if.then62.2.i.i, label %if.then48.2.i.i.for.inc.2.i.i_crit_edge

if.then48.2.i.i.for.inc.2.i.i_crit_edge:          ; preds = %if.then48.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.then62.2.i.i:                                  ; preds = %if.then48.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.2.i.i = trunc i32 %div30.2.i.i to i8
  %161 = trunc i32 %indvars.iv.2.i.i to i8
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then62.2.i.i, %if.then48.2.i.i.for.inc.2.i.i_crit_edge, %if.end37.2.i.i.for.inc.2.i.i_crit_edge, %for.body24.2.i.i.for.inc.2.i.i_crit_edge
  %best_diff.2.2.i.i = phi i32 [ %best_diff.14.2.i.i, %for.body24.2.i.i.for.inc.2.i.i_crit_edge ], [ %160, %if.then62.2.i.i ], [ %best_diff.14.2.i.i, %if.then48.2.i.i.for.inc.2.i.i_crit_edge ], [ %best_diff.14.2.i.i, %if.end37.2.i.i.for.inc.2.i.i_crit_edge ]
  %best_n1.2.2.i.i = phi i8 [ %best_n1.17.2.i.i, %for.body24.2.i.i.for.inc.2.i.i_crit_edge ], [ %161, %if.then62.2.i.i ], [ %best_n1.17.2.i.i, %if.then48.2.i.i.for.inc.2.i.i_crit_edge ], [ %best_n1.17.2.i.i, %if.end37.2.i.i.for.inc.2.i.i_crit_edge ]
  %best_n2.2.2.i.i = phi i8 [ %best_n2.18.2.i.i, %for.body24.2.i.i.for.inc.2.i.i_crit_edge ], [ 2, %if.then62.2.i.i ], [ %best_n2.18.2.i.i, %if.then48.2.i.i.for.inc.2.i.i_crit_edge ], [ %best_n2.18.2.i.i, %if.end37.2.i.i.for.inc.2.i.i_crit_edge ]
  %best_m.2.2.i.i = phi i8 [ %best_m.19.2.i.i, %for.body24.2.i.i.for.inc.2.i.i_crit_edge ], [ %conv63.2.i.i, %if.then62.2.i.i ], [ %best_m.19.2.i.i, %if.then48.2.i.i.for.inc.2.i.i_crit_edge ], [ %best_m.19.2.i.i, %if.end37.2.i.i.for.inc.2.i.i_crit_edge ]
  %indvars.iv.next.2.i.i = add nuw nsw i32 %indvars.iv.2.i.i, 1
  %exitcond.2.not.i.i = icmp eq i32 %indvars.iv.next.2.i.i, 130
  br i1 %exitcond.2.not.i.i, label %for.inc66.2.i.i, label %for.inc.2.i.i.for.body24.2.i.i_crit_edge

for.inc.2.i.i.for.body24.2.i.i_crit_edge:         ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.2.i.i

for.inc66.2.i.i:                                  ; preds = %for.inc.2.i.i
  %mul51.3.i.i = shl i32 %freq.addr.1.i.i, 3
  br label %for.body24.3.i.i

for.body24.3.i.i:                                 ; preds = %for.inc.3.i.i.for.body24.3.i.i_crit_edge, %for.inc66.2.i.i
  %indvars.iv.3.i.i = phi i32 [ 3, %for.inc66.2.i.i ], [ %indvars.iv.next.3.i.i, %for.inc.3.i.i.for.body24.3.i.i_crit_edge ]
  %best_m.19.3.i.i = phi i8 [ %best_m.2.2.i.i, %for.inc66.2.i.i ], [ %best_m.2.3.i.i, %for.inc.3.i.i.for.body24.3.i.i_crit_edge ]
  %best_n2.18.3.i.i = phi i8 [ %best_n2.2.2.i.i, %for.inc66.2.i.i ], [ %best_n2.2.3.i.i, %for.inc.3.i.i.for.body24.3.i.i_crit_edge ]
  %best_n1.17.3.i.i = phi i8 [ %best_n1.2.2.i.i, %for.inc66.2.i.i ], [ %best_n1.2.3.i.i, %for.inc.3.i.i.for.body24.3.i.i_crit_edge ]
  %best_diff.14.3.i.i = phi i32 [ %best_diff.2.2.i.i, %for.inc66.2.i.i ], [ %best_diff.2.3.i.i, %for.inc.3.i.i.for.body24.3.i.i_crit_edge ]
  %mul28.3.i.i = mul i32 %indvars.iv.3.i.i, %mul51.3.i.i
  %add29.3.i.i = add i32 %mul28.3.i.i, 7159
  %div30.3.i.i = sdiv i32 %add29.3.i.i, 14318
  %162 = add nsw i32 %div30.3.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %162)
  %163 = icmp ult i32 %162, -127
  br i1 %163, label %for.body24.3.i.i.for.inc.3.i.i_crit_edge, label %if.end37.3.i.i

for.body24.3.i.i.for.inc.3.i.i_crit_edge:         ; preds = %for.body24.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.end37.3.i.i:                                   ; preds = %for.body24.3.i.i
  %mul38.3.i.i = mul nuw nsw i32 %div30.3.i.i, 14318
  %mul40.3.i.i = mul nuw nsw i32 %indvars.iv.3.i.i, 180000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.3.i.i, i32 %mul40.3.i.i)
  %cmp41.not.3.i.i = icmp ult i32 %mul38.3.i.i, %mul40.3.i.i
  %mul45.3.i.i = mul nuw nsw i32 %indvars.iv.3.i.i, 360000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.3.i.i, i32 %mul45.3.i.i)
  %cmp46.not.3.i.i = icmp ugt i32 %mul38.3.i.i, %mul45.3.i.i
  %or.cond1.3.i.i = select i1 %cmp41.not.3.i.i, i1 true, i1 %cmp46.not.3.i.i
  br i1 %or.cond1.3.i.i, label %if.end37.3.i.i.for.inc.3.i.i_crit_edge, label %if.then48.3.i.i

if.end37.3.i.i.for.inc.3.i.i_crit_edge:           ; preds = %if.end37.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.then48.3.i.i:                                  ; preds = %if.end37.3.i.i
  %sub.3.i.i = sub i32 %mul28.3.i.i, %mul38.3.i.i
  %164 = tail call i32 @llvm.abs.i32(i32 %sub.3.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %best_diff.14.3.i.i)
  %cmp60.3.i.i = icmp slt i32 %164, %best_diff.14.3.i.i
  br i1 %cmp60.3.i.i, label %if.then62.3.i.i, label %if.then48.3.i.i.for.inc.3.i.i_crit_edge

if.then48.3.i.i.for.inc.3.i.i_crit_edge:          ; preds = %if.then48.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.then62.3.i.i:                                  ; preds = %if.then48.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.3.i.i = trunc i32 %div30.3.i.i to i8
  %165 = trunc i32 %indvars.iv.3.i.i to i8
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then62.3.i.i, %if.then48.3.i.i.for.inc.3.i.i_crit_edge, %if.end37.3.i.i.for.inc.3.i.i_crit_edge, %for.body24.3.i.i.for.inc.3.i.i_crit_edge
  %best_diff.2.3.i.i = phi i32 [ %best_diff.14.3.i.i, %for.body24.3.i.i.for.inc.3.i.i_crit_edge ], [ %164, %if.then62.3.i.i ], [ %best_diff.14.3.i.i, %if.then48.3.i.i.for.inc.3.i.i_crit_edge ], [ %best_diff.14.3.i.i, %if.end37.3.i.i.for.inc.3.i.i_crit_edge ]
  %best_n1.2.3.i.i = phi i8 [ %best_n1.17.3.i.i, %for.body24.3.i.i.for.inc.3.i.i_crit_edge ], [ %165, %if.then62.3.i.i ], [ %best_n1.17.3.i.i, %if.then48.3.i.i.for.inc.3.i.i_crit_edge ], [ %best_n1.17.3.i.i, %if.end37.3.i.i.for.inc.3.i.i_crit_edge ]
  %best_n2.2.3.i.i = phi i8 [ %best_n2.18.3.i.i, %for.body24.3.i.i.for.inc.3.i.i_crit_edge ], [ 3, %if.then62.3.i.i ], [ %best_n2.18.3.i.i, %if.then48.3.i.i.for.inc.3.i.i_crit_edge ], [ %best_n2.18.3.i.i, %if.end37.3.i.i.for.inc.3.i.i_crit_edge ]
  %best_m.2.3.i.i = phi i8 [ %best_m.19.3.i.i, %for.body24.3.i.i.for.inc.3.i.i_crit_edge ], [ %conv63.3.i.i, %if.then62.3.i.i ], [ %best_m.19.3.i.i, %if.then48.3.i.i.for.inc.3.i.i_crit_edge ], [ %best_m.19.3.i.i, %if.end37.3.i.i.for.inc.3.i.i_crit_edge ]
  %indvars.iv.next.3.i.i = add nuw nsw i32 %indvars.iv.3.i.i, 1
  %exitcond.3.not.i.i = icmp eq i32 %indvars.iv.next.3.i.i, 130
  br i1 %exitcond.3.not.i.i, label %for.inc66.3.i.i, label %for.inc.3.i.i.for.body24.3.i.i_crit_edge

for.inc.3.i.i.for.body24.3.i.i_crit_edge:         ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.3.i.i

for.inc66.3.i.i:                                  ; preds = %for.inc.3.i.i
  %mul51.4.i.i = shl i32 %freq.addr.1.i.i, 4
  br label %for.body24.4.i.i

for.body24.4.i.i:                                 ; preds = %for.inc.4.i.i.for.body24.4.i.i_crit_edge, %for.inc66.3.i.i
  %indvars.iv.4.i.i = phi i32 [ 3, %for.inc66.3.i.i ], [ %indvars.iv.next.4.i.i, %for.inc.4.i.i.for.body24.4.i.i_crit_edge ]
  %best_m.19.4.i.i = phi i8 [ %best_m.2.3.i.i, %for.inc66.3.i.i ], [ %best_m.2.4.i.i, %for.inc.4.i.i.for.body24.4.i.i_crit_edge ]
  %best_n2.18.4.i.i = phi i8 [ %best_n2.2.3.i.i, %for.inc66.3.i.i ], [ %best_n2.2.4.i.i, %for.inc.4.i.i.for.body24.4.i.i_crit_edge ]
  %best_n1.17.4.i.i = phi i8 [ %best_n1.2.3.i.i, %for.inc66.3.i.i ], [ %best_n1.2.4.i.i, %for.inc.4.i.i.for.body24.4.i.i_crit_edge ]
  %best_diff.14.4.i.i = phi i32 [ %best_diff.2.3.i.i, %for.inc66.3.i.i ], [ %best_diff.2.4.i.i, %for.inc.4.i.i.for.body24.4.i.i_crit_edge ]
  %mul28.4.i.i = mul i32 %indvars.iv.4.i.i, %mul51.4.i.i
  %add29.4.i.i = add i32 %mul28.4.i.i, 7159
  %div30.4.i.i = sdiv i32 %add29.4.i.i, 14318
  %166 = add nsw i32 %div30.4.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %166)
  %167 = icmp ult i32 %166, -127
  br i1 %167, label %for.body24.4.i.i.for.inc.4.i.i_crit_edge, label %if.end37.4.i.i

for.body24.4.i.i.for.inc.4.i.i_crit_edge:         ; preds = %for.body24.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.end37.4.i.i:                                   ; preds = %for.body24.4.i.i
  %mul38.4.i.i = mul nuw nsw i32 %div30.4.i.i, 14318
  %mul40.4.i.i = mul nuw nsw i32 %indvars.iv.4.i.i, 180000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.4.i.i, i32 %mul40.4.i.i)
  %cmp41.not.4.i.i = icmp ult i32 %mul38.4.i.i, %mul40.4.i.i
  %mul45.4.i.i = mul nuw nsw i32 %indvars.iv.4.i.i, 360000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.4.i.i, i32 %mul45.4.i.i)
  %cmp46.not.4.i.i = icmp ugt i32 %mul38.4.i.i, %mul45.4.i.i
  %or.cond1.4.i.i = select i1 %cmp41.not.4.i.i, i1 true, i1 %cmp46.not.4.i.i
  br i1 %or.cond1.4.i.i, label %if.end37.4.i.i.for.inc.4.i.i_crit_edge, label %if.then48.4.i.i

if.end37.4.i.i.for.inc.4.i.i_crit_edge:           ; preds = %if.end37.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.then48.4.i.i:                                  ; preds = %if.end37.4.i.i
  %sub.4.i.i = sub i32 %mul28.4.i.i, %mul38.4.i.i
  %168 = tail call i32 @llvm.abs.i32(i32 %sub.4.i.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %best_diff.14.4.i.i)
  %cmp60.4.i.i = icmp slt i32 %168, %best_diff.14.4.i.i
  br i1 %cmp60.4.i.i, label %if.then62.4.i.i, label %if.then48.4.i.i.for.inc.4.i.i_crit_edge

if.then48.4.i.i.for.inc.4.i.i_crit_edge:          ; preds = %if.then48.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.then62.4.i.i:                                  ; preds = %if.then48.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.4.i.i = trunc i32 %div30.4.i.i to i8
  %169 = trunc i32 %indvars.iv.4.i.i to i8
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then62.4.i.i, %if.then48.4.i.i.for.inc.4.i.i_crit_edge, %if.end37.4.i.i.for.inc.4.i.i_crit_edge, %for.body24.4.i.i.for.inc.4.i.i_crit_edge
  %best_diff.2.4.i.i = phi i32 [ %best_diff.14.4.i.i, %for.body24.4.i.i.for.inc.4.i.i_crit_edge ], [ %168, %if.then62.4.i.i ], [ %best_diff.14.4.i.i, %if.then48.4.i.i.for.inc.4.i.i_crit_edge ], [ %best_diff.14.4.i.i, %if.end37.4.i.i.for.inc.4.i.i_crit_edge ]
  %best_n1.2.4.i.i = phi i8 [ %best_n1.17.4.i.i, %for.body24.4.i.i.for.inc.4.i.i_crit_edge ], [ %169, %if.then62.4.i.i ], [ %best_n1.17.4.i.i, %if.then48.4.i.i.for.inc.4.i.i_crit_edge ], [ %best_n1.17.4.i.i, %if.end37.4.i.i.for.inc.4.i.i_crit_edge ]
  %best_n2.2.4.i.i = phi i8 [ %best_n2.18.4.i.i, %for.body24.4.i.i.for.inc.4.i.i_crit_edge ], [ 4, %if.then62.4.i.i ], [ %best_n2.18.4.i.i, %if.then48.4.i.i.for.inc.4.i.i_crit_edge ], [ %best_n2.18.4.i.i, %if.end37.4.i.i.for.inc.4.i.i_crit_edge ]
  %best_m.2.4.i.i = phi i8 [ %best_m.19.4.i.i, %for.body24.4.i.i.for.inc.4.i.i_crit_edge ], [ %conv63.4.i.i, %if.then62.4.i.i ], [ %best_m.19.4.i.i, %if.then48.4.i.i.for.inc.4.i.i_crit_edge ], [ %best_m.19.4.i.i, %if.end37.4.i.i.for.inc.4.i.i_crit_edge ]
  %indvars.iv.next.4.i.i = add nuw nsw i32 %indvars.iv.4.i.i, 1
  %exitcond.4.not.i.i = icmp eq i32 %indvars.iv.next.4.i.i, 130
  br i1 %exitcond.4.not.i.i, label %SavageCalcClock.exit.i, label %for.inc.4.i.i.for.body24.4.i.i_crit_edge

for.inc.4.i.i.for.body24.4.i.i_crit_edge:         ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.4.i.i

SavageCalcClock.exit.i:                           ; preds = %for.inc.4.i.i
  %conv69.i.i = zext i8 %best_n1.2.4.i.i to i32
  %sub70.i.i = add nsw i32 %conv69.i.i, -2
  %conv71.i.i = zext i8 %best_n2.2.4.i.i to i32
  %conv72.i.i = zext i8 %best_m.2.4.i.i to i32
  %sub73.i.i = add nsw i32 %conv72.i.i, -2
  %MCLK.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 21
  %170 = ptrtoint ptr %MCLK.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %MCLK.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp92.i = icmp slt i32 %171, 1
  br i1 %cmp92.i, label %if.then94.i, label %SavageCalcClock.exit.i.for.body9.i.i_crit_edge

SavageCalcClock.exit.i.for.body9.i.i_crit_edge:   ; preds = %SavageCalcClock.exit.i
  br label %for.body9.i.i

if.then94.i:                                      ; preds = %SavageCalcClock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %SR10.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 10
  %172 = ptrtoint ptr %SR10.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -1, ptr %SR10.i, align 1
  %SR11.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 11
  %173 = ptrtoint ptr %SR11.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -1, ptr %SR11.i, align 4
  br label %if.end100.i

for.body9.i.i:                                    ; preds = %for.inc.i28.i.for.body9.i.i_crit_edge, %SavageCalcClock.exit.i.for.body9.i.i_crit_edge
  %indvars.iv.i17.i = phi i32 [ %indvars.iv.next.i26.i, %for.inc.i28.i.for.body9.i.i_crit_edge ], [ 3, %SavageCalcClock.exit.i.for.body9.i.i_crit_edge ]
  %best_m.17.i.i = phi i8 [ %best_m.2.i25.i, %for.inc.i28.i.for.body9.i.i_crit_edge ], [ 127, %SavageCalcClock.exit.i.for.body9.i.i_crit_edge ]
  %best_n2.16.i.i = phi i8 [ %best_n2.2.i24.i, %for.inc.i28.i.for.body9.i.i_crit_edge ], [ 2, %SavageCalcClock.exit.i.for.body9.i.i_crit_edge ]
  %best_n1.15.i.i = phi i8 [ %best_n1.2.i23.i, %for.inc.i28.i.for.body9.i.i_crit_edge ], [ 18, %SavageCalcClock.exit.i.for.body9.i.i_crit_edge ]
  %best_diff.12.i.i = phi i32 [ %best_diff.2.i22.i, %for.inc.i28.i.for.body9.i.i_crit_edge ], [ %171, %SavageCalcClock.exit.i.for.body9.i.i_crit_edge ]
  %mul.i18.i = mul i32 %indvars.iv.i17.i, %171
  %add13.i.i = add i32 %mul.i18.i, 7159
  %div.i.i = sdiv i32 %add13.i.i, 14318
  %174 = add nsw i32 %div.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %174)
  %175 = icmp ult i32 %174, -127
  br i1 %175, label %for.body9.i.i.for.inc.i28.i_crit_edge, label %if.end.i20.i

for.body9.i.i.for.inc.i28.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i28.i

if.end.i20.i:                                     ; preds = %for.body9.i.i
  %mul19.i.i = mul nuw nsw i32 %div.i.i, 14318
  %mul21.i.i = mul nuw nsw i32 %indvars.iv.i17.i, 135000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i.i, i32 %mul21.i.i)
  %cmp22.not.i.i = icmp ult i32 %mul19.i.i, %mul21.i.i
  %mul26.i.i = mul nuw nsw i32 %indvars.iv.i17.i, 270000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i.i, i32 %mul26.i.i)
  %cmp27.not.i.i = icmp ugt i32 %mul19.i.i, %mul26.i.i
  %or.cond1.i19.i = select i1 %cmp22.not.i.i, i1 true, i1 %cmp27.not.i.i
  br i1 %or.cond1.i19.i, label %if.end.i20.i.for.inc.i28.i_crit_edge, label %if.then29.i.i

if.end.i20.i.for.inc.i28.i_crit_edge:             ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i28.i

if.then29.i.i:                                    ; preds = %if.end.i20.i
  %sub.i21.i = sub i32 %mul.i18.i, %mul19.i.i
  %176 = tail call i32 @llvm.abs.i32(i32 %sub.i21.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %best_diff.12.i.i)
  %cmp41.i.i = icmp slt i32 %176, %best_diff.12.i.i
  br i1 %cmp41.i.i, label %if.then43.i.i, label %if.then29.i.i.for.inc.i28.i_crit_edge

if.then29.i.i.for.inc.i28.i_crit_edge:            ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i28.i

if.then43.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv44.i.i = trunc i32 %div.i.i to i8
  %177 = trunc i32 %indvars.iv.i17.i to i8
  br label %for.inc.i28.i

for.inc.i28.i:                                    ; preds = %if.then43.i.i, %if.then29.i.i.for.inc.i28.i_crit_edge, %if.end.i20.i.for.inc.i28.i_crit_edge, %for.body9.i.i.for.inc.i28.i_crit_edge
  %best_diff.2.i22.i = phi i32 [ %best_diff.12.i.i, %for.body9.i.i.for.inc.i28.i_crit_edge ], [ %176, %if.then43.i.i ], [ %best_diff.12.i.i, %if.then29.i.i.for.inc.i28.i_crit_edge ], [ %best_diff.12.i.i, %if.end.i20.i.for.inc.i28.i_crit_edge ]
  %best_n1.2.i23.i = phi i8 [ %best_n1.15.i.i, %for.body9.i.i.for.inc.i28.i_crit_edge ], [ %177, %if.then43.i.i ], [ %best_n1.15.i.i, %if.then29.i.i.for.inc.i28.i_crit_edge ], [ %best_n1.15.i.i, %if.end.i20.i.for.inc.i28.i_crit_edge ]
  %best_n2.2.i24.i = phi i8 [ %best_n2.16.i.i, %for.body9.i.i.for.inc.i28.i_crit_edge ], [ 0, %if.then43.i.i ], [ %best_n2.16.i.i, %if.then29.i.i.for.inc.i28.i_crit_edge ], [ %best_n2.16.i.i, %if.end.i20.i.for.inc.i28.i_crit_edge ]
  %best_m.2.i25.i = phi i8 [ %best_m.17.i.i, %for.body9.i.i.for.inc.i28.i_crit_edge ], [ %conv44.i.i, %if.then43.i.i ], [ %best_m.17.i.i, %if.then29.i.i.for.inc.i28.i_crit_edge ], [ %best_m.17.i.i, %if.end.i20.i.for.inc.i28.i_crit_edge ]
  %indvars.iv.next.i26.i = add nuw nsw i32 %indvars.iv.i17.i, 1
  %exitcond.not.i27.i = icmp eq i32 %indvars.iv.next.i26.i, 34
  br i1 %exitcond.not.i27.i, label %for.inc47.i.i, label %for.inc.i28.i.for.body9.i.i_crit_edge

for.inc.i28.i.for.body9.i.i_crit_edge:            ; preds = %for.inc.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.i.i

for.inc47.i.i:                                    ; preds = %for.inc.i28.i
  %mul32.1.i.i = shl i32 %171, 1
  br label %for.body9.1.i.i

for.body9.1.i.i:                                  ; preds = %for.inc.1.i39.i.for.body9.1.i.i_crit_edge, %for.inc47.i.i
  %indvars.iv.1.i29.i = phi i32 [ 3, %for.inc47.i.i ], [ %indvars.iv.next.1.i37.i, %for.inc.1.i39.i.for.body9.1.i.i_crit_edge ]
  %best_m.17.1.i.i = phi i8 [ %best_m.2.i25.i, %for.inc47.i.i ], [ %best_m.2.1.i36.i, %for.inc.1.i39.i.for.body9.1.i.i_crit_edge ]
  %best_n2.16.1.i.i = phi i8 [ %best_n2.2.i24.i, %for.inc47.i.i ], [ %best_n2.2.1.i35.i, %for.inc.1.i39.i.for.body9.1.i.i_crit_edge ]
  %best_n1.15.1.i.i = phi i8 [ %best_n1.2.i23.i, %for.inc47.i.i ], [ %best_n1.2.1.i34.i, %for.inc.1.i39.i.for.body9.1.i.i_crit_edge ]
  %best_diff.12.1.i.i = phi i32 [ %best_diff.2.i22.i, %for.inc47.i.i ], [ %best_diff.2.1.i33.i, %for.inc.1.i39.i.for.body9.1.i.i_crit_edge ]
  %mul12.1.i.i = mul i32 %indvars.iv.1.i29.i, %mul32.1.i.i
  %add13.1.i.i = add i32 %mul12.1.i.i, 7159
  %div.1.i.i = sdiv i32 %add13.1.i.i, 14318
  %178 = add nsw i32 %div.1.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %178)
  %179 = icmp ult i32 %178, -127
  br i1 %179, label %for.body9.1.i.i.for.inc.1.i39.i_crit_edge, label %if.end.1.i.i

for.body9.1.i.i.for.inc.1.i39.i_crit_edge:        ; preds = %for.body9.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i39.i

if.end.1.i.i:                                     ; preds = %for.body9.1.i.i
  %mul19.1.i.i = mul nuw nsw i32 %div.1.i.i, 14318
  %mul21.1.i.i = mul nuw nsw i32 %indvars.iv.1.i29.i, 135000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.1.i.i, i32 %mul21.1.i.i)
  %cmp22.not.1.i.i = icmp ult i32 %mul19.1.i.i, %mul21.1.i.i
  %mul26.1.i.i = mul nuw nsw i32 %indvars.iv.1.i29.i, 270000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.1.i.i, i32 %mul26.1.i.i)
  %cmp27.not.1.i.i = icmp ugt i32 %mul19.1.i.i, %mul26.1.i.i
  %or.cond1.1.i31.i = select i1 %cmp22.not.1.i.i, i1 true, i1 %cmp27.not.1.i.i
  br i1 %or.cond1.1.i31.i, label %if.end.1.i.i.for.inc.1.i39.i_crit_edge, label %if.then29.1.i.i

if.end.1.i.i.for.inc.1.i39.i_crit_edge:           ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i39.i

if.then29.1.i.i:                                  ; preds = %if.end.1.i.i
  %sub.1.i32.i = sub i32 %mul12.1.i.i, %mul19.1.i.i
  %180 = tail call i32 @llvm.abs.i32(i32 %sub.1.i32.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %best_diff.12.1.i.i)
  %cmp41.1.i.i = icmp slt i32 %180, %best_diff.12.1.i.i
  br i1 %cmp41.1.i.i, label %if.then43.1.i.i, label %if.then29.1.i.i.for.inc.1.i39.i_crit_edge

if.then29.1.i.i.for.inc.1.i39.i_crit_edge:        ; preds = %if.then29.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i39.i

if.then43.1.i.i:                                  ; preds = %if.then29.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv44.1.i.i = trunc i32 %div.1.i.i to i8
  %181 = trunc i32 %indvars.iv.1.i29.i to i8
  br label %for.inc.1.i39.i

for.inc.1.i39.i:                                  ; preds = %if.then43.1.i.i, %if.then29.1.i.i.for.inc.1.i39.i_crit_edge, %if.end.1.i.i.for.inc.1.i39.i_crit_edge, %for.body9.1.i.i.for.inc.1.i39.i_crit_edge
  %best_diff.2.1.i33.i = phi i32 [ %best_diff.12.1.i.i, %for.body9.1.i.i.for.inc.1.i39.i_crit_edge ], [ %180, %if.then43.1.i.i ], [ %best_diff.12.1.i.i, %if.then29.1.i.i.for.inc.1.i39.i_crit_edge ], [ %best_diff.12.1.i.i, %if.end.1.i.i.for.inc.1.i39.i_crit_edge ]
  %best_n1.2.1.i34.i = phi i8 [ %best_n1.15.1.i.i, %for.body9.1.i.i.for.inc.1.i39.i_crit_edge ], [ %181, %if.then43.1.i.i ], [ %best_n1.15.1.i.i, %if.then29.1.i.i.for.inc.1.i39.i_crit_edge ], [ %best_n1.15.1.i.i, %if.end.1.i.i.for.inc.1.i39.i_crit_edge ]
  %best_n2.2.1.i35.i = phi i8 [ %best_n2.16.1.i.i, %for.body9.1.i.i.for.inc.1.i39.i_crit_edge ], [ 1, %if.then43.1.i.i ], [ %best_n2.16.1.i.i, %if.then29.1.i.i.for.inc.1.i39.i_crit_edge ], [ %best_n2.16.1.i.i, %if.end.1.i.i.for.inc.1.i39.i_crit_edge ]
  %best_m.2.1.i36.i = phi i8 [ %best_m.17.1.i.i, %for.body9.1.i.i.for.inc.1.i39.i_crit_edge ], [ %conv44.1.i.i, %if.then43.1.i.i ], [ %best_m.17.1.i.i, %if.then29.1.i.i.for.inc.1.i39.i_crit_edge ], [ %best_m.17.1.i.i, %if.end.1.i.i.for.inc.1.i39.i_crit_edge ]
  %indvars.iv.next.1.i37.i = add nuw nsw i32 %indvars.iv.1.i29.i, 1
  %exitcond.1.not.i38.i = icmp eq i32 %indvars.iv.next.1.i37.i, 34
  br i1 %exitcond.1.not.i38.i, label %for.inc47.1.i.i, label %for.inc.1.i39.i.for.body9.1.i.i_crit_edge

for.inc.1.i39.i.for.body9.1.i.i_crit_edge:        ; preds = %for.inc.1.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.1.i.i

for.inc47.1.i.i:                                  ; preds = %for.inc.1.i39.i
  %mul32.2.i.i = shl i32 %171, 2
  br label %for.body9.2.i.i

for.body9.2.i.i:                                  ; preds = %for.inc.2.i50.i.for.body9.2.i.i_crit_edge, %for.inc47.1.i.i
  %indvars.iv.2.i40.i = phi i32 [ 3, %for.inc47.1.i.i ], [ %indvars.iv.next.2.i48.i, %for.inc.2.i50.i.for.body9.2.i.i_crit_edge ]
  %best_m.17.2.i.i = phi i8 [ %best_m.2.1.i36.i, %for.inc47.1.i.i ], [ %best_m.2.2.i47.i, %for.inc.2.i50.i.for.body9.2.i.i_crit_edge ]
  %best_n2.16.2.i.i = phi i8 [ %best_n2.2.1.i35.i, %for.inc47.1.i.i ], [ %best_n2.2.2.i46.i, %for.inc.2.i50.i.for.body9.2.i.i_crit_edge ]
  %best_n1.15.2.i.i = phi i8 [ %best_n1.2.1.i34.i, %for.inc47.1.i.i ], [ %best_n1.2.2.i45.i, %for.inc.2.i50.i.for.body9.2.i.i_crit_edge ]
  %best_diff.12.2.i.i = phi i32 [ %best_diff.2.1.i33.i, %for.inc47.1.i.i ], [ %best_diff.2.2.i44.i, %for.inc.2.i50.i.for.body9.2.i.i_crit_edge ]
  %mul12.2.i.i = mul i32 %indvars.iv.2.i40.i, %mul32.2.i.i
  %add13.2.i.i = add i32 %mul12.2.i.i, 7159
  %div.2.i.i = sdiv i32 %add13.2.i.i, 14318
  %182 = add nsw i32 %div.2.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %182)
  %183 = icmp ult i32 %182, -127
  br i1 %183, label %for.body9.2.i.i.for.inc.2.i50.i_crit_edge, label %if.end.2.i.i

for.body9.2.i.i.for.inc.2.i50.i_crit_edge:        ; preds = %for.body9.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i50.i

if.end.2.i.i:                                     ; preds = %for.body9.2.i.i
  %mul19.2.i.i = mul nuw nsw i32 %div.2.i.i, 14318
  %mul21.2.i.i = mul nuw nsw i32 %indvars.iv.2.i40.i, 135000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.2.i.i, i32 %mul21.2.i.i)
  %cmp22.not.2.i.i = icmp ult i32 %mul19.2.i.i, %mul21.2.i.i
  %mul26.2.i.i = mul nuw nsw i32 %indvars.iv.2.i40.i, 270000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.2.i.i, i32 %mul26.2.i.i)
  %cmp27.not.2.i.i = icmp ugt i32 %mul19.2.i.i, %mul26.2.i.i
  %or.cond1.2.i42.i = select i1 %cmp22.not.2.i.i, i1 true, i1 %cmp27.not.2.i.i
  br i1 %or.cond1.2.i42.i, label %if.end.2.i.i.for.inc.2.i50.i_crit_edge, label %if.then29.2.i.i

if.end.2.i.i.for.inc.2.i50.i_crit_edge:           ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i50.i

if.then29.2.i.i:                                  ; preds = %if.end.2.i.i
  %sub.2.i43.i = sub i32 %mul12.2.i.i, %mul19.2.i.i
  %184 = tail call i32 @llvm.abs.i32(i32 %sub.2.i43.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %best_diff.12.2.i.i)
  %cmp41.2.i.i = icmp slt i32 %184, %best_diff.12.2.i.i
  br i1 %cmp41.2.i.i, label %if.then43.2.i.i, label %if.then29.2.i.i.for.inc.2.i50.i_crit_edge

if.then29.2.i.i.for.inc.2.i50.i_crit_edge:        ; preds = %if.then29.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i50.i

if.then43.2.i.i:                                  ; preds = %if.then29.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv44.2.i.i = trunc i32 %div.2.i.i to i8
  %185 = trunc i32 %indvars.iv.2.i40.i to i8
  br label %for.inc.2.i50.i

for.inc.2.i50.i:                                  ; preds = %if.then43.2.i.i, %if.then29.2.i.i.for.inc.2.i50.i_crit_edge, %if.end.2.i.i.for.inc.2.i50.i_crit_edge, %for.body9.2.i.i.for.inc.2.i50.i_crit_edge
  %best_diff.2.2.i44.i = phi i32 [ %best_diff.12.2.i.i, %for.body9.2.i.i.for.inc.2.i50.i_crit_edge ], [ %184, %if.then43.2.i.i ], [ %best_diff.12.2.i.i, %if.then29.2.i.i.for.inc.2.i50.i_crit_edge ], [ %best_diff.12.2.i.i, %if.end.2.i.i.for.inc.2.i50.i_crit_edge ]
  %best_n1.2.2.i45.i = phi i8 [ %best_n1.15.2.i.i, %for.body9.2.i.i.for.inc.2.i50.i_crit_edge ], [ %185, %if.then43.2.i.i ], [ %best_n1.15.2.i.i, %if.then29.2.i.i.for.inc.2.i50.i_crit_edge ], [ %best_n1.15.2.i.i, %if.end.2.i.i.for.inc.2.i50.i_crit_edge ]
  %best_n2.2.2.i46.i = phi i8 [ %best_n2.16.2.i.i, %for.body9.2.i.i.for.inc.2.i50.i_crit_edge ], [ 2, %if.then43.2.i.i ], [ %best_n2.16.2.i.i, %if.then29.2.i.i.for.inc.2.i50.i_crit_edge ], [ %best_n2.16.2.i.i, %if.end.2.i.i.for.inc.2.i50.i_crit_edge ]
  %best_m.2.2.i47.i = phi i8 [ %best_m.17.2.i.i, %for.body9.2.i.i.for.inc.2.i50.i_crit_edge ], [ %conv44.2.i.i, %if.then43.2.i.i ], [ %best_m.17.2.i.i, %if.then29.2.i.i.for.inc.2.i50.i_crit_edge ], [ %best_m.17.2.i.i, %if.end.2.i.i.for.inc.2.i50.i_crit_edge ]
  %indvars.iv.next.2.i48.i = add nuw nsw i32 %indvars.iv.2.i40.i, 1
  %exitcond.2.not.i49.i = icmp eq i32 %indvars.iv.next.2.i48.i, 34
  br i1 %exitcond.2.not.i49.i, label %for.inc47.2.i.i, label %for.inc.2.i50.i.for.body9.2.i.i_crit_edge

for.inc.2.i50.i.for.body9.2.i.i_crit_edge:        ; preds = %for.inc.2.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.2.i.i

for.inc47.2.i.i:                                  ; preds = %for.inc.2.i50.i
  %mul32.3.i.i = shl i32 %171, 3
  br label %for.body9.3.i.i

for.body9.3.i.i:                                  ; preds = %for.inc.3.i61.i.for.body9.3.i.i_crit_edge, %for.inc47.2.i.i
  %indvars.iv.3.i51.i = phi i32 [ 3, %for.inc47.2.i.i ], [ %indvars.iv.next.3.i59.i, %for.inc.3.i61.i.for.body9.3.i.i_crit_edge ]
  %best_m.17.3.i.i = phi i8 [ %best_m.2.2.i47.i, %for.inc47.2.i.i ], [ %best_m.2.3.i58.i, %for.inc.3.i61.i.for.body9.3.i.i_crit_edge ]
  %best_n2.16.3.i.i = phi i8 [ %best_n2.2.2.i46.i, %for.inc47.2.i.i ], [ %best_n2.2.3.i57.i, %for.inc.3.i61.i.for.body9.3.i.i_crit_edge ]
  %best_n1.15.3.i.i = phi i8 [ %best_n1.2.2.i45.i, %for.inc47.2.i.i ], [ %best_n1.2.3.i56.i, %for.inc.3.i61.i.for.body9.3.i.i_crit_edge ]
  %best_diff.12.3.i.i = phi i32 [ %best_diff.2.2.i44.i, %for.inc47.2.i.i ], [ %best_diff.2.3.i55.i, %for.inc.3.i61.i.for.body9.3.i.i_crit_edge ]
  %mul12.3.i.i = mul i32 %indvars.iv.3.i51.i, %mul32.3.i.i
  %add13.3.i.i = add i32 %mul12.3.i.i, 7159
  %div.3.i.i = sdiv i32 %add13.3.i.i, 14318
  %186 = add nsw i32 %div.3.i.i, -130
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %186)
  %187 = icmp ult i32 %186, -127
  br i1 %187, label %for.body9.3.i.i.for.inc.3.i61.i_crit_edge, label %if.end.3.i.i

for.body9.3.i.i.for.inc.3.i61.i_crit_edge:        ; preds = %for.body9.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i61.i

if.end.3.i.i:                                     ; preds = %for.body9.3.i.i
  %mul19.3.i.i = mul nuw nsw i32 %div.3.i.i, 14318
  %mul21.3.i.i = mul nuw nsw i32 %indvars.iv.3.i51.i, 135000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.3.i.i, i32 %mul21.3.i.i)
  %cmp22.not.3.i.i = icmp ult i32 %mul19.3.i.i, %mul21.3.i.i
  %mul26.3.i.i = mul nuw nsw i32 %indvars.iv.3.i51.i, 270000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.3.i.i, i32 %mul26.3.i.i)
  %cmp27.not.3.i.i = icmp ugt i32 %mul19.3.i.i, %mul26.3.i.i
  %or.cond1.3.i53.i = select i1 %cmp22.not.3.i.i, i1 true, i1 %cmp27.not.3.i.i
  br i1 %or.cond1.3.i53.i, label %if.end.3.i.i.for.inc.3.i61.i_crit_edge, label %if.then29.3.i.i

if.end.3.i.i.for.inc.3.i61.i_crit_edge:           ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i61.i

if.then29.3.i.i:                                  ; preds = %if.end.3.i.i
  %sub.3.i54.i = sub i32 %mul12.3.i.i, %mul19.3.i.i
  %188 = tail call i32 @llvm.abs.i32(i32 %sub.3.i54.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %best_diff.12.3.i.i)
  %cmp41.3.i.i = icmp slt i32 %188, %best_diff.12.3.i.i
  br i1 %cmp41.3.i.i, label %if.then43.3.i.i, label %if.then29.3.i.i.for.inc.3.i61.i_crit_edge

if.then29.3.i.i.for.inc.3.i61.i_crit_edge:        ; preds = %if.then29.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i61.i

if.then43.3.i.i:                                  ; preds = %if.then29.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv44.3.i.i = trunc i32 %div.3.i.i to i8
  %189 = trunc i32 %indvars.iv.3.i51.i to i8
  br label %for.inc.3.i61.i

for.inc.3.i61.i:                                  ; preds = %if.then43.3.i.i, %if.then29.3.i.i.for.inc.3.i61.i_crit_edge, %if.end.3.i.i.for.inc.3.i61.i_crit_edge, %for.body9.3.i.i.for.inc.3.i61.i_crit_edge
  %best_diff.2.3.i55.i = phi i32 [ %best_diff.12.3.i.i, %for.body9.3.i.i.for.inc.3.i61.i_crit_edge ], [ %188, %if.then43.3.i.i ], [ %best_diff.12.3.i.i, %if.then29.3.i.i.for.inc.3.i61.i_crit_edge ], [ %best_diff.12.3.i.i, %if.end.3.i.i.for.inc.3.i61.i_crit_edge ]
  %best_n1.2.3.i56.i = phi i8 [ %best_n1.15.3.i.i, %for.body9.3.i.i.for.inc.3.i61.i_crit_edge ], [ %189, %if.then43.3.i.i ], [ %best_n1.15.3.i.i, %if.then29.3.i.i.for.inc.3.i61.i_crit_edge ], [ %best_n1.15.3.i.i, %if.end.3.i.i.for.inc.3.i61.i_crit_edge ]
  %best_n2.2.3.i57.i = phi i8 [ %best_n2.16.3.i.i, %for.body9.3.i.i.for.inc.3.i61.i_crit_edge ], [ 3, %if.then43.3.i.i ], [ %best_n2.16.3.i.i, %if.then29.3.i.i.for.inc.3.i61.i_crit_edge ], [ %best_n2.16.3.i.i, %if.end.3.i.i.for.inc.3.i61.i_crit_edge ]
  %best_m.2.3.i58.i = phi i8 [ %best_m.17.3.i.i, %for.body9.3.i.i.for.inc.3.i61.i_crit_edge ], [ %conv44.3.i.i, %if.then43.3.i.i ], [ %best_m.17.3.i.i, %if.then29.3.i.i.for.inc.3.i61.i_crit_edge ], [ %best_m.17.3.i.i, %if.end.3.i.i.for.inc.3.i61.i_crit_edge ]
  %indvars.iv.next.3.i59.i = add nuw nsw i32 %indvars.iv.3.i51.i, 1
  %exitcond.3.not.i60.i = icmp eq i32 %indvars.iv.next.3.i59.i, 34
  br i1 %exitcond.3.not.i60.i, label %common_calc_clock.exit.i, label %for.inc.3.i61.i.for.body9.3.i.i_crit_edge

for.inc.3.i61.i.for.body9.3.i.i_crit_edge:        ; preds = %for.inc.3.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9.3.i.i

common_calc_clock.exit.i:                         ; preds = %for.inc.3.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  %SR1197.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 11
  %SR1098.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 10
  %sub59.i.i = add i8 %best_n1.2.3.i56.i, -2
  %shl61.i.i = shl i8 %best_n2.2.3.i57.i, 5
  %or62.i.i = or i8 %shl61.i.i, %sub59.i.i
  %190 = ptrtoint ptr %SR1098.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %or62.i.i, ptr %SR1098.i, align 1
  %sub66.i.i = add i8 %best_m.2.3.i58.i, -2
  %191 = ptrtoint ptr %SR1197.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %sub66.i.i, ptr %SR1197.i, align 1
  br label %if.end100.i

if.end100.i:                                      ; preds = %common_calc_clock.exit.i, %if.then94.i
  %shl.i = shl nuw nsw i32 %conv71.i.i, 6
  %and101.i = and i32 %sub70.i.i, 63
  %or102.i = or i32 %shl.i, %and101.i
  %conv103.i = trunc i32 %or102.i to i8
  %SR12.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 12
  %192 = ptrtoint ptr %SR12.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv103.i, ptr %SR12.i, align 1
  %conv105.i = trunc i32 %sub73.i.i to i8
  %SR13.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 13
  %193 = ptrtoint ptr %SR13.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv105.i, ptr %SR13.i, align 2
  %and106.i = and i32 %conv71.i.i, 4
  %and107.i = lshr i32 %sub73.i.i, 5
  %shr.i = and i32 %and107.i, 8
  %and109.i = lshr i32 %sub70.i.i, 2
  %shr110.i = and i32 %and109.i, 16
  %or108.i = or i32 %shr110.i, %and106.i
  %or111.i = or i32 %or108.i, %shr.i
  %conv112.i = trunc i32 %or111.i to i8
  %SR29.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 16
  %194 = ptrtoint ptr %SR29.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %conv112.i, ptr %SR29.i, align 1
  %195 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %196)
  %cmp114.i = icmp ult i32 %196, 24
  %197 = ptrtoint ptr %MMPR0.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %MMPR0.i, align 4
  %..i = select i1 %cmp114.i, i32 -32768, i32 -16384
  %sub120.i = add i32 %..i, %198
  store i32 %sub120.i, ptr %MMPR0.i, align 4
  %199 = trunc i32 %5 to i8
  %200 = shl i8 %199, 5
  %201 = and i8 %200, 32
  %202 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 30
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %201, ptr %202, align 2
  %CR34.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 23
  %204 = ptrtoint ptr %CR34.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 16, ptr %CR34.i, align 1
  %sub130.i = add nuw nsw i32 %shr.i.i, 507
  %and131.i = lshr i32 %sub130.i, 8
  %shr132.i = and i32 %and131.i, 1
  %sub135.i = add nuw nsw i32 %shr22.i.i, 511
  %and136.i = lshr i32 %sub135.i, 7
  %shr137.i = and i32 %and136.i, 2
  %sub141.i = add nuw nsw i32 %shr27.i.i, 511
  %and142.i = lshr i32 %sub141.i, 6
  %shr143.i = and i32 %and142.i, 4
  %and146.i = lshr i32 %timings.sroa.11.0.i, 7
  %shr147.i = and i32 %and146.i, 16
  %or138.i = or i32 %shr137.i, %shr147.i
  %or144.i = or i32 %or138.i, %shr143.i
  %or148.i = or i32 %or144.i, %shr132.i
  %sub153.i = sub nsw i32 %shr45.i.i, %shr27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub153.i)
  %cmp154.i = icmp ugt i32 %sub153.i, 64
  %or157.i = or i32 %or148.i, 8
  %spec.select5.i = select i1 %cmp154.i, i32 %or157.i, i32 %or148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub153.i)
  %cmp164.i = icmp ugt i32 %sub153.i, 32
  %or167.i = or i32 %spec.select5.i, 32
  %i.1.i = select i1 %cmp164.i, i32 %or167.i, i32 %spec.select5.i
  %205 = ptrtoint ptr %CRTC.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %CRTC.i.i, align 1
  %conv169.i = zext i8 %206 to i32
  %and170.i = shl i32 %i.1.i, 8
  %shl171.i = and i32 %and170.i, 256
  %add172.i = or i32 %shl171.i, %conv169.i
  %207 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx43.i.i, align 1
  %conv175.i = zext i8 %208 to i32
  %and177.i = shl i32 %i.1.i, 4
  %shl178.i = and i32 %and177.i, 256
  %add176.i = add nuw nsw i32 %add172.i, 1
  %add179.i = or i32 %shl178.i, %conv175.i
  %add180.i = add nuw nsw i32 %add179.i, %add176.i
  %div1811.i = lshr i32 %add180.i, 1
  %sub188.i = sub nsw i32 %div1811.i, %add179.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub188.i)
  %cmp189.i = icmp slt i32 %sub188.i, 4
  %add198.i = add nuw nsw i32 %add179.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add198.i, i32 %add172.i)
  %cmp205.not.i = icmp ugt i32 %add198.i, %add172.i
  %spec.select6.i = select i1 %cmp205.not.i, i32 %add176.i, i32 %add198.i
  %j.0.i = select i1 %cmp189.i, i32 %spec.select6.i, i32 %div1811.i
  %conv226.i = trunc i32 %j.0.i to i8
  %CR3B.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 26
  %209 = ptrtoint ptr %CR3B.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv226.i, ptr %CR3B.i, align 2
  %and227.i = lshr i32 %j.0.i, 2
  %210 = and i32 %and227.i, 64
  %or229.i = or i32 %210, %i.1.i
  %add235.i = or i32 %and170.i, %conv169.i
  %div2362.i = lshr i32 %add235.i, 1
  %conv237.i = trunc i32 %div2362.i to i8
  %CR3C.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 27
  %211 = ptrtoint ptr %CR3C.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv237.i, ptr %CR3C.i, align 1
  %conv238.i = trunc i32 %or229.i to i8
  %CR5D.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 39
  %212 = ptrtoint ptr %CR5D.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv238.i, ptr %CR5D.i, align 1
  %sub240.i = add i32 %add19.i, 2046
  %and241.i = lshr i32 %sub240.i, 10
  %shr242.i = and i32 %and241.i, 1
  %sub244.i = add i32 %15, 2047
  %and245.i = lshr i32 %sub244.i, 9
  %shr246.i = and i32 %and245.i, 2
  %and249.i = and i32 %add15.i, 1024
  %shr250.i = lshr exact i32 %and249.i, 8
  %shr254.i = lshr exact i32 %and249.i, 6
  %or247.i = or i32 %shr250.i, %shr246.i
  %or251.i = or i32 %or247.i, %shr254.i
  %or255.i = or i32 %or251.i, %shr242.i
  %213 = trunc i32 %or255.i to i8
  %conv257.i = or i8 %213, 64
  %CR5E.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 40
  %214 = ptrtoint ptr %CR5E.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv257.i, ptr %CR5E.i, align 4
  %215 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %xres_virtual.i, align 4
  %217 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %bits_per_pixel.i, align 4
  %add260.i = add i32 %218, 7
  %div2613.i = lshr i32 %add260.i, 3
  %mul262.i = mul i32 %div2613.i, %216
  %shr263.i = lshr i32 %mul262.i, 3
  %conv265.i = trunc i32 %shr263.i to i8
  %219 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv265.i, ptr %arrayidx143.i.i, align 1
  %CR91.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 53
  %220 = ptrtoint ptr %CR91.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv265.i, ptr %CR91.i, align 1
  %and268.i = lshr i32 %mul262.i, 7
  %221 = trunc i32 %and268.i to i8
  %conv270.i = and i8 %221, 48
  %CR51.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 34
  %222 = ptrtoint ptr %CR51.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv270.i, ptr %CR51.i, align 2
  %223 = lshr i32 %mul262.i, 11
  %224 = trunc i32 %223 to i8
  %conv273.i = or i8 %224, -128
  %CR90.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 52
  %225 = ptrtoint ptr %CR90.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv273.i, ptr %CR90.i, align 4
  %226 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %state, align 4
  %228 = or i8 %227, 12
  store i8 %228, ptr %state, align 4
  %229 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %229)
  %cmp278.i = icmp ult i32 %229, 9
  br i1 %cmp278.i, label %if.then280.i, label %if.else281.i

if.then280.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  %CR50.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 33
  %230 = ptrtoint ptr %CR50.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %CR50.i, align 1
  br label %if.end290.i

if.else281.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %229)
  %cmp283.i = icmp ult i32 %229, 17
  %CR50286.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 33
  br i1 %cmp283.i, label %if.then285.i, label %if.else287.i

if.then285.i:                                     ; preds = %if.else281.i
  call void @__sanitizer_cov_trace_pc() #10
  %231 = ptrtoint ptr %CR50286.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 16, ptr %CR50286.i, align 1
  br label %if.end290.i

if.else287.i:                                     ; preds = %if.else281.i
  call void @__sanitizer_cov_trace_pc() #10
  %232 = ptrtoint ptr %CR50286.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 48, ptr %CR50286.i, align 1
  br label %if.end290.i

if.end290.i:                                      ; preds = %if.else287.i, %if.then285.i, %if.then280.i
  %233 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %xres_virtual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 641, i32 %234)
  %cmp292.i = icmp ult i32 %234, 641
  br i1 %cmp292.i, label %if.end290.i.if.end354.sink.split.i_crit_edge, label %if.else299.i

if.end290.i.if.end354.sink.split.i_crit_edge:     ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354.sink.split.i

if.else299.i:                                     ; preds = %if.end290.i
  %235 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %234, label %if.else344.i [
    i32 800, label %if.else299.i.if.end354.sink.split.i_crit_edge
    i32 1024, label %if.else299.i.savagefb_decode_var.exit_crit_edge
    i32 1152, label %if.then321.i
    i32 1280, label %if.then330.i
    i32 1600, label %if.then339.i
  ]

if.else299.i.savagefb_decode_var.exit_crit_edge:  ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savagefb_decode_var.exit

if.else299.i.if.end354.sink.split.i_crit_edge:    ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354.sink.split.i

if.then321.i:                                     ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354.sink.split.i

if.then330.i:                                     ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354.sink.split.i

if.then339.i:                                     ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354.sink.split.i

if.else344.i:                                     ; preds = %if.else299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354.sink.split.i

if.end354.sink.split.i:                           ; preds = %if.else344.i, %if.then339.i, %if.then330.i, %if.then321.i, %if.else299.i.if.end354.sink.split.i_crit_edge, %if.end290.i.if.end354.sink.split.i_crit_edge
  %.sink153.i = phi i8 [ 1, %if.then321.i ], [ -127, %if.then339.i ], [ -63, %if.else344.i ], [ -64, %if.then330.i ], [ 64, %if.end290.i.if.end354.sink.split.i_crit_edge ], [ -128, %if.else299.i.if.end354.sink.split.i_crit_edge ]
  %CR50295.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 33
  %236 = ptrtoint ptr %CR50295.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %CR50295.i, align 1
  %238 = or i8 %237, %.sink153.i
  store i8 %238, ptr %CR50295.i, align 1
  br label %savagefb_decode_var.exit

savagefb_decode_var.exit:                         ; preds = %if.end354.sink.split.i, %if.else299.i.savagefb_decode_var.exit_crit_edge
  %chip355.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 1
  %239 = ptrtoint ptr %chip355.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %chip355.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %240)
  %cmp356.i = icmp eq i32 %240, 8
  %.sink148.i = select i1 %cmp356.i, i8 8, i8 32
  %241 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 22
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %.sink148.i, ptr %241, align 2
  %243 = ptrtoint ptr %arrayidx159.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 -21, ptr %arrayidx159.i.i, align 1
  %244 = ptrtoint ptr %CR67.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %CR67.i, align 1
  %246 = or i8 %245, 1
  store i8 %246, ptr %CR67.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %247 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i63.i = getelementptr i8, ptr %248, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i63.i, i8 54) #8, !srcloc !158
  %249 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i65.i = getelementptr i8, ptr %250, i32 33749
  %251 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i65.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR36.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 24
  %252 = ptrtoint ptr %CR36.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %CR36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %253 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i67.i = getelementptr i8, ptr %254, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i67.i, i8 104) #8, !srcloc !158
  %255 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %256, i32 33749
  %257 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i69.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR68.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 46
  %258 = ptrtoint ptr %CR68.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %CR68.i, align 2
  %CR69.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 47
  %259 = ptrtoint ptr %CR69.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %CR69.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %260 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i71.i = getelementptr i8, ptr %261, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i71.i, i8 111) #8, !srcloc !158
  %262 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i73.i = getelementptr i8, ptr %263, i32 33749
  %264 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i73.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR6F.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 49
  %265 = ptrtoint ptr %CR6F.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %CR6F.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %266 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i75.i = getelementptr i8, ptr %267, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i75.i, i8 -122) #8, !srcloc !158
  %268 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i77.i = getelementptr i8, ptr %269, i32 33749
  %270 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i77.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR86.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 50
  %271 = ptrtoint ptr %CR86.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %CR86.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %272 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i79.i = getelementptr i8, ptr %273, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i79.i, i8 -120) #8, !srcloc !158
  %274 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %275, i32 33749
  %276 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i81.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %277 = or i8 %276, 8
  %CR88.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 51
  %278 = ptrtoint ptr %CR88.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %CR88.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %279 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i83.i = getelementptr i8, ptr %280, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i83.i, i8 -80) #8, !srcloc !158
  %281 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i85.i = getelementptr i8, ptr %282, i32 33749
  %283 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i85.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %284 = or i8 %283, -128
  %CRB0.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 54
  %285 = ptrtoint ptr %CRB0.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %CRB0.i, align 2
  %dacSpeedBpp = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 16
  %286 = ptrtoint ptr %dacSpeedBpp to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %dacSpeedBpp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %287)
  %cmp = icmp slt i32 %287, 1
  br i1 %cmp, label %if.then3, label %savagefb_decode_var.exit.if.end33_crit_edge

savagefb_decode_var.exit.if.end33_crit_edge:      ; preds = %savagefb_decode_var.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then3:                                         ; preds = %savagefb_decode_var.exit
  %288 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %289)
  %cmp4 = icmp ugt i32 %289, 24
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 20, i32 3
  br label %if.end33.sink.split

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %289)
  %cmp8 = icmp eq i32 %289, 24
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 20, i32 2
  br label %if.end33.sink.split

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %289)
  %cmp15 = icmp ugt i32 %289, 8
  br i1 %cmp15, label %if.then18, label %if.then25

if.then18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx20 = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 20, i32 1
  br label %if.end33.sink.split

if.then25:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %clock26 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 20
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.then25, %if.then18, %if.then9, %if.then5
  %.sink.in = phi ptr [ %arrayidx, %if.then5 ], [ %arrayidx20, %if.then18 ], [ %clock26, %if.then25 ], [ %arrayidx11, %if.then9 ]
  %290 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %290)
  %.sink = load i32, ptr %.sink.in, align 4
  %291 = ptrtoint ptr %dacSpeedBpp to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %.sink, ptr %dacSpeedBpp, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %savagefb_decode_var.exit.if.end33_crit_edge
  %292 = ptrtoint ptr %dacSpeedBpp to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %dacSpeedBpp, align 8
  %maxClock = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 17
  %294 = ptrtoint ptr %maxClock to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 %293, ptr %maxClock, align 4
  %minClock = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 18
  %295 = ptrtoint ptr %minClock to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 10000, ptr %minClock, align 8
  %SavageWaitIdle.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 31
  %296 = ptrtoint ptr %SavageWaitIdle.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %SavageWaitIdle.i, align 4
  tail call void %297(ptr noundef %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %298 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i66 = getelementptr i8, ptr %299, i32 33730
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i66, i8 35) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %300 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i279.i = getelementptr i8, ptr %301, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i279.i, i16 14408) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %302 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i281.i = getelementptr i8, ptr %303, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i281.i, i16 14757) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %304 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i283.i = getelementptr i8, ptr %305, i32 33732
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i283.i, i16 2054) #8, !srcloc !162
  tail call fastcc void @vgaHWProtect(ptr noundef %1, i32 noundef 1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %306 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %307, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 23) #8, !srcloc !158
  %308 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %309, i32 33749
  %310 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %310)
  %tobool.not.i.i67 = icmp sgt i8 %310, -1
  br i1 %tobool.not.i.i67, label %if.end33.VerticalRetraceWait.exit.i_crit_edge, label %if.end33.while.cond.i.i_crit_edge

if.end33.while.cond.i.i_crit_edge:                ; preds = %if.end33
  br label %while.cond.i.i

if.end33.VerticalRetraceWait.exit.i_crit_edge:    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %VerticalRetraceWait.exit.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end33.while.cond.i.i_crit_edge
  %311 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i19.i.i = getelementptr i8, ptr %312, i32 33754
  %313 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i19.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %314 = and i8 %313, 8
  %cmp.not.i.i = icmp eq i8 %314, 0
  br i1 %cmp.not.i.i, label %while.cond.i.i.while.cond5.i.i_crit_edge, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.cond.i.i.while.cond5.i.i_crit_edge:         ; preds = %while.cond.i.i
  br label %while.cond5.i.i

while.cond5.i.i:                                  ; preds = %while.cond5.i.i.while.cond5.i.i_crit_edge, %while.cond.i.i.while.cond5.i.i_crit_edge
  %315 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i21.i.i = getelementptr i8, ptr %316, i32 33754
  %317 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i21.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %318 = and i8 %317, 8
  %cmp9.i.i = icmp eq i8 %318, 0
  br i1 %cmp9.i.i, label %while.cond5.i.i.while.cond5.i.i_crit_edge, label %while.cond5.i.i.VerticalRetraceWait.exit.i_crit_edge

while.cond5.i.i.VerticalRetraceWait.exit.i_crit_edge: ; preds = %while.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %VerticalRetraceWait.exit.i

while.cond5.i.i.while.cond5.i.i_crit_edge:        ; preds = %while.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond5.i.i

VerticalRetraceWait.exit.i:                       ; preds = %while.cond5.i.i.VerticalRetraceWait.exit.i_crit_edge, %if.end33.VerticalRetraceWait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %319 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i285.i = getelementptr i8, ptr %320, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i285.i, i8 103) #8, !srcloc !158
  %321 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i287.i = getelementptr i8, ptr %322, i32 33749
  %323 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i287.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %324 = and i8 %323, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %325 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i289.i = getelementptr i8, ptr %326, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i289.i, i8 %324) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %327 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i291.i = getelementptr i8, ptr %328, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i291.i, i8 35) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %329 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i293.i = getelementptr i8, ptr %330, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i293.i, i8 0) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %331 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i295.i = getelementptr i8, ptr %332, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i295.i, i8 38) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %333 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i297.i = getelementptr i8, ptr %334, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i297.i, i8 0) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %335 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i299.i = getelementptr i8, ptr %336, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i299.i, i8 102) #8, !srcloc !158
  %337 = ptrtoint ptr %CR66.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %CR66.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %339 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i301.i = getelementptr i8, ptr %340, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i301.i, i8 %338) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %341 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i303.i = getelementptr i8, ptr %342, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i303.i, i8 58) #8, !srcloc !158
  %343 = ptrtoint ptr %CR3A.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %CR3A.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %345 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i305.i = getelementptr i8, ptr %346, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i305.i, i8 %344) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %347 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i307.i = getelementptr i8, ptr %348, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i307.i, i8 49) #8, !srcloc !158
  %349 = ptrtoint ptr %CR31.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %CR31.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %351 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i309.i = getelementptr i8, ptr %352, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i309.i, i8 %350) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %353 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i311.i = getelementptr i8, ptr %354, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i311.i, i8 50) #8, !srcloc !158
  %CR32.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 21
  %355 = ptrtoint ptr %CR32.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %CR32.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %357 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i313.i = getelementptr i8, ptr %358, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i313.i, i8 %356) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %359 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i315.i = getelementptr i8, ptr %360, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i315.i, i8 88) #8, !srcloc !158
  %361 = ptrtoint ptr %CR58.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %CR58.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %363 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i317.i = getelementptr i8, ptr %364, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i317.i, i8 %362) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %365 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i319.i = getelementptr i8, ptr %366, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i319.i, i8 83) #8, !srcloc !158
  %367 = ptrtoint ptr %CR53.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %CR53.i, align 1
  %369 = and i8 %368, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %370 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i321.i = getelementptr i8, ptr %371, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i321.i, i8 %369) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %372 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i323.i = getelementptr i8, ptr %373, i32 33732
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i323.i, i16 2054) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %374 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i325.i = getelementptr i8, ptr %375, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i325.i, i8 14) #8, !srcloc !158
  %SR0E.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 8
  %376 = ptrtoint ptr %SR0E.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %SR0E.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %378 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i327.i = getelementptr i8, ptr %379, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i327.i, i8 %377) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %380 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i329.i = getelementptr i8, ptr %381, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i329.i, i8 15) #8, !srcloc !158
  %SR0F.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 9
  %382 = ptrtoint ptr %SR0F.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %SR0F.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %384 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i331.i = getelementptr i8, ptr %385, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i331.i, i8 %383) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %386 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i333.i = getelementptr i8, ptr %387, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i333.i, i8 41) #8, !srcloc !158
  %388 = ptrtoint ptr %SR29.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %SR29.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %390 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i335.i = getelementptr i8, ptr %391, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i335.i, i8 %389) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %392 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i337.i = getelementptr i8, ptr %393, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i337.i, i8 21) #8, !srcloc !158
  %394 = ptrtoint ptr %SR15.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %SR15.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %396 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i339.i = getelementptr i8, ptr %397, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i339.i, i8 %395) #8, !srcloc !158
  %398 = ptrtoint ptr %chip355.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %chip355.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %399)
  %cmp.i76 = icmp eq i32 %399, 2
  br i1 %cmp.i76, label %VerticalRetraceWait.exit.i.for.body.i_crit_edge, label %VerticalRetraceWait.exit.i.if.end.i_crit_edge

VerticalRetraceWait.exit.i.if.end.i_crit_edge:    ; preds = %VerticalRetraceWait.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

VerticalRetraceWait.exit.i.for.body.i_crit_edge:  ; preds = %VerticalRetraceWait.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %VerticalRetraceWait.exit.i.for.body.i_crit_edge
  %i.0567.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %VerticalRetraceWait.exit.i.for.body.i_crit_edge ]
  %400 = trunc i32 %i.0567.i to i8
  %conv9.i = add i8 %400, 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %401 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i341.i = getelementptr i8, ptr %402, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i341.i, i8 %conv9.i) #8, !srcloc !158
  %arrayidx.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 18, i32 %i.0567.i
  %403 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %405 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i343.i = getelementptr i8, ptr %406, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i343.i, i8 %404) #8, !srcloc !158
  %inc.i = add nuw nsw i32 %i.0567.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %VerticalRetraceWait.exit.i.if.end.i_crit_edge
  %407 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %409 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %410, i32 33730
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i, i8 %408) #8, !srcloc !158
  %411 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx13.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %413 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i60.i.i = getelementptr i8, ptr %414, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i60.i.i, i8 1) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %415 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i.i.i = getelementptr i8, ptr %416, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.i.i, i8 %412) #8, !srcloc !158
  %417 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx15.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %419 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i60.1.i.i = getelementptr i8, ptr %420, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i60.1.i.i, i8 2) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %421 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i.1.i.i = getelementptr i8, ptr %422, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.1.i.i, i8 %418) #8, !srcloc !158
  %423 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx17.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %425 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i60.2.i.i = getelementptr i8, ptr %426, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i60.2.i.i, i8 3) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %427 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i.2.i.i = getelementptr i8, ptr %428, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.2.i.i, i8 %424) #8, !srcloc !158
  %429 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx19.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %431 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i60.3.i.i = getelementptr i8, ptr %432, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i60.3.i.i, i8 4) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %433 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i.3.i.i = getelementptr i8, ptr %434, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i.3.i.i, i8 %430) #8, !srcloc !158
  %435 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %arrayidx133.i.i, align 1
  %437 = and i8 %436, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %438 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i62.i.i = getelementptr i8, ptr %439, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i62.i.i, i8 17) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %440 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i63.i.i = getelementptr i8, ptr %441, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i63.i.i, i8 %437) #8, !srcloc !158
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %if.end.i
  %i.180.i.i = phi i32 [ 0, %if.end.i ], [ %inc12.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ]
  %conv8.i.i = trunc i32 %i.180.i.i to i8
  %arrayidx10.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 1, i32 %i.180.i.i
  %442 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %arrayidx10.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %444 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i65.i.i = getelementptr i8, ptr %445, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i65.i.i, i8 %conv8.i.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %446 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i66.i.i = getelementptr i8, ptr %447, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i66.i.i, i8 %443) #8, !srcloc !158
  %inc12.i.i = add nuw nsw i32 %i.180.i.i, 1
  %exitcond.not.i.i77 = icmp eq i32 %inc12.i.i, 25
  br i1 %exitcond.not.i.i77, label %for.body7.i.i.for.body17.i.i_crit_edge, label %for.body7.i.i.for.body7.i.i_crit_edge

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i.i

for.body7.i.i.for.body17.i.i_crit_edge:           ; preds = %for.body7.i.i
  br label %for.body17.i.i

for.body17.i.i:                                   ; preds = %for.body17.i.i.for.body17.i.i_crit_edge, %for.body7.i.i.for.body17.i.i_crit_edge
  %i.281.i.i = phi i32 [ %inc21.i.i, %for.body17.i.i.for.body17.i.i_crit_edge ], [ 0, %for.body7.i.i.for.body17.i.i_crit_edge ]
  %conv18.i.i = trunc i32 %i.281.i.i to i8
  %arrayidx19.i.i78 = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 3, i32 %i.281.i.i
  %448 = ptrtoint ptr %arrayidx19.i.i78 to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx19.i.i78, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %450 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i68.i.i = getelementptr i8, ptr %451, i32 33742
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i68.i.i, i8 %conv18.i.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %452 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i3.i69.i.i = getelementptr i8, ptr %453, i32 33743
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i69.i.i, i8 %449) #8, !srcloc !158
  %inc21.i.i = add nuw nsw i32 %i.281.i.i, 1
  %exitcond83.not.i.i = icmp eq i32 %inc21.i.i, 9
  br i1 %exitcond83.not.i.i, label %for.end22.i.i, label %for.body17.i.i.for.body17.i.i_crit_edge

for.body17.i.i.for.body17.i.i_crit_edge:          ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i.i

for.end22.i.i:                                    ; preds = %for.body17.i.i
  %454 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i71.i.i = getelementptr i8, ptr %455, i32 33754
  %456 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i71.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %457 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i4.i.i.i = getelementptr i8, ptr %458, i32 33728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i4.i.i.i, i8 0) #8, !srcloc !158
  %paletteEnabled.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 11
  %459 = ptrtoint ptr %paletteEnabled.i.i.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 1, ptr %paletteEnabled.i.i.i, align 4
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.body26.i.i.for.body26.i.i_crit_edge, %for.end22.i.i
  %i.382.i.i = phi i32 [ 0, %for.end22.i.i ], [ %inc30.i.i, %for.body26.i.i.for.body26.i.i_crit_edge ]
  %conv27.i.i = trunc i32 %i.382.i.i to i8
  %arrayidx28.i.i = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 4, i32 %i.382.i.i
  %460 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %arrayidx28.i.i, align 1
  %462 = ptrtoint ptr %paletteEnabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %paletteEnabled.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %tobool.not.i.i.i = icmp eq i32 %463, 0
  %464 = and i8 %conv27.i.i, -33
  %masksel.i.i.i = select i1 %tobool.not.i.i.i, i8 32, i8 0
  %index.addr.0.i.i.i = or i8 %masksel.i.i.i, %464
  %465 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i74.i.i = getelementptr i8, ptr %466, i32 33754
  %467 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i74.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %468 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i10.i.i.i = getelementptr i8, ptr %469, i32 33728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i10.i.i.i, i8 %index.addr.0.i.i.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %470 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i12.i.i.i = getelementptr i8, ptr %471, i32 33728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i12.i.i.i, i8 %461) #8, !srcloc !158
  %inc30.i.i = add nuw nsw i32 %i.382.i.i, 1
  %exitcond84.not.i.i = icmp eq i32 %inc30.i.i, 21
  br i1 %exitcond84.not.i.i, label %vgaHWRestore.exit.i, label %for.body26.i.i.for.body26.i.i_crit_edge

for.body26.i.i.for.body26.i.i_crit_edge:          ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i.i

vgaHWRestore.exit.i:                              ; preds = %for.body26.i.i
  %472 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i76.i.i = getelementptr i8, ptr %473, i32 33754
  %474 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i76.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %475 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i4.i77.i.i = getelementptr i8, ptr %476, i32 33728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i4.i77.i.i, i8 32) #8, !srcloc !158
  %477 = ptrtoint ptr %paletteEnabled.i.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 0, ptr %paletteEnabled.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %478 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i345.i = getelementptr i8, ptr %479, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i345.i, i8 83) #8, !srcloc !158
  %480 = ptrtoint ptr %CR53.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %CR53.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %482 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i347.i = getelementptr i8, ptr %483, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i347.i, i8 %481) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %484 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i349.i = getelementptr i8, ptr %485, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i349.i, i8 93) #8, !srcloc !158
  %486 = ptrtoint ptr %CR5D.i to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %CR5D.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %488 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i351.i = getelementptr i8, ptr %489, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i351.i, i8 %487) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %490 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i353.i = getelementptr i8, ptr %491, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i353.i, i8 94) #8, !srcloc !158
  %492 = ptrtoint ptr %CR5E.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %CR5E.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %494 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i355.i = getelementptr i8, ptr %495, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i355.i, i8 %493) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %496 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i357.i = getelementptr i8, ptr %497, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i357.i, i8 59) #8, !srcloc !158
  %498 = ptrtoint ptr %CR3B.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %CR3B.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %500 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i359.i = getelementptr i8, ptr %501, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i359.i, i8 %499) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %502 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i361.i = getelementptr i8, ptr %503, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i361.i, i8 60) #8, !srcloc !158
  %504 = ptrtoint ptr %CR3C.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %CR3C.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %506 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i363.i = getelementptr i8, ptr %507, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i363.i, i8 %505) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %508 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i365.i = getelementptr i8, ptr %509, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i365.i, i8 67) #8, !srcloc !158
  %510 = ptrtoint ptr %CR43.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %CR43.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %512 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i367.i = getelementptr i8, ptr %513, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i367.i, i8 %511) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %514 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i369.i = getelementptr i8, ptr %515, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i369.i, i8 101) #8, !srcloc !158
  %516 = ptrtoint ptr %CR65.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %CR65.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %518 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i371.i = getelementptr i8, ptr %519, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i371.i, i8 %517) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %520 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i373.i = getelementptr i8, ptr %521, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i373.i, i8 103) #8, !srcloc !158
  %522 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i375.i = getelementptr i8, ptr %523, i32 33749
  %524 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i375.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %525 = and i8 %524, 15
  %526 = or i8 %525, 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %527 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i377.i = getelementptr i8, ptr %528, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i377.i, i8 %526) #8, !srcloc !158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %529 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %529(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %530 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %530(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %531 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %531(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %532 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %532(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %533 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %533(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %534 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %534(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %535 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %535(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %536 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %536(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %537 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %537(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %538 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %538(i32 noundef 214748000) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %539 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i379.i = getelementptr i8, ptr %540, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i379.i, i8 103) #8, !srcloc !158
  %541 = ptrtoint ptr %CR67.i to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %CR67.i, align 1
  %543 = and i8 %542, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %544 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i381.i = getelementptr i8, ptr %545, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i381.i, i8 %543) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %546 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i383.i = getelementptr i8, ptr %547, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i383.i, i8 52) #8, !srcloc !158
  %548 = ptrtoint ptr %CR34.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %CR34.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %550 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i385.i = getelementptr i8, ptr %551, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i385.i, i8 %549) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %552 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i387.i = getelementptr i8, ptr %553, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i387.i, i8 64) #8, !srcloc !158
  %554 = ptrtoint ptr %CR40.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %CR40.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %556 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i389.i = getelementptr i8, ptr %557, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i389.i, i8 %555) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %558 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i391.i = getelementptr i8, ptr %559, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i391.i, i8 66) #8, !srcloc !158
  %560 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %202, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %562 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i393.i = getelementptr i8, ptr %563, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i393.i, i8 %561) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %564 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i395.i = getelementptr i8, ptr %565, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i395.i, i8 69) #8, !srcloc !158
  %566 = ptrtoint ptr %CR45.i to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %CR45.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %568 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i397.i = getelementptr i8, ptr %569, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i397.i, i8 %567) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %570 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i399.i = getelementptr i8, ptr %571, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i399.i, i8 80) #8, !srcloc !158
  %CR50.i89 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 33
  %572 = ptrtoint ptr %CR50.i89 to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %CR50.i89, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %574 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i401.i = getelementptr i8, ptr %575, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i401.i, i8 %573) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %576 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i403.i = getelementptr i8, ptr %577, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i403.i, i8 81) #8, !srcloc !158
  %578 = ptrtoint ptr %CR51.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %CR51.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %580 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i405.i = getelementptr i8, ptr %581, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i405.i, i8 %579) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %582 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i407.i = getelementptr i8, ptr %583, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i407.i, i8 54) #8, !srcloc !158
  %584 = ptrtoint ptr %CR36.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %CR36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %586 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i409.i = getelementptr i8, ptr %587, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i409.i, i8 %585) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %588 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i411.i = getelementptr i8, ptr %589, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i411.i, i8 96) #8, !srcloc !158
  %CR60.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 41
  %590 = ptrtoint ptr %CR60.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %CR60.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %592 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i413.i = getelementptr i8, ptr %593, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i413.i, i8 %591) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %594 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i415.i = getelementptr i8, ptr %595, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i415.i, i8 104) #8, !srcloc !158
  %596 = ptrtoint ptr %CR68.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %CR68.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %598 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i417.i = getelementptr i8, ptr %599, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i417.i, i8 %597) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %600 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i419.i = getelementptr i8, ptr %601, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i419.i, i8 105) #8, !srcloc !158
  %602 = ptrtoint ptr %CR69.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %CR69.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %604 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i421.i = getelementptr i8, ptr %605, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i421.i, i8 %603) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %606 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i423.i = getelementptr i8, ptr %607, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i423.i, i8 111) #8, !srcloc !158
  %608 = ptrtoint ptr %CR6F.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %CR6F.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %610 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i425.i = getelementptr i8, ptr %611, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i425.i, i8 %609) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %612 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i427.i = getelementptr i8, ptr %613, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i427.i, i8 51) #8, !srcloc !158
  %614 = ptrtoint ptr %241 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %241, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %616 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i429.i = getelementptr i8, ptr %617, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i429.i, i8 %615) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %618 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i431.i = getelementptr i8, ptr %619, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i431.i, i8 -122) #8, !srcloc !158
  %620 = ptrtoint ptr %CR86.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %CR86.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %622 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i433.i = getelementptr i8, ptr %623, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i433.i, i8 %621) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %624 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i435.i = getelementptr i8, ptr %625, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i435.i, i8 -120) #8, !srcloc !158
  %626 = ptrtoint ptr %CR88.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %CR88.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %628 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i437.i = getelementptr i8, ptr %629, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i437.i, i8 %627) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %630 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i439.i = getelementptr i8, ptr %631, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i439.i, i8 -112) #8, !srcloc !158
  %632 = ptrtoint ptr %CR90.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %CR90.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %634 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i441.i = getelementptr i8, ptr %635, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i441.i, i8 %633) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %636 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i443.i = getelementptr i8, ptr %637, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i443.i, i8 -111) #8, !srcloc !158
  %638 = ptrtoint ptr %CR91.i to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %CR91.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %640 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i445.i = getelementptr i8, ptr %641, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i445.i, i8 %639) #8, !srcloc !158
  %642 = ptrtoint ptr %chip355.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %chip355.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %643)
  %cmp21.i = icmp eq i32 %643, 3
  br i1 %cmp21.i, label %if.then23.i, label %vgaHWRestore.exit.i.if.end24.i_crit_edge

vgaHWRestore.exit.i.if.end24.i_crit_edge:         ; preds = %vgaHWRestore.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then23.i:                                      ; preds = %vgaHWRestore.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %644 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i447.i = getelementptr i8, ptr %645, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i447.i, i8 -80) #8, !srcloc !158
  %646 = ptrtoint ptr %CRB0.i to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %CRB0.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %648 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i449.i = getelementptr i8, ptr %649, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i449.i, i8 %647) #8, !srcloc !158
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %vgaHWRestore.exit.i.if.end24.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %650 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i451.i = getelementptr i8, ptr %651, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i451.i, i8 50) #8, !srcloc !158
  %652 = ptrtoint ptr %CR32.i to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %CR32.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %654 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i453.i = getelementptr i8, ptr %655, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i453.i, i8 %653) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %656 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i455.i = getelementptr i8, ptr %657, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i455.i, i8 8) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %658 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i457.i = getelementptr i8, ptr %659, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i457.i, i8 6) #8, !srcloc !158
  %SR10.i100 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 10
  %660 = ptrtoint ptr %SR10.i100 to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %SR10.i100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %661)
  %cmp27.not.i = icmp eq i8 %661, -1
  br i1 %cmp27.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then29.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %662 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i459.i = getelementptr i8, ptr %663, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i459.i, i8 16) #8, !srcloc !158
  %664 = ptrtoint ptr %SR10.i100 to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %SR10.i100, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %666 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i461.i = getelementptr i8, ptr %667, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i461.i, i8 %665) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %668 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i463.i = getelementptr i8, ptr %669, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i463.i, i8 17) #8, !srcloc !158
  %SR11.i101 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 11
  %670 = ptrtoint ptr %SR11.i101 to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %SR11.i101, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %672 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i465.i = getelementptr i8, ptr %673, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i465.i, i8 %671) #8, !srcloc !158
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end24.i.if.end31.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %674 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i467.i = getelementptr i8, ptr %675, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i467.i, i8 14) #8, !srcloc !158
  %676 = ptrtoint ptr %SR0E.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %SR0E.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %678 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i469.i = getelementptr i8, ptr %679, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i469.i, i8 %677) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %680 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i471.i = getelementptr i8, ptr %681, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i471.i, i8 15) #8, !srcloc !158
  %682 = ptrtoint ptr %SR0F.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %SR0F.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %684 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i473.i = getelementptr i8, ptr %685, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i473.i, i8 %683) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %686 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i475.i = getelementptr i8, ptr %687, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i475.i, i8 18) #8, !srcloc !158
  %688 = ptrtoint ptr %SR12.i to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %SR12.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %690 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i477.i = getelementptr i8, ptr %691, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i477.i, i8 %689) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %692 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i479.i = getelementptr i8, ptr %693, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i479.i, i8 19) #8, !srcloc !158
  %694 = ptrtoint ptr %SR13.i to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %SR13.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %696 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i481.i = getelementptr i8, ptr %697, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i481.i, i8 %695) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %698 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i483.i = getelementptr i8, ptr %699, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i483.i, i8 41) #8, !srcloc !158
  %700 = ptrtoint ptr %SR29.i to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %SR29.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %702 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i485.i = getelementptr i8, ptr %703, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i485.i, i8 %701) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %704 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i487.i = getelementptr i8, ptr %705, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i487.i, i8 24) #8, !srcloc !158
  %706 = ptrtoint ptr %SR18.i to i32
  call void @__asan_load1_noabort(i32 %706)
  %707 = load i8, ptr %SR18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %708 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i489.i = getelementptr i8, ptr %709, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i489.i, i8 %707) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %710 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i491.i = getelementptr i8, ptr %711, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i491.i, i8 21) #8, !srcloc !158
  %712 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i493.i = getelementptr i8, ptr %713, i32 33733
  %714 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i493.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %715 = and i8 %714, -36
  %or40.i = or i8 %715, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %716 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i495.i = getelementptr i8, ptr %717, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i495.i, i8 %or40.i) #8, !srcloc !158
  %718 = or i8 %714, 35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %719 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i497.i = getelementptr i8, ptr %720, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i497.i, i8 %718) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %721 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i499.i = getelementptr i8, ptr %722, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i499.i, i8 %or40.i) #8, !srcloc !158
  %723 = ptrtoint ptr %SR15.i to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %SR15.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %725 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i501.i = getelementptr i8, ptr %726, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i501.i, i8 %724) #8, !srcloc !158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %727 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %727(i32 noundef 21474800) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %728 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i503.i = getelementptr i8, ptr %729, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i503.i, i8 48) #8, !srcloc !158
  %SR30.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 17
  %730 = ptrtoint ptr %SR30.i to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %SR30.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %732 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i505.i = getelementptr i8, ptr %733, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i505.i, i8 %731) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %734 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i507.i = getelementptr i8, ptr %735, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i507.i, i8 8) #8, !srcloc !158
  %SR08.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 3, i32 7
  %736 = ptrtoint ptr %SR08.i to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %SR08.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %738 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i509.i = getelementptr i8, ptr %739, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i509.i, i8 %737) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %740 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i511.i = getelementptr i8, ptr %741, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i511.i, i8 23) #8, !srcloc !158
  %742 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i17.i512.i = getelementptr i8, ptr %743, i32 33749
  %744 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17.i512.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %744)
  %tobool.not.i513.i = icmp sgt i8 %744, -1
  br i1 %tobool.not.i513.i, label %if.end31.i.VerticalRetraceWait.exit520.i_crit_edge, label %if.end31.i.while.cond.i516.i_crit_edge

if.end31.i.while.cond.i516.i_crit_edge:           ; preds = %if.end31.i
  br label %while.cond.i516.i

if.end31.i.VerticalRetraceWait.exit520.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %VerticalRetraceWait.exit520.i

while.cond.i516.i:                                ; preds = %while.cond.i516.i.while.cond.i516.i_crit_edge, %if.end31.i.while.cond.i516.i_crit_edge
  %745 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i19.i514.i = getelementptr i8, ptr %746, i32 33754
  %747 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i19.i514.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %748 = and i8 %747, 8
  %cmp.not.i515.i = icmp eq i8 %748, 0
  br i1 %cmp.not.i515.i, label %while.cond.i516.i.while.cond5.i519.i_crit_edge, label %while.cond.i516.i.while.cond.i516.i_crit_edge

while.cond.i516.i.while.cond.i516.i_crit_edge:    ; preds = %while.cond.i516.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i516.i

while.cond.i516.i.while.cond5.i519.i_crit_edge:   ; preds = %while.cond.i516.i
  br label %while.cond5.i519.i

while.cond5.i519.i:                               ; preds = %while.cond5.i519.i.while.cond5.i519.i_crit_edge, %while.cond.i516.i.while.cond5.i519.i_crit_edge
  %749 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i21.i517.i = getelementptr i8, ptr %750, i32 33754
  %751 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i21.i517.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %752 = and i8 %751, 8
  %cmp9.i518.i = icmp eq i8 %752, 0
  br i1 %cmp9.i518.i, label %while.cond5.i519.i.while.cond5.i519.i_crit_edge, label %while.cond5.i519.i.VerticalRetraceWait.exit520.i_crit_edge

while.cond5.i519.i.VerticalRetraceWait.exit520.i_crit_edge: ; preds = %while.cond5.i519.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %VerticalRetraceWait.exit520.i

while.cond5.i519.i.while.cond5.i519.i_crit_edge:  ; preds = %while.cond5.i519.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond5.i519.i

VerticalRetraceWait.exit520.i:                    ; preds = %while.cond5.i519.i.VerticalRetraceWait.exit520.i_crit_edge, %if.end31.i.VerticalRetraceWait.exit520.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %753 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i522.i = getelementptr i8, ptr %754, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i522.i, i8 103) #8, !srcloc !158
  %755 = ptrtoint ptr %CR67.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %CR67.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %757 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i524.i = getelementptr i8, ptr %758, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i524.i, i8 %756) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %759 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i526.i = getelementptr i8, ptr %760, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i526.i, i8 102) #8, !srcloc !158
  %761 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i528.i = getelementptr i8, ptr %762, i32 33749
  %763 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i528.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %764 = or i8 %763, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %765 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i530.i = getelementptr i8, ptr %766, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i530.i, i8 %764) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %767 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i532.i = getelementptr i8, ptr %768, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i532.i, i8 58) #8, !srcloc !158
  %769 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i534.i = getelementptr i8, ptr %770, i32 33749
  %771 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i534.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %772 = or i8 %771, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %773 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i536.i = getelementptr i8, ptr %774, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i536.i, i8 %772) #8, !srcloc !158
  %775 = ptrtoint ptr %chip355.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %chip355.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %776)
  %cmp59.not.i = icmp eq i32 %776, 2
  br i1 %cmp59.not.i, label %VerticalRetraceWait.exit520.i.if.end65.i_crit_edge, label %if.then61.i

VerticalRetraceWait.exit520.i.if.end65.i_crit_edge: ; preds = %VerticalRetraceWait.exit520.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then61.i:                                      ; preds = %VerticalRetraceWait.exit520.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %777 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i538.i = getelementptr i8, ptr %778, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i538.i, i8 23) #8, !srcloc !158
  %779 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i17.i539.i = getelementptr i8, ptr %780, i32 33749
  %781 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i17.i539.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %781)
  %tobool.not.i540.i = icmp sgt i8 %781, -1
  br i1 %tobool.not.i540.i, label %if.then61.i.VerticalRetraceWait.exit547.i_crit_edge, label %if.then61.i.while.cond.i543.i_crit_edge

if.then61.i.while.cond.i543.i_crit_edge:          ; preds = %if.then61.i
  br label %while.cond.i543.i

if.then61.i.VerticalRetraceWait.exit547.i_crit_edge: ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %VerticalRetraceWait.exit547.i

while.cond.i543.i:                                ; preds = %while.cond.i543.i.while.cond.i543.i_crit_edge, %if.then61.i.while.cond.i543.i_crit_edge
  %782 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i19.i541.i = getelementptr i8, ptr %783, i32 33754
  %784 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i19.i541.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %785 = and i8 %784, 8
  %cmp.not.i542.i = icmp eq i8 %785, 0
  br i1 %cmp.not.i542.i, label %while.cond.i543.i.while.cond5.i546.i_crit_edge, label %while.cond.i543.i.while.cond.i543.i_crit_edge

while.cond.i543.i.while.cond.i543.i_crit_edge:    ; preds = %while.cond.i543.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i543.i

while.cond.i543.i.while.cond5.i546.i_crit_edge:   ; preds = %while.cond.i543.i
  br label %while.cond5.i546.i

while.cond5.i546.i:                               ; preds = %while.cond5.i546.i.while.cond5.i546.i_crit_edge, %while.cond.i543.i.while.cond5.i546.i_crit_edge
  %786 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i21.i544.i = getelementptr i8, ptr %787, i32 33754
  %788 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i21.i544.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %789 = and i8 %788, 8
  %cmp9.i545.i = icmp eq i8 %789, 0
  br i1 %cmp9.i545.i, label %while.cond5.i546.i.while.cond5.i546.i_crit_edge, label %while.cond5.i546.i.VerticalRetraceWait.exit547.i_crit_edge

while.cond5.i546.i.VerticalRetraceWait.exit547.i_crit_edge: ; preds = %while.cond5.i546.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %VerticalRetraceWait.exit547.i

while.cond5.i546.i.while.cond5.i546.i_crit_edge:  ; preds = %while.cond5.i546.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond5.i546.i

VerticalRetraceWait.exit547.i:                    ; preds = %while.cond5.i546.i.VerticalRetraceWait.exit547.i_crit_edge, %if.then61.i.VerticalRetraceWait.exit547.i_crit_edge
  %790 = ptrtoint ptr %MMPR0.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load i32, ptr %MMPR0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %792 = tail call i32 @llvm.bswap.i32(i32 %791) #8
  %793 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %794, i32 33280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %792) #8, !srcloc !166
  %795 = ptrtoint ptr %SavageWaitIdle.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %SavageWaitIdle.i, align 4
  tail call void %796(ptr noundef %1) #8
  %797 = ptrtoint ptr %MMPR1.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %MMPR1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %799 = tail call i32 @llvm.bswap.i32(i32 %798) #8
  %800 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i549.i = getelementptr i8, ptr %801, i32 33284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i549.i, i32 %799) #8, !srcloc !166
  %802 = ptrtoint ptr %SavageWaitIdle.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %SavageWaitIdle.i, align 4
  tail call void %803(ptr noundef %1) #8
  %804 = ptrtoint ptr %MMPR2.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load i32, ptr %MMPR2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %806 = tail call i32 @llvm.bswap.i32(i32 %805) #8
  %807 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i551.i = getelementptr i8, ptr %808, i32 33288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i551.i, i32 %806) #8, !srcloc !166
  %809 = ptrtoint ptr %SavageWaitIdle.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %SavageWaitIdle.i, align 4
  tail call void %810(ptr noundef %1) #8
  %811 = ptrtoint ptr %MMPR3.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %MMPR3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %813 = tail call i32 @llvm.bswap.i32(i32 %812) #8
  %814 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i553.i = getelementptr i8, ptr %815, i32 33292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i553.i, i32 %813) #8, !srcloc !166
  br label %if.end65.i

if.end65.i:                                       ; preds = %VerticalRetraceWait.exit547.i, %VerticalRetraceWait.exit520.i.if.end65.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %816 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i555.i = getelementptr i8, ptr %817, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i555.i, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %818 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i557.i = getelementptr i8, ptr %819, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i557.i, i8 %763) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %820 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i559.i = getelementptr i8, ptr %821, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i559.i, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %822 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i561.i = getelementptr i8, ptr %823, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i561.i, i8 %771) #8, !srcloc !158
  %824 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %depth.i, align 8
  %826 = ptrtoint ptr %vwidth.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %vwidth.i, align 4
  %828 = ptrtoint ptr %chip355.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load i32, ptr %chip355.i, align 4
  %830 = zext i32 %829 to i64
  call void @__sanitizer_cov_trace_switch(i64 %830, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %829, label %if.end65.i.savagefb_set_par_int.exit_crit_edge [
    i32 1, label %if.end65.i.sw.bb.i.i_crit_edge
    i32 2, label %if.end65.i.sw.bb.i.i_crit_edge120
    i32 3, label %if.end65.i.sw.bb8.i.i_crit_edge
    i32 5, label %if.end65.i.sw.bb8.i.i_crit_edge121
    i32 4, label %if.end65.i.sw.bb8.i.i_crit_edge122
    i32 6, label %if.end65.i.sw.bb8.i.i_crit_edge123
    i32 7, label %if.end65.i.sw.bb8.i.i_crit_edge124
    i32 8, label %sw.bb13.i.i
  ]

if.end65.i.sw.bb8.i.i_crit_edge124:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end65.i.sw.bb8.i.i_crit_edge123:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end65.i.sw.bb8.i.i_crit_edge122:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end65.i.sw.bb8.i.i_crit_edge121:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end65.i.sw.bb8.i.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i.i

if.end65.i.sw.bb.i.i_crit_edge120:                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.end65.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.end65.i.savagefb_set_par_int.exit_crit_edge:   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %savagefb_set_par_int.exit

sw.bb.i.i:                                        ; preds = %if.end65.i.sw.bb.i.i_crit_edge, %if.end65.i.sw.bb.i.i_crit_edge120
  %831 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i563.i = getelementptr i8, ptr %832, i32 298008
  %833 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i563.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %834 = and i32 %833, -264306688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %835 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i138.i.i = getelementptr i8, ptr %836, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i.i, i32 %834) #8, !srcloc !166
  %cob_offset.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 28
  %837 = ptrtoint ptr %cob_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %cob_offset.i.i, align 8
  %shr.i.i109 = lshr i32 %838, 11
  %cob_index.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 30
  %839 = ptrtoint ptr %cob_index.i.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %cob_index.i.i, align 8
  %shl4.i.i = shl i32 %840, 29
  %or5.i.i = or i32 %shl4.i.i, %shr.i.i109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %841 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #8
  %842 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i140.i.i = getelementptr i8, ptr %843, i32 298004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i.i, i32 %841) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %844 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i142.i.i = getelementptr i8, ptr %845, i32 298000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i.i, i32 544350328) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %846 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i144.i.i = getelementptr i8, ptr %847, i32 297996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i.i, i32 0) #8, !srcloc !166
  %848 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i146.i.i = getelementptr i8, ptr %849, i32 298008
  %850 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146.i.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %851 = or i32 %850, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %852 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i148.i.i = getelementptr i8, ptr %853, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i.i, i32 %851) #8, !srcloc !166
  br label %savagefb_set_par_int.exit

sw.bb8.i.i:                                       ; preds = %if.end65.i.sw.bb8.i.i_crit_edge, %if.end65.i.sw.bb8.i.i_crit_edge121, %if.end65.i.sw.bb8.i.i_crit_edge122, %if.end65.i.sw.bb8.i.i_crit_edge123, %if.end65.i.sw.bb8.i.i_crit_edge124
  %854 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i150.i.i = getelementptr i8, ptr %855, i32 298008
  %856 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150.i.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %857 = and i32 %856, -264306688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %858 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i152.i.i = getelementptr i8, ptr %859, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i.i, i32 %857) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %860 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i154.i.i = getelementptr i8, ptr %861, i32 298000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i.i, i32 1073770496) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %862 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i156.i.i = getelementptr i8, ptr %863, i32 297996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i.i, i32 0) #8, !srcloc !166
  %864 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i158.i.i = getelementptr i8, ptr %865, i32 298008
  %866 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158.i.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %867 = or i32 %866, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %868 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i160.i.i = getelementptr i8, ptr %869, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160.i.i, i32 %867) #8, !srcloc !166
  br label %savagefb_set_par_int.exit

sw.bb13.i.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %870 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i162.i.i = getelementptr i8, ptr %871, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i.i, i32 0) #8, !srcloc !166
  %cob_offset14.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 28
  %872 = ptrtoint ptr %cob_offset14.i.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %cob_offset14.i.i, align 8
  %shr15.i.i = lshr i32 %873, 7
  %cob_index16.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 30
  %874 = ptrtoint ptr %cob_index16.i.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %cob_index16.i.i, align 8
  %or17.i.i = or i32 %shr15.i.i, %875
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %876 = tail call i32 @llvm.bswap.i32(i32 %or17.i.i) #8
  %877 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i164.i.i = getelementptr i8, ptr %878, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i.i, i32 %876) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %879 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i166.i.i = getelementptr i8, ptr %880, i32 297520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166.i.i, i32 0) #8, !srcloc !166
  %881 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i168.i.i = getelementptr i8, ptr %882, i32 298008
  %883 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168.i.i) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %884 = or i32 %883, 10240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %885 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i170.i.i = getelementptr i8, ptr %886, i32 298008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170.i.i, i32 %884) #8, !srcloc !166
  br label %savagefb_set_par_int.exit

savagefb_set_par_int.exit:                        ; preds = %sw.bb13.i.i, %sw.bb8.i.i, %sw.bb.i.i, %if.end65.i.savagefb_set_par_int.exit_crit_edge
  %and1.i.i = and i32 %827, 65526
  %and.i.i110 = shl i32 %825, 16
  %shl.i.i111 = and i32 %and.i.i110, 16711680
  %or.i.i = or i32 %and1.i.i, %shl.i.i111
  %or2.i.i = or i32 %or.i.i, 268435465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %887 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i565.i = getelementptr i8, ptr %888, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i565.i, i8 49) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %889 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i172.i.i = getelementptr i8, ptr %890, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i172.i.i, i8 12) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %891 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i174.i.i = getelementptr i8, ptr %892, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i174.i.i, i8 80) #8, !srcloc !158
  %893 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i176.i.i = getelementptr i8, ptr %894, i32 33749
  %895 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i176.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %896 = or i8 %895, -63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %897 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i178.i.i = getelementptr i8, ptr %898, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i178.i.i, i8 %896) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %899 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i180.i.i = getelementptr i8, ptr %900, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i180.i.i, i8 64) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %901 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i182.i.i = getelementptr i8, ptr %902, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i182.i.i, i8 1) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %903 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i184.i.i = getelementptr i8, ptr %904, i32 42216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i.i, i32 -1) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %905 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i186.i.i = getelementptr i8, ptr %906, i32 42220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i.i, i32 -1) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %907 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i188.i.i = getelementptr i8, ptr %908, i32 33064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.i.i, i32 -1) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %909 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i190.i.i = getelementptr i8, ptr %910, i32 33068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i.i, i32 -1) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %911 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i192.i.i = getelementptr i8, ptr %912, i32 33076
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i192.i.i, i16 9984) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %913 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i194.i.i = getelementptr i8, ptr %914, i32 33078
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i194.i.i, i16 1792) #8, !srcloc !162
  %bci_ptr.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 27
  %915 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 0, ptr %bci_ptr.i.i, align 4
  %SavageWaitFifo.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 32
  %916 = ptrtoint ptr %SavageWaitFifo.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %SavageWaitFifo.i.i, align 8
  tail call void %917(ptr noundef %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %bci_base.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 26
  %918 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %bci_base.i.i, align 8
  %920 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %bci_ptr.i.i, align 4
  %inc.i.i = add i32 %921, 1
  store i32 %inc.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr.i566.i = getelementptr i32, ptr %919, i32 %921
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i566.i, i32 -536870506) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %922 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %bci_base.i.i, align 8
  %924 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load i32, ptr %bci_ptr.i.i, align 4
  %inc29.i.i = add i32 %925, 1
  store i32 %inc29.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr30.i.i = getelementptr i32, ptr %923, i32 %925
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 0) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %926 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %bci_base.i.i, align 8
  %928 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load i32, ptr %bci_ptr.i.i, align 4
  %inc36.i.i = add i32 %929, 1
  store i32 %inc36.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr37.i.i = getelementptr i32, ptr %927, i32 %929
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 -520093290) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %930 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #8
  %931 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %bci_base.i.i, align 8
  %933 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %bci_ptr.i.i, align 4
  %inc43.i.i = add i32 %934, 1
  store i32 %inc43.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr44.i.i = getelementptr i32, ptr %932, i32 %934
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i, i32 %930) #8, !srcloc !166
  %935 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %935)
  store i32 0, ptr %bci_ptr.i.i, align 4
  %936 = ptrtoint ptr %SavageWaitFifo.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %SavageWaitFifo.i.i, align 8
  tail call void %937(ptr noundef %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %938 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %bci_base.i.i, align 8
  %940 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load i32, ptr %bci_ptr.i.i, align 4
  %inc52.i.i = add i32 %941, 1
  store i32 %inc52.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr53.i.i = getelementptr i32, ptr %939, i32 %941
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i.i, i32 -536870506) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %942 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %bci_base.i.i, align 8
  %944 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load i32, ptr %bci_ptr.i.i, align 4
  %inc59.i.i = add i32 %945, 1
  store i32 %inc59.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr60.i.i = getelementptr i32, ptr %943, i32 %945
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i.i, i32 0) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %946 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %bci_base.i.i, align 8
  %948 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %bci_ptr.i.i, align 4
  %inc66.i.i = add i32 %949, 1
  store i32 %inc66.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr67.i.i = getelementptr i32, ptr %947, i32 %949
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i.i, i32 -520093290) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %950 = ptrtoint ptr %bci_base.i.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %bci_base.i.i, align 8
  %952 = ptrtoint ptr %bci_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load i32, ptr %bci_ptr.i.i, align 4
  %inc73.i.i = add i32 %953, 1
  store i32 %inc73.i.i, ptr %bci_ptr.i.i, align 4
  %add.ptr74.i.i = getelementptr i32, ptr %951, i32 %953
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i.i, i32 %930) #8, !srcloc !166
  tail call fastcc void @vgaHWProtect(ptr noundef %1, i32 noundef 0) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %call36 = tail call i32 @fb_set_cmap(ptr noundef %cmap, ptr noundef %info) #8
  %954 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load i32, ptr %xres_virtual.i, align 4
  %956 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load i32, ptr %bits_per_pixel.i, align 4
  %mul.i114 = mul i32 %957, %955
  %div17.i = lshr i32 %mul.i114, 3
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %958 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %958)
  store i32 %div17.i, ptr %line_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %957)
  %cmp.i115 = icmp eq i32 %957, 8
  %spec.select.i116 = select i1 %cmp.i115, i32 3, i32 2
  %spec.select19.i = select i1 %cmp.i115, i16 4, i16 2
  %959 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %960 = ptrtoint ptr %959 to i32
  call void @__asan_store4_noabort(i32 %960)
  store i32 %spec.select.i116, ptr %959, align 4
  %961 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %962 = ptrtoint ptr %961 to i32
  call void @__asan_store2_noabort(i32 %962)
  store i16 %spec.select19.i, ptr %961, align 4
  %963 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %par1, align 4
  %bci_ptr.i = getelementptr inbounds %struct.savagefb_par, ptr %964, i32 0, i32 27
  %965 = ptrtoint ptr %bci_ptr.i to i32
  call void @__asan_store4_noabort(i32 %965)
  store i32 0, ptr %bci_ptr.i, align 4
  %SavageWaitFifo.i = getelementptr inbounds %struct.savagefb_par, ptr %964, i32 0, i32 32
  %966 = ptrtoint ptr %SavageWaitFifo.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %SavageWaitFifo.i, align 8
  tail call void %967(ptr noundef %964, i32 noundef 3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %bci_base.i = getelementptr inbounds %struct.savagefb_par, ptr %964, i32 0, i32 26
  %968 = ptrtoint ptr %bci_base.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %bci_base.i, align 8
  %970 = ptrtoint ptr %bci_ptr.i to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load i32, ptr %bci_ptr.i, align 4
  %inc.i117 = add i32 %971, 1
  store i32 %inc.i117, ptr %bci_ptr.i, align 4
  %add.ptr.i = getelementptr i32, ptr %969, i32 %971
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 6291520) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %972 = ptrtoint ptr %bci_base.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %bci_base.i, align 8
  %974 = ptrtoint ptr %bci_ptr.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load i32, ptr %bci_ptr.i, align 4
  %inc8.i = add i32 %975, 1
  store i32 %inc8.i, ptr %bci_ptr.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %973, i32 %975
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #8, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %976 = ptrtoint ptr %bci_base.i to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %bci_base.i, align 8
  %978 = ptrtoint ptr %bci_ptr.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load i32, ptr %bci_ptr.i, align 4
  %inc15.i = add i32 %979, 1
  store i32 %inc15.i, ptr %bci_ptr.i, align 4
  %add.ptr16.i = getelementptr i32, ptr %977, i32 %979
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 -15728881) #8, !srcloc !166
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %red to i16
  %arrayidx = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 36, i32 %regno
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %arrayidx, align 8
  %conv3 = trunc i32 %green to i16
  %green6 = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 36, i32 %regno, i32 1
  %3 = ptrtoint ptr %green6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv3, ptr %green6, align 2
  %conv7 = trunc i32 %blue to i16
  %blue10 = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 36, i32 %regno, i32 2
  %4 = ptrtoint ptr %blue10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv7, ptr %blue10, align 4
  %conv11 = trunc i32 %transp to i16
  %transp14 = getelementptr %struct.savagefb_par, ptr %1, i32 0, i32 36, i32 %regno, i32 3
  %5 = ptrtoint ptr %transp14 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv11, ptr %transp14, align 2
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  %8 = add i32 %7, -8
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 29)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb32
    i32 3, label %sw.bb45
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = trunc i32 %regno to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 33736
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %conv15) #8, !srcloc !158
  %shr = lshr i32 %red, 10
  %conv16 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %14, i32 33737
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i98, i8 %conv16) #8, !srcloc !158
  %shr17 = lshr i32 %green, 10
  %conv18 = trunc i32 %shr17 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %16, i32 33737
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i100, i8 %conv18) #8, !srcloc !158
  %shr19 = lshr i32 %blue, 10
  %conv20 = trunc i32 %shr19 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %18, i32 33737
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i102, i8 %conv20) #8, !srcloc !158
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp22 = icmp ult i32 %regno, 16
  br i1 %cmp22, label %if.then24, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %red, 63488
  %and25 = lshr i32 %green, 5
  %shr26 = and i32 %and25, 2016
  %or = or i32 %shr26, %and
  %and27 = lshr i32 %blue, 11
  %shr28 = and i32 %and27, 31
  %or29 = or i32 %or, %shr28
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %19 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx30 = getelementptr i32, ptr %20, i32 %regno
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or29, ptr %arrayidx30, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp33 = icmp ult i32 %regno, 16
  br i1 %cmp33, label %if.then35, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %and36 = shl i32 %red, 8
  %shl = and i32 %and36, 16711680
  %and37 = and i32 %green, 65280
  %or38 = or i32 %shl, %and37
  %and39 = lshr i32 %blue, 8
  %shr40 = and i32 %and39, 255
  %or41 = or i32 %or38, %shr40
  %pseudo_palette42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %22 = ptrtoint ptr %pseudo_palette42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pseudo_palette42, align 4
  %arrayidx43 = getelementptr i32, ptr %23, i32 %regno
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or41, ptr %arrayidx43, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp46 = icmp ult i32 %regno, 16
  br i1 %cmp46, label %if.then48, label %sw.bb45.cleanup_crit_edge

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %and49 = shl i32 %transp, 16
  %shl50 = and i32 %and49, -16777216
  %and51 = shl i32 %red, 8
  %shl52 = and i32 %and51, 16711680
  %and54 = and i32 %green, 65280
  %and56 = lshr i32 %blue, 8
  %shr57 = and i32 %and56, 255
  %or53 = or i32 %and54, %shl52
  %or55 = or i32 %or53, %shr57
  %or58 = or i32 %or55, %shl50
  %pseudo_palette59 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %25 = ptrtoint ptr %pseudo_palette59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pseudo_palette59, align 4
  %arrayidx60 = getelementptr i32, ptr %26, i32 %regno
  %27 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or58, ptr %arrayidx60, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %sw.bb45.cleanup_crit_edge, %if.then35, %sw.bb32.cleanup_crit_edge, %if.then24, %sw.bb21.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %sw.bb45.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %sw.bb32.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %sw.bb21.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %display_type = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %display_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %display_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 8) #8, !srcloc !158
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %7, i32 33733
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i62) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %9 = or i8 %8, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %11, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i64, i8 %9) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %13, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i66, i8 13) #8, !srcloc !158
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %15, i32 33733
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i68) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %17 = and i8 %16, 80
  %18 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %blank, label %if.then.sw.epilog_crit_edge [
    i32 4, label %sw.bb14
    i32 3, label %sw.bb10
    i32 2, label %sw.bb6
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i8 %17, 16
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %20 = or i8 %17, 64
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb10, %sw.bb6, %if.then.sw.epilog_crit_edge
  %srd.0 = phi i8 [ %17, %if.then.sw.epilog_crit_edge ], [ %19, %sw.bb6 ], [ %20, %sw.bb10 ], [ 80, %sw.bb14 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %22, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i70, i8 13) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %24, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i72, i8 %srd.0) #8, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %display_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %display_type, align 4
  %27 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %switch = icmp eq i32 %27, 2
  br i1 %switch, label %if.then24, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then24:                                        ; preds = %if.end
  %28 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %blank, label %if.then24.if.end36_crit_edge [
    i32 0, label %if.then24.sw.bb25_crit_edge
    i32 1, label %if.then24.sw.bb25_crit_edge85
    i32 2, label %if.then24.sw.bb30_crit_edge
    i32 3, label %if.then24.sw.bb30_crit_edge86
    i32 4, label %if.then24.sw.bb30_crit_edge87
  ]

if.then24.sw.bb30_crit_edge87:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.then24.sw.bb30_crit_edge86:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.then24.sw.bb30_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.then24.sw.bb25_crit_edge85:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.then24.sw.bb25_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb25

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

sw.bb25:                                          ; preds = %if.then24.sw.bb25_crit_edge, %if.then24.sw.bb25_crit_edge85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i73 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %29 = ptrtoint ptr %mmio.i.i73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i73, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %30, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i74, i8 49) #8, !srcloc !158
  %31 = ptrtoint ptr %mmio.i.i73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i73, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %32, i32 33733
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i76) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %34 = or i8 %33, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %mmio.i.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i73, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %36, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i78, i8 %34) #8, !srcloc !158
  br label %if.end36

sw.bb30:                                          ; preds = %if.then24.sw.bb30_crit_edge, %if.then24.sw.bb30_crit_edge86, %if.then24.sw.bb30_crit_edge87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i79 = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %37 = ptrtoint ptr %mmio.i.i79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i.i79, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %38, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i80, i8 49) #8, !srcloc !158
  %39 = ptrtoint ptr %mmio.i.i79 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i79, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %40, i32 33733
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i82) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %42 = and i8 %41, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %mmio.i.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i.i79, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %44, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i84, i8 %42) #8, !srcloc !158
  br label %if.end36

if.end36:                                         ; preds = %sw.bb30, %sw.bb25, %if.then24.if.end36_crit_edge, %if.end.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blank)
  %cmp37 = icmp eq i32 %blank, 1
  %cond = zext i1 %cmp37 to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %2 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yoffset, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  %mul = mul i32 %5, %3
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  %and = and i32 %7, -2
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  %add = add i32 %9, 7
  %div8 = lshr i32 %add, 3
  %mul3 = mul i32 %div8, %and
  %add4 = add i32 %mul3, %mul
  %shr = lshr i32 %add4, 2
  %10 = trunc i32 %shr to i16
  %11 = and i16 %10, -256
  %conv.i = or i16 %11, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %12) #8, !srcloc !162
  %15 = shl i16 %10, 8
  %conv3.i = or i16 %15, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #8
  %17 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %18, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i12.i, i16 %16) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %20, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i14.i, i8 105) #8, !srcloc !158
  %and4.i = lshr i32 %add4, 18
  %21 = trunc i32 %and4.i to i8
  %conv5.i = and i8 %21, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %23, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16.i, i8 %conv5.i) #8, !srcloc !158
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @savagefb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @savagefb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @savagefb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @savagefb_sync(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @save_vga(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savage_get_default_par(ptr noundef readonly %par, ptr noundef writeonly %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %mmio.i.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 14408) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i252 = getelementptr i8, ptr %3, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i252, i16 14752) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i254 = getelementptr i8, ptr %5, i32 33732
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i254, i16 2054) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i256 = getelementptr i8, ptr %7, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i256, i8 102) #8, !srcloc !158
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i258 = getelementptr i8, ptr %9, i32 33749
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i258) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %11 = or i8 %10, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i260 = getelementptr i8, ptr %13, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i260, i8 %11) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i262 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i262, i8 58) #8, !srcloc !158
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i264 = getelementptr i8, ptr %17, i32 33749
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i264) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %19 = or i8 %18, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i266 = getelementptr i8, ptr %21, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i266, i8 %19) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i268 = getelementptr i8, ptr %23, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i268, i8 83) #8, !srcloc !158
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i270 = getelementptr i8, ptr %25, i32 33749
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i270) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %27 = and i8 %26, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i272 = getelementptr i8, ptr %29, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i272, i8 %27) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i274 = getelementptr i8, ptr %31, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i274, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i276 = getelementptr i8, ptr %33, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i276, i8 %10) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i278 = getelementptr i8, ptr %35, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i278, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i280 = getelementptr i8, ptr %37, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i280, i8 %18) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i282 = getelementptr i8, ptr %39, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i282, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i284 = getelementptr i8, ptr %41, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i284, i8 %10) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i286 = getelementptr i8, ptr %43, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i286, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i288 = getelementptr i8, ptr %45, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i288, i8 %18) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i290 = getelementptr i8, ptr %47, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i290, i8 8) #8, !srcloc !158
  %48 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i292 = getelementptr i8, ptr %49, i32 33733
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i292) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR08 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 7
  %51 = ptrtoint ptr %SR08 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %SR08, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i294 = getelementptr i8, ptr %53, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i294, i8 6) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i296 = getelementptr i8, ptr %55, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i296, i8 49) #8, !srcloc !158
  %56 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i298 = getelementptr i8, ptr %57, i32 33749
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i298) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR31 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 20
  %59 = ptrtoint ptr %CR31 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %CR31, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i300 = getelementptr i8, ptr %61, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i300, i8 50) #8, !srcloc !158
  %62 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i302 = getelementptr i8, ptr %63, i32 33749
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i302) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR32 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 21
  %65 = ptrtoint ptr %CR32 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %CR32, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i304 = getelementptr i8, ptr %67, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i304, i8 52) #8, !srcloc !158
  %68 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i306 = getelementptr i8, ptr %69, i32 33749
  %70 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i306) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR34 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 23
  %71 = ptrtoint ptr %CR34 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %CR34, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i308 = getelementptr i8, ptr %73, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i308, i8 54) #8, !srcloc !158
  %74 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i310 = getelementptr i8, ptr %75, i32 33749
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i310) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR36 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 24
  %77 = ptrtoint ptr %CR36 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %CR36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i312 = getelementptr i8, ptr %79, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i312, i8 58) #8, !srcloc !158
  %80 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i314 = getelementptr i8, ptr %81, i32 33749
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i314) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR3A = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 25
  %83 = ptrtoint ptr %CR3A to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %CR3A, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i316 = getelementptr i8, ptr %85, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i316, i8 64) #8, !srcloc !158
  %86 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i318 = getelementptr i8, ptr %87, i32 33749
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i318) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR40 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 28
  %89 = ptrtoint ptr %CR40 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %CR40, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i320 = getelementptr i8, ptr %91, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i320, i8 66) #8, !srcloc !158
  %92 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i322 = getelementptr i8, ptr %93, i32 33749
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i322) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR42 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 30
  %95 = ptrtoint ptr %CR42 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %CR42, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i324 = getelementptr i8, ptr %97, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i324, i8 69) #8, !srcloc !158
  %98 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i326 = getelementptr i8, ptr %99, i32 33749
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i326) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR45 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 32
  %101 = ptrtoint ptr %CR45 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %CR45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i328 = getelementptr i8, ptr %103, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i328, i8 80) #8, !srcloc !158
  %104 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i330 = getelementptr i8, ptr %105, i32 33749
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i330) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR50 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 33
  %107 = ptrtoint ptr %CR50 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %CR50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %108 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i332 = getelementptr i8, ptr %109, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i332, i8 81) #8, !srcloc !158
  %110 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i334 = getelementptr i8, ptr %111, i32 33749
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i334) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR51 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 34
  %113 = ptrtoint ptr %CR51 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %CR51, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i336 = getelementptr i8, ptr %115, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i336, i8 83) #8, !srcloc !158
  %116 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i338 = getelementptr i8, ptr %117, i32 33749
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i338) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR53 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 35
  %119 = ptrtoint ptr %CR53 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %CR53, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i340 = getelementptr i8, ptr %121, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i340, i8 88) #8, !srcloc !158
  %122 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i342 = getelementptr i8, ptr %123, i32 33749
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i342) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR58 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 37
  %125 = ptrtoint ptr %CR58 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %CR58, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i344 = getelementptr i8, ptr %127, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i344, i8 96) #8, !srcloc !158
  %128 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i346 = getelementptr i8, ptr %129, i32 33749
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i346) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR60 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 41
  %131 = ptrtoint ptr %CR60 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %CR60, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i348 = getelementptr i8, ptr %133, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i348, i8 102) #8, !srcloc !158
  %134 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i350 = getelementptr i8, ptr %135, i32 33749
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i350) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR66 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 44
  %137 = ptrtoint ptr %CR66 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %CR66, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i352 = getelementptr i8, ptr %139, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i352, i8 103) #8, !srcloc !158
  %140 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i354 = getelementptr i8, ptr %141, i32 33749
  %142 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i354) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR67 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 45
  %143 = ptrtoint ptr %CR67 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %CR67, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i356 = getelementptr i8, ptr %145, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i356, i8 104) #8, !srcloc !158
  %146 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i358 = getelementptr i8, ptr %147, i32 33749
  %148 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i358) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR68 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 46
  %149 = ptrtoint ptr %CR68 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %CR68, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %150 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i360 = getelementptr i8, ptr %151, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i360, i8 105) #8, !srcloc !158
  %152 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i362 = getelementptr i8, ptr %153, i32 33749
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i362) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR69 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 47
  %155 = ptrtoint ptr %CR69 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %CR69, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %156 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i364 = getelementptr i8, ptr %157, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i364, i8 111) #8, !srcloc !158
  %158 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i366 = getelementptr i8, ptr %159, i32 33749
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i366) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR6F = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 49
  %161 = ptrtoint ptr %CR6F to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %CR6F, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %162 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i368 = getelementptr i8, ptr %163, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i368, i8 51) #8, !srcloc !158
  %164 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i370 = getelementptr i8, ptr %165, i32 33749
  %166 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i370) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR33 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 22
  %167 = ptrtoint ptr %CR33 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %CR33, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %168 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i372 = getelementptr i8, ptr %169, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i372, i8 -122) #8, !srcloc !158
  %170 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i374 = getelementptr i8, ptr %171, i32 33749
  %172 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i374) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR86 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 50
  %173 = ptrtoint ptr %CR86 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %CR86, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %174 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i376 = getelementptr i8, ptr %175, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i376, i8 -120) #8, !srcloc !158
  %176 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i378 = getelementptr i8, ptr %177, i32 33749
  %178 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i378) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR88 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 51
  %179 = ptrtoint ptr %CR88 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %CR88, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %180 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i380 = getelementptr i8, ptr %181, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i380, i8 -112) #8, !srcloc !158
  %182 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i382 = getelementptr i8, ptr %183, i32 33749
  %184 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i382) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR90 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 52
  %185 = ptrtoint ptr %CR90 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %CR90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %186 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i384 = getelementptr i8, ptr %187, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i384, i8 -111) #8, !srcloc !158
  %188 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i386 = getelementptr i8, ptr %189, i32 33749
  %190 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i386) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR91 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 53
  %191 = ptrtoint ptr %CR91 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %CR91, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %192 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i388 = getelementptr i8, ptr %193, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i388, i8 -80) #8, !srcloc !158
  %194 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i390 = getelementptr i8, ptr %195, i32 33749
  %196 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i390) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %197 = or i8 %196, -128
  %CRB0 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 54
  %198 = ptrtoint ptr %CRB0 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %CRB0, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %199 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i392 = getelementptr i8, ptr %200, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i392, i8 59) #8, !srcloc !158
  %201 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i394 = getelementptr i8, ptr %202, i32 33749
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i394) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR3B = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 26
  %204 = ptrtoint ptr %CR3B to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %CR3B, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %205 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i396 = getelementptr i8, ptr %206, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i396, i8 60) #8, !srcloc !158
  %207 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i398 = getelementptr i8, ptr %208, i32 33749
  %209 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i398) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR3C = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 27
  %210 = ptrtoint ptr %CR3C to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %CR3C, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %211 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i400 = getelementptr i8, ptr %212, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i400, i8 67) #8, !srcloc !158
  %213 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i402 = getelementptr i8, ptr %214, i32 33749
  %215 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i402) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR43 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 31
  %216 = ptrtoint ptr %CR43 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %CR43, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %217 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i404 = getelementptr i8, ptr %218, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i404, i8 93) #8, !srcloc !158
  %219 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i406 = getelementptr i8, ptr %220, i32 33749
  %221 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i406) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR5D = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 39
  %222 = ptrtoint ptr %CR5D to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %CR5D, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %223 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i408 = getelementptr i8, ptr %224, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i408, i8 94) #8, !srcloc !158
  %225 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i410 = getelementptr i8, ptr %226, i32 33749
  %227 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i410) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR5E = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 40
  %228 = ptrtoint ptr %CR5E to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %CR5E, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %229 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i412 = getelementptr i8, ptr %230, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i412, i8 101) #8, !srcloc !158
  %231 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i414 = getelementptr i8, ptr %232, i32 33749
  %233 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i414) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %CR65 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 43
  %234 = ptrtoint ptr %CR65 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %CR65, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %235 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i416 = getelementptr i8, ptr %236, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i416, i8 14) #8, !srcloc !158
  %237 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i418 = getelementptr i8, ptr %238, i32 33733
  %239 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i418) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR0E = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 8
  %240 = ptrtoint ptr %SR0E to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %SR0E, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %241 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i420 = getelementptr i8, ptr %242, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i420, i8 15) #8, !srcloc !158
  %243 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i422 = getelementptr i8, ptr %244, i32 33733
  %245 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i422) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR0F = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 9
  %246 = ptrtoint ptr %SR0F to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %SR0F, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %247 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i424 = getelementptr i8, ptr %248, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i424, i8 16) #8, !srcloc !158
  %249 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i426 = getelementptr i8, ptr %250, i32 33733
  %251 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i426) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR10 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 10
  %252 = ptrtoint ptr %SR10 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %SR10, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %253 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i428 = getelementptr i8, ptr %254, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i428, i8 17) #8, !srcloc !158
  %255 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i430 = getelementptr i8, ptr %256, i32 33733
  %257 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i430) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR11 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 11
  %258 = ptrtoint ptr %SR11 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %SR11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %259 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i432 = getelementptr i8, ptr %260, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i432, i8 18) #8, !srcloc !158
  %261 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i434 = getelementptr i8, ptr %262, i32 33733
  %263 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i434) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR12 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 12
  %264 = ptrtoint ptr %SR12 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %SR12, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %265 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i436 = getelementptr i8, ptr %266, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i436, i8 19) #8, !srcloc !158
  %267 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i438 = getelementptr i8, ptr %268, i32 33733
  %269 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i438) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR13 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 13
  %270 = ptrtoint ptr %SR13 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %SR13, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %271 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i440 = getelementptr i8, ptr %272, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i440, i8 41) #8, !srcloc !158
  %273 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i442 = getelementptr i8, ptr %274, i32 33733
  %275 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i442) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR29 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 16
  %276 = ptrtoint ptr %SR29 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %275, ptr %SR29, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %277 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i444 = getelementptr i8, ptr %278, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i444, i8 21) #8, !srcloc !158
  %279 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i446 = getelementptr i8, ptr %280, i32 33733
  %281 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i446) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR15 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 14
  %282 = ptrtoint ptr %SR15 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %SR15, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %283 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i448 = getelementptr i8, ptr %284, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i448, i8 48) #8, !srcloc !158
  %285 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i450 = getelementptr i8, ptr %286, i32 33733
  %287 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i450) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR30 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 17
  %288 = ptrtoint ptr %SR30 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %SR30, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %289 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i452 = getelementptr i8, ptr %290, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i452, i8 24) #8, !srcloc !158
  %291 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i454 = getelementptr i8, ptr %292, i32 33733
  %293 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i454) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %SR18 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 15
  %294 = ptrtoint ptr %SR18 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %293, ptr %SR18, align 4
  %chip = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 1
  %295 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %296)
  %cmp = icmp eq i32 %296, 2
  br i1 %cmp, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %297 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456 = getelementptr i8, ptr %298, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456, i8 84) #8, !srcloc !158
  %299 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458 = getelementptr i8, ptr %300, i32 33733
  %301 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 0
  %302 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %303 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.1 = getelementptr i8, ptr %304, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.1, i8 85) #8, !srcloc !158
  %305 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.1 = getelementptr i8, ptr %306, i32 33733
  %307 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.1) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.1 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 1
  %308 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %arrayidx.1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %309 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.2 = getelementptr i8, ptr %310, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.2, i8 86) #8, !srcloc !158
  %311 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.2 = getelementptr i8, ptr %312, i32 33733
  %313 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.2) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.2 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 2
  %314 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %313, ptr %arrayidx.2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %315 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.3 = getelementptr i8, ptr %316, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.3, i8 87) #8, !srcloc !158
  %317 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.3 = getelementptr i8, ptr %318, i32 33733
  %319 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.3) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.3 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 3
  %320 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %arrayidx.3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %321 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.4 = getelementptr i8, ptr %322, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.4, i8 88) #8, !srcloc !158
  %323 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.4 = getelementptr i8, ptr %324, i32 33733
  %325 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.4) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.4 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 4
  %326 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %325, ptr %arrayidx.4, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %327 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.5 = getelementptr i8, ptr %328, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.5, i8 89) #8, !srcloc !158
  %329 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.5 = getelementptr i8, ptr %330, i32 33733
  %331 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.5) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.5 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 5
  %332 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %331, ptr %arrayidx.5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %333 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.6 = getelementptr i8, ptr %334, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.6, i8 90) #8, !srcloc !158
  %335 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.6 = getelementptr i8, ptr %336, i32 33733
  %337 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.6) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.6 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 6
  %338 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %337, ptr %arrayidx.6, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %339 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i456.7 = getelementptr i8, ptr %340, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i456.7, i8 91) #8, !srcloc !158
  %341 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i458.7 = getelementptr i8, ptr %342, i32 33733
  %343 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i458.7) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %arrayidx.7 = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 7
  %344 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %343, ptr %arrayidx.7, align 1
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %345 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i460 = getelementptr i8, ptr %346, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i460, i8 102) #8, !srcloc !158
  %347 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i462 = getelementptr i8, ptr %348, i32 33749
  %349 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i462) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %350 = or i8 %349, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %351 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i464 = getelementptr i8, ptr %352, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i464, i8 %350) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %353 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i466 = getelementptr i8, ptr %354, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i466, i8 58) #8, !srcloc !158
  %355 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i468 = getelementptr i8, ptr %356, i32 33749
  %357 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i468) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %358 = or i8 %357, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %359 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i470 = getelementptr i8, ptr %360, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i470, i8 %358) #8, !srcloc !158
  %361 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %362)
  %cmp67.not = icmp eq i32 %362, 2
  br i1 %cmp67.not, label %if.end.if.end74_crit_edge, label %if.then69

if.end.if.end74_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then69:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %363 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %364, i32 33280
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !163
  %366 = tail call i32 @llvm.bswap.i32(i32 %365) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %MMPR0 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 56
  %367 = ptrtoint ptr %MMPR0 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %366, ptr %MMPR0, align 4
  %368 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i472 = getelementptr i8, ptr %369, i32 33284
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i472) #8, !srcloc !163
  %371 = tail call i32 @llvm.bswap.i32(i32 %370) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %MMPR1 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 57
  %372 = ptrtoint ptr %MMPR1 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %371, ptr %MMPR1, align 4
  %373 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i474 = getelementptr i8, ptr %374, i32 33288
  %375 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i474) #8, !srcloc !163
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %MMPR2 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 58
  %377 = ptrtoint ptr %MMPR2 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %376, ptr %MMPR2, align 4
  %378 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i476 = getelementptr i8, ptr %379, i32 33292
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i476) #8, !srcloc !163
  %381 = tail call i32 @llvm.bswap.i32(i32 %380) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %MMPR3 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 59
  %382 = ptrtoint ptr %MMPR3 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %MMPR3, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end.if.end74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %383 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i478 = getelementptr i8, ptr %384, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i478, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %385 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i480 = getelementptr i8, ptr %386, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i480, i8 %357) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %387 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i482 = getelementptr i8, ptr %388, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i482, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %389 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i484 = getelementptr i8, ptr %390, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i484, i8 %349) #8, !srcloc !158
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savage_set_default_par(ptr noundef readonly %par, ptr noundef readonly %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %mmio.i.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 14408) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i203 = getelementptr i8, ptr %3, i32 33748
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i203, i16 14752) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %5, i32 33732
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i205, i16 2054) #8, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i207 = getelementptr i8, ptr %7, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i207, i8 102) #8, !srcloc !158
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i209 = getelementptr i8, ptr %9, i32 33749
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i209) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %11 = or i8 %10, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i211 = getelementptr i8, ptr %13, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i211, i8 %11) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i213, i8 58) #8, !srcloc !158
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i215 = getelementptr i8, ptr %17, i32 33749
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i215) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %19 = or i8 %18, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i217 = getelementptr i8, ptr %21, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i217, i8 %19) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i219 = getelementptr i8, ptr %23, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i219, i8 83) #8, !srcloc !158
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i221 = getelementptr i8, ptr %25, i32 33749
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i221) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %27 = and i8 %26, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i223 = getelementptr i8, ptr %29, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i223, i8 %27) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i225 = getelementptr i8, ptr %31, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i225, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i227 = getelementptr i8, ptr %33, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i227, i8 %10) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i229 = getelementptr i8, ptr %35, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i229, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %37, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i231, i8 %18) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i233 = getelementptr i8, ptr %39, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i233, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %41, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i235, i8 %10) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i237 = getelementptr i8, ptr %43, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i237, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i239 = getelementptr i8, ptr %45, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i239, i8 %18) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %47, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i241, i8 8) #8, !srcloc !158
  %SR08 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 7
  %48 = ptrtoint ptr %SR08 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %SR08, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i243 = getelementptr i8, ptr %51, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i243, i8 %49) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i245 = getelementptr i8, ptr %53, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i245, i8 6) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i247 = getelementptr i8, ptr %55, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i247, i8 49) #8, !srcloc !158
  %CR31 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 20
  %56 = ptrtoint ptr %CR31 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %CR31, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i249 = getelementptr i8, ptr %59, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i249, i8 %57) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %61, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i251, i8 50) #8, !srcloc !158
  %CR32 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 21
  %62 = ptrtoint ptr %CR32 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %CR32, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i253 = getelementptr i8, ptr %65, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i253, i8 %63) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i255 = getelementptr i8, ptr %67, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i255, i8 52) #8, !srcloc !158
  %CR34 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 23
  %68 = ptrtoint ptr %CR34 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %CR34, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %70 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i257 = getelementptr i8, ptr %71, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i257, i8 %69) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i259 = getelementptr i8, ptr %73, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i259, i8 54) #8, !srcloc !158
  %CR36 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 24
  %74 = ptrtoint ptr %CR36 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %CR36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i261 = getelementptr i8, ptr %77, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i261, i8 %75) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i263 = getelementptr i8, ptr %79, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i263, i8 58) #8, !srcloc !158
  %CR3A = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 25
  %80 = ptrtoint ptr %CR3A to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %CR3A, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i265 = getelementptr i8, ptr %83, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i265, i8 %81) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %84 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i267 = getelementptr i8, ptr %85, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i267, i8 64) #8, !srcloc !158
  %CR40 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 28
  %86 = ptrtoint ptr %CR40 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %CR40, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i269 = getelementptr i8, ptr %89, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i269, i8 %87) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i271 = getelementptr i8, ptr %91, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i271, i8 66) #8, !srcloc !158
  %CR42 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 30
  %92 = ptrtoint ptr %CR42 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %CR42, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i273 = getelementptr i8, ptr %95, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i273, i8 %93) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i275 = getelementptr i8, ptr %97, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i275, i8 69) #8, !srcloc !158
  %CR45 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 32
  %98 = ptrtoint ptr %CR45 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %CR45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i277 = getelementptr i8, ptr %101, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i277, i8 %99) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i279 = getelementptr i8, ptr %103, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i279, i8 80) #8, !srcloc !158
  %CR50 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 33
  %104 = ptrtoint ptr %CR50 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %CR50, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i281 = getelementptr i8, ptr %107, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i281, i8 %105) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %108 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i283 = getelementptr i8, ptr %109, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i283, i8 81) #8, !srcloc !158
  %CR51 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 34
  %110 = ptrtoint ptr %CR51 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %CR51, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %112 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i285 = getelementptr i8, ptr %113, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i285, i8 %111) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i287 = getelementptr i8, ptr %115, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i287, i8 83) #8, !srcloc !158
  %CR53 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 35
  %116 = ptrtoint ptr %CR53 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %CR53, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %118 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i289 = getelementptr i8, ptr %119, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i289, i8 %117) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %121, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i291, i8 88) #8, !srcloc !158
  %CR58 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 37
  %122 = ptrtoint ptr %CR58 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %CR58, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i293 = getelementptr i8, ptr %125, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i293, i8 %123) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i295 = getelementptr i8, ptr %127, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i295, i8 96) #8, !srcloc !158
  %CR60 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 41
  %128 = ptrtoint ptr %CR60 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %CR60, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i297 = getelementptr i8, ptr %131, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i297, i8 %129) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %132 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i299 = getelementptr i8, ptr %133, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i299, i8 102) #8, !srcloc !158
  %CR66 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 44
  %134 = ptrtoint ptr %CR66 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %CR66, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %136 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i301 = getelementptr i8, ptr %137, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i301, i8 %135) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i303 = getelementptr i8, ptr %139, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i303, i8 103) #8, !srcloc !158
  %CR67 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 45
  %140 = ptrtoint ptr %CR67 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %CR67, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %142 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %143, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i305, i8 %141) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i307 = getelementptr i8, ptr %145, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i307, i8 104) #8, !srcloc !158
  %CR68 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 46
  %146 = ptrtoint ptr %CR68 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %CR68, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i309 = getelementptr i8, ptr %149, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i309, i8 %147) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %150 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i311 = getelementptr i8, ptr %151, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i311, i8 105) #8, !srcloc !158
  %CR69 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 47
  %152 = ptrtoint ptr %CR69 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %CR69, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %154 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i313 = getelementptr i8, ptr %155, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i313, i8 %153) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %156 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i315 = getelementptr i8, ptr %157, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i315, i8 111) #8, !srcloc !158
  %CR6F = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 49
  %158 = ptrtoint ptr %CR6F to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %CR6F, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i317 = getelementptr i8, ptr %161, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i317, i8 %159) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %162 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i319 = getelementptr i8, ptr %163, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i319, i8 51) #8, !srcloc !158
  %CR33 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 22
  %164 = ptrtoint ptr %CR33 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %CR33, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %166 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i321 = getelementptr i8, ptr %167, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i321, i8 %165) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %168 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i323 = getelementptr i8, ptr %169, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i323, i8 -122) #8, !srcloc !158
  %CR86 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 50
  %170 = ptrtoint ptr %CR86 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %CR86, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %172 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i325 = getelementptr i8, ptr %173, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i325, i8 %171) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %174 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i327 = getelementptr i8, ptr %175, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i327, i8 -120) #8, !srcloc !158
  %CR88 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 51
  %176 = ptrtoint ptr %CR88 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %CR88, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %178 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i329 = getelementptr i8, ptr %179, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i329, i8 %177) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %180 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i331 = getelementptr i8, ptr %181, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i331, i8 -112) #8, !srcloc !158
  %CR90 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 52
  %182 = ptrtoint ptr %CR90 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %CR90, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %184 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i333 = getelementptr i8, ptr %185, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i333, i8 %183) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %186 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i335 = getelementptr i8, ptr %187, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i335, i8 -111) #8, !srcloc !158
  %CR91 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 53
  %188 = ptrtoint ptr %CR91 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %CR91, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %190 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i337 = getelementptr i8, ptr %191, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i337, i8 %189) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %192 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i339 = getelementptr i8, ptr %193, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i339, i8 -80) #8, !srcloc !158
  %CRB0 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 54
  %194 = ptrtoint ptr %CRB0 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %CRB0, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %196 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i341 = getelementptr i8, ptr %197, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i341, i8 %195) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %198 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i343 = getelementptr i8, ptr %199, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i343, i8 59) #8, !srcloc !158
  %CR3B = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 26
  %200 = ptrtoint ptr %CR3B to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %CR3B, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %202 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i345 = getelementptr i8, ptr %203, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i345, i8 %201) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %204 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i347 = getelementptr i8, ptr %205, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i347, i8 60) #8, !srcloc !158
  %CR3C = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 27
  %206 = ptrtoint ptr %CR3C to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %CR3C, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %208 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i349 = getelementptr i8, ptr %209, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i349, i8 %207) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %210 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i351 = getelementptr i8, ptr %211, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i351, i8 67) #8, !srcloc !158
  %CR43 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 31
  %212 = ptrtoint ptr %CR43 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %CR43, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %214 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i353 = getelementptr i8, ptr %215, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i353, i8 %213) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %216 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i355 = getelementptr i8, ptr %217, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i355, i8 93) #8, !srcloc !158
  %CR5D = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 39
  %218 = ptrtoint ptr %CR5D to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %CR5D, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %220 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i357 = getelementptr i8, ptr %221, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i357, i8 %219) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %222 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i359 = getelementptr i8, ptr %223, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i359, i8 94) #8, !srcloc !158
  %CR5E = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 40
  %224 = ptrtoint ptr %CR5E to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %CR5E, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %226 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i361 = getelementptr i8, ptr %227, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i361, i8 %225) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %228 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i363 = getelementptr i8, ptr %229, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i363, i8 101) #8, !srcloc !158
  %CR65 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 43
  %230 = ptrtoint ptr %CR65 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %CR65, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %232 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i365 = getelementptr i8, ptr %233, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i365, i8 %231) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %234 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i367 = getelementptr i8, ptr %235, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i367, i8 14) #8, !srcloc !158
  %SR0E = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 8
  %236 = ptrtoint ptr %SR0E to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %SR0E, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %238 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i369 = getelementptr i8, ptr %239, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i369, i8 %237) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %240 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i371 = getelementptr i8, ptr %241, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i371, i8 15) #8, !srcloc !158
  %SR0F = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 9
  %242 = ptrtoint ptr %SR0F to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %SR0F, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %244 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i373 = getelementptr i8, ptr %245, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i373, i8 %243) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %246 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i375 = getelementptr i8, ptr %247, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i375, i8 16) #8, !srcloc !158
  %SR10 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 10
  %248 = ptrtoint ptr %SR10 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %SR10, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %250 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i377 = getelementptr i8, ptr %251, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i377, i8 %249) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %252 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i379 = getelementptr i8, ptr %253, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i379, i8 17) #8, !srcloc !158
  %SR11 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 11
  %254 = ptrtoint ptr %SR11 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %SR11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %256 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i381 = getelementptr i8, ptr %257, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i381, i8 %255) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %258 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i383 = getelementptr i8, ptr %259, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i383, i8 18) #8, !srcloc !158
  %SR12 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 12
  %260 = ptrtoint ptr %SR12 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %SR12, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %262 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i385 = getelementptr i8, ptr %263, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i385, i8 %261) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %264 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i387 = getelementptr i8, ptr %265, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i387, i8 19) #8, !srcloc !158
  %SR13 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 13
  %266 = ptrtoint ptr %SR13 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %SR13, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %268 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i389 = getelementptr i8, ptr %269, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i389, i8 %267) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %270 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i391 = getelementptr i8, ptr %271, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i391, i8 41) #8, !srcloc !158
  %SR29 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 16
  %272 = ptrtoint ptr %SR29 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %SR29, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %274 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i393 = getelementptr i8, ptr %275, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i393, i8 %273) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %276 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i395 = getelementptr i8, ptr %277, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i395, i8 21) #8, !srcloc !158
  %SR15 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 14
  %278 = ptrtoint ptr %SR15 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %SR15, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %280 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i397 = getelementptr i8, ptr %281, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i397, i8 %279) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %282 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i399 = getelementptr i8, ptr %283, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i399, i8 48) #8, !srcloc !158
  %SR30 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 17
  %284 = ptrtoint ptr %SR30 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %SR30, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %286 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i401 = getelementptr i8, ptr %287, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i401, i8 %285) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %288 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i403 = getelementptr i8, ptr %289, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i403, i8 24) #8, !srcloc !158
  %SR18 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 15
  %290 = ptrtoint ptr %SR18 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %SR18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %292 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i405 = getelementptr i8, ptr %293, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i405, i8 %291) #8, !srcloc !158
  %chip = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 1
  %294 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %295)
  %cmp = icmp eq i32 %295, 2
  br i1 %cmp, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0436 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %296 = trunc i32 %i.0436 to i8
  %conv12 = add i8 %296, 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %297 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i407 = getelementptr i8, ptr %298, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i407, i8 %conv12) #8, !srcloc !158
  %arrayidx = getelementptr %struct.savage_reg, ptr %reg, i32 0, i32 18, i32 %i.0436
  %299 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %301 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i409 = getelementptr i8, ptr %302, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i409, i8 %300) #8, !srcloc !158
  %inc = add nuw nsw i32 %i.0436, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %303 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i411 = getelementptr i8, ptr %304, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i411, i8 102) #8, !srcloc !158
  %305 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i413 = getelementptr i8, ptr %306, i32 33749
  %307 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i413) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %308 = or i8 %307, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %309 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i415 = getelementptr i8, ptr %310, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i415, i8 %308) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %311 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i417 = getelementptr i8, ptr %312, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i417, i8 58) #8, !srcloc !158
  %313 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i419 = getelementptr i8, ptr %314, i32 33749
  %315 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i419) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %316 = or i8 %315, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %317 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i421 = getelementptr i8, ptr %318, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i421, i8 %316) #8, !srcloc !158
  %319 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %320)
  %cmp22.not = icmp eq i32 %320, 2
  br i1 %cmp22.not, label %if.end.if.end25_crit_edge, label %if.then24

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %MMPR0 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 56
  %321 = ptrtoint ptr %MMPR0 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %MMPR0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #8
  %324 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %325, i32 33280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %323) #8, !srcloc !166
  %MMPR1 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 57
  %326 = ptrtoint ptr %MMPR1 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %MMPR1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %328 = tail call i32 @llvm.bswap.i32(i32 %327) #8
  %329 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i423 = getelementptr i8, ptr %330, i32 33284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 %328) #8, !srcloc !166
  %MMPR2 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 58
  %331 = ptrtoint ptr %MMPR2 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %MMPR2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #8
  %334 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i425 = getelementptr i8, ptr %335, i32 33288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 %333) #8, !srcloc !166
  %MMPR3 = getelementptr inbounds %struct.savage_reg, ptr %reg, i32 0, i32 59
  %336 = ptrtoint ptr %MMPR3 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %MMPR3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %338 = tail call i32 @llvm.bswap.i32(i32 %337) #8
  %339 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i427 = getelementptr i8, ptr %340, i32 33292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427, i32 %338) #8, !srcloc !166
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end.if.end25_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %341 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i429 = getelementptr i8, ptr %342, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i429, i8 58) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %343 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i431 = getelementptr i8, ptr %344, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i431, i8 %315) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %345 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i433 = getelementptr i8, ptr %346, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i433, i8 102) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %347 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i435 = getelementptr i8, ptr %348, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i435, i8 %307) #8, !srcloc !158
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @restore_vga(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vgaHWProtect(ptr nocapture noundef %par, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %mmio.i.i.i18 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  %0 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i19 = getelementptr i8, ptr %1, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i19, i8 1) #8
  %2 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i3.i20 = getelementptr i8, ptr %3, i32 33733
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i3.i20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i3.i = getelementptr i8, ptr %6, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i3.i, i8 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i3.i4.i = getelementptr i8, ptr %8, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i4.i, i8 1) #8, !srcloc !158
  %9 = or i8 %4, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %11, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i14, i8 1) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i3.i15 = getelementptr i8, ptr %13, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i15, i8 %9) #8, !srcloc !158
  %14 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i17 = getelementptr i8, ptr %15, i32 33754
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i17) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %18, i32 33728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i4.i, i8 0) #8, !srcloc !158
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i8 %4, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i22 = getelementptr i8, ptr %21, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i22, i8 1) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i3.i23 = getelementptr i8, ptr %23, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i23, i8 %19) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i3.i25 = getelementptr i8, ptr %25, i32 33732
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i3.i25, i8 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i3.i4.i26 = getelementptr i8, ptr %27, i32 33733
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i4.i26, i8 3) #8, !srcloc !158
  %28 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i.i28 = getelementptr i8, ptr %29, i32 33754
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i28) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %mmio.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i.i18, align 4
  %add.ptr.i.i4.i29 = getelementptr i8, ptr %32, i32 33728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i4.i29, i8 32) #8, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ 1, %if.then ]
  %33 = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 11
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savage_enable_mmio(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i.i = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 25
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 33731
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %3 = or i8 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %5, i32 33731
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i21, i8 %3) #8, !srcloc !158
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %7, i32 33740
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i23) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %9 = or i8 %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %11, i32 33730
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i25, i8 %9) #8, !srcloc !158
  %chip = getelementptr inbounds %struct.savagefb_par, ptr %par, i32 0, i32 1
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp ugt i32 %13, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %15, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i27, i8 64) #8, !srcloc !158
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %17, i32 33749
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i29) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %19 = or i8 %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %21, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i31, i8 %19) #8, !srcloc !158
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_mode(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_suspend(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @savagefb_suspend_late(ptr noundef %dev, [1 x i32] [i32 2])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %pm_state = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_state, align 8
  store i32 0, ptr %pm_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @console_lock() #8
  tail call fastcc void @savage_enable_mmio(ptr noundef %3)
  %call3 = tail call fastcc i32 @savage_init_hw(ptr noundef %3)
  %call4 = tail call i32 @savagefb_set_par(ptr noundef %1)
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 0) #8
  %call5 = tail call i32 @savagefb_blank(i32 noundef 0, ptr noundef %1)
  tail call void @console_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_freeze(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @savagefb_suspend_late(ptr noundef %dev, [1 x i32] [i32 1])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @savagefb_hibernate(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @savagefb_suspend_late(ptr noundef %dev, [1 x i32] [i32 4])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savagefb_suspend_late(ptr nocapture noundef %dev, [1 x i32] %mesg.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mesg.coerce.fca.0.extract = extractvalue [1 x i32] %mesg.coerce, 0
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mesg.coerce.fca.0.extract)
  %cmp = icmp eq i32 %mesg.coerce.fca.0.extract, 8
  %spec.select = select i1 %cmp, i32 1, i32 %mesg.coerce.fca.0.extract
  %pm_state = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %pm_state, align 8
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %5 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp5 = icmp eq i32 %spec.select, 1
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %entry
  tail call void @console_lock() #8
  tail call void @fb_set_suspend(ptr noundef %1, i32 noundef 1) #8
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fbops, align 4
  %fb_sync = getelementptr inbounds %struct.fb_ops, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %fb_sync to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb_sync, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end7.if.end12_crit_edge, label %if.then8

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 %9(ptr noundef %1) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end7.if.end12_crit_edge
  %call13 = tail call i32 @savagefb_blank(i32 noundef 4, ptr noundef %1)
  %save = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 4
  tail call fastcc void @savage_set_default_par(ptr noundef %3, ptr noundef %save)
  %chip.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp ugt i32 %11, 2
  br i1 %cmp.i, label %if.then.i, label %if.end12.savage_disable_mmio.exit_crit_edge

if.end12.savage_disable_mmio.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %savage_disable_mmio.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %mmio.i.i.i = getelementptr inbounds %struct.savagefb_par, ptr %3, i32 0, i32 25
  %12 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 33748
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 64) #8, !srcloc !158
  %14 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %15, i32 33749
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i6.i) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %17 = or i8 %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %19, i32 33749
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i8.i, i8 %17) #8, !srcloc !158
  br label %savage_disable_mmio.exit

savage_disable_mmio.exit:                         ; preds = %if.then.i, %if.end12.savage_disable_mmio.exit_crit_edge
  tail call void @console_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %savage_disable_mmio.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savagefb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %options, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.65) #8
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  store ptr %call3, ptr @mode_option, align 4
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.65) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !142, !144, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__initcall__kmod_savagefb__305_2561_savagefb_init6, !1, !"__initcall__kmod_savagefb__305_2561_savagefb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2561, i32 1}
!2 = !{ptr @__exitcall_savage_done, !3, !"__exitcall_savage_done", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2562, i32 1}
!4 = !{ptr @__param_mode_option, !5, !"__param_mode_option", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2564, i32 1}
!6 = !{ptr @__UNIQUE_ID_mode_optiontype306, !5, !"__UNIQUE_ID_mode_optiontype306", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_mode_option307, !8, !"__UNIQUE_ID_mode_option307", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2565, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2514, i32 14}
!11 = !{ptr @savagefb_driver, !12, !"savagefb_driver", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2513, i32 26}
!13 = !{ptr @savagefb_devices, !14, !"savagefb_devices", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2438, i32 35}
!15 = !{ptr @savagefb_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2182, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2188, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @savagefb_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @savagefb_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2234, i32 4}
!26 = !{ptr @savagefb_probe._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @savagefb_probe._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2287, i32 2}
!30 = !{ptr @savagefb_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @savagefb_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2301, i32 2}
!34 = !{ptr @savagefb_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @savagefb_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2058, i32 30}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2062, i32 30}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2066, i32 30}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2070, i32 30}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2074, i32 30}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2078, i32 30}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2082, i32 30}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2086, i32 30}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2090, i32 30}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2094, i32 30}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2098, i32 30}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2102, i32 30}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2106, i32 30}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2110, i32 30}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2114, i32 30}
!66 = !{ptr @savagefb_ops, !67, !"savagefb_ops", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1639, i32 28}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 424, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @SavageCalcClock._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @SavageCalcClock._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @SavageCalcClock._entry.31, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 428, i32 3}
!75 = !{ptr @SavageCalcClock._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1729, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @savage_map_mmio._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @savage_map_mmio._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1732, i32 3}
!83 = !{ptr @savage_map_mmio._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @savage_map_mmio._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @savage_init_hw.RamSavage3D, !86, !"RamSavage3D", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1811, i32 23}
!87 = !{ptr @savage_init_hw.RamSavage4, !88, !"RamSavage4", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1812, i32 23}
!89 = !{ptr @savage_init_hw.RamSavageMX, !90, !"RamSavageMX", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1813, i32 23}
!91 = !{ptr @savage_init_hw.RamSavageNB, !92, !"RamSavageNB", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1814, i32 23}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1887, i32 2}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @savage_init_hw._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @savage_init_hw._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1934, i32 2}
!100 = !{ptr @savage_init_hw._entry.40, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @savage_init_hw._entry_ptr.42, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1949, i32 4}
!104 = !{ptr @savage_init_hw._entry.43, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @savage_init_hw._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1971, i32 24}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1992, i32 18}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1994, i32 18}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1996, i32 18}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1999, i32 3}
!116 = !{ptr @savage_init_hw._entry.50, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @savage_init_hw._entry_ptr.52, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2009, i32 4}
!122 = !{ptr @savage_init_hw._entry.55, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @savage_init_hw._entry_ptr.57, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1776, i32 3}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @savage_map_video._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @savage_map_video._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1779, i32 3}
!131 = !{ptr @savage_map_video._entry.60, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @savage_map_video._entry_ptr.62, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @savagefb_var800x600x8, !134, !"savagefb_var800x600x8", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 1662, i32 39}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 930, i32 3}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @savagefb_check_var._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @savagefb_check_var._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @savagefb_pm_ops, !141, !"savagefb_pm_ops", i1 false, i1 false}
!141 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2427, i32 32}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 2540, i32 38}
!144 = !{ptr @__param_str_mode_option, !5, !"__param_str_mode_option", i1 false, i1 false}
!145 = !{ptr @mode_option, !146, !"mode_option", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/savage/savagefb_driver.c", i32 67, i32 14}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{i64 2156306030}
!158 = !{i64 6277125}
!159 = !{i64 6277520}
!160 = !{i64 2156304292}
!161 = !{i64 2156306476}
!162 = !{i64 6276702}
!163 = !{i64 6277740}
!164 = !{i64 2156305642}
!165 = !{i64 2156307044}
!166 = !{i64 6277322}
!167 = !{i64 2156310629}
!168 = !{i64 2156311165}
!169 = !{i64 2156311689}
!170 = !{i64 2156312267}
!171 = !{i64 2156312854}
!172 = !{i64 2156313390}
!173 = !{i64 2156313914}
!174 = !{i64 2156314492}
!175 = !{i64 2156315033}
!176 = !{i64 2156315604}
!177 = !{i64 2156316304}
