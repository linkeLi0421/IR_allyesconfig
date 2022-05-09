; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/pm2fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/pm2fb.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.anon.86 = type { i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.pm2fb_par = type { i32, ptr, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }

@__initcall__kmod_pm2fb__305_1805_pm2fb_init6 = internal global ptr @pm2fb_init, section ".initcall6.init", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pm2fb\00", [26 x i8] zeroinitializer }, align 32
@pm2fb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pm2fb_id_table, ptr @pm2fb_probe, ptr @pm2fb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lowhsync\00", [23 x i8] zeroinitializer }, align 32
@lowhsync = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lowvsync\00", [23 x i8] zeroinitializer }, align 32
@lowvsync = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hwcursor=\00", [22 x i8] zeroinitializer }, align 32
@hwcursor = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@nomtrr = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@noaccel = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm2fb_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 15623, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 15677, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 15677, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014pm2fb: Can't enable pdev: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pm2fb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/pm2fb.c\00", [36 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr = internal global ptr @pm2fb_probe._entry, section ".printk_index", align 4
@pm2fb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 3, i16 1, i16 1, i16 0, i32 0, i32 0, i32 0, i32 15, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Permedia2\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Permedia2v\00", [21 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm2fb regbase\00", [18 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.9, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014pm2fb: Can't reserve regbase.\0A\00", [63 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr.16 = internal global ptr @pm2fb_probe._entry.14, section ".printk_index", align 4
@pm2fb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014pm2fb: Can't remap %s register area.\0A\00", [56 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr.19 = internal global ptr @pm2fb_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm2fb smem\00", [21 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.9, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014pm2fb: Can't reserve smem.\0A\00", [34 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr.23 = internal global ptr @pm2fb_probe._entry.21, section ".printk_index", align 4
@pm2fb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.9, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014pm2fb: Can't ioremap smem area.\0A\00", [61 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr.26 = internal global ptr @pm2fb_probe._entry.24, section ".printk_index", align 4
@pm2fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm2fb_check_var, ptr @pm2fb_set_par, ptr @pm2fb_setcolreg, ptr null, ptr @pm2fb_blank, ptr @pm2fb_pan_display, ptr @pm2fb_fillrect, ptr @pm2fb_copyarea, ptr @pm2fb_imageblit, ptr @pm2fb_cursor, ptr @pm2fb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.9, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017disabling acceleration\0A\00", [38 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr.29 = internal global ptr @pm2fb_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480@60\00", [21 x i8] zeroinitializer }, align 32
@pm2fb_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.9, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016fb%d: %s frame buffer device, memory = %dK\0A\00", [50 x i8] zeroinitializer }, align 32
@pm2fb_probe._entry_ptr.33 = internal global ptr @pm2fb_probe._entry.31, section ".printk_index", align 4
@pp_table = internal constant { [33 x %struct.anon.86], [60 x i8] } { [33 x %struct.anon.86] [%struct.anon.86 { i16 32, i16 1 }, %struct.anon.86 { i16 64, i16 9 }, %struct.anon.86 { i16 96, i16 73 }, %struct.anon.86 { i16 128, i16 74 }, %struct.anon.86 { i16 160, i16 82 }, %struct.anon.86 { i16 192, i16 146 }, %struct.anon.86 { i16 224, i16 83 }, %struct.anon.86 { i16 256, i16 147 }, %struct.anon.86 { i16 288, i16 91 }, %struct.anon.86 { i16 320, i16 155 }, %struct.anon.86 { i16 384, i16 219 }, %struct.anon.86 { i16 416, i16 92 }, %struct.anon.86 { i16 448, i16 156 }, %struct.anon.86 { i16 512, i16 220 }, %struct.anon.86 { i16 544, i16 100 }, %struct.anon.86 { i16 576, i16 164 }, %struct.anon.86 { i16 640, i16 228 }, %struct.anon.86 { i16 768, i16 292 }, %struct.anon.86 { i16 800, i16 101 }, %struct.anon.86 { i16 832, i16 165 }, %struct.anon.86 { i16 896, i16 229 }, %struct.anon.86 { i16 1024, i16 293 }, %struct.anon.86 { i16 1056, i16 109 }, %struct.anon.86 { i16 1088, i16 173 }, %struct.anon.86 { i16 1152, i16 237 }, %struct.anon.86 { i16 1280, i16 301 }, %struct.anon.86 { i16 1536, i16 365 }, %struct.anon.86 { i16 1568, i16 110 }, %struct.anon.86 { i16 1600, i16 174 }, %struct.anon.86 { i16 1664, i16 238 }, %struct.anon.86 { i16 1792, i16 302 }, %struct.anon.86 { i16 2048, i16 366 }, %struct.anon.86 zeroinitializer], [60 x i8] zeroinitializer }, align 32
@cursor_bits_lookup = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00@\10P\04D\14T\01A\11Q\05E\15U", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 7, i64 9, i64 15623]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1797, i32 21 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"pm2fb_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1748, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1771, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1774, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"lowhsync\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1776, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"lowvsync\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1778, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"hwcursor\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 65, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1780, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1782, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 66, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"pm2fb_id_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1738, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1523, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"pm2fb_fix\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 103, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1538, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1542, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1561, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1563, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1569, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1630, i32 7 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1632, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1638, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"pm2fb_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1487, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1668, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1674, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant [10 x i8] c"pm2fb_var\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 116, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1688, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [9 x i8] c"pp_table\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 201, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"cursor_bits_lookup\00", align 1
@___asan_gen_.168 = private constant [31 x i8] c"../drivers/video/fbdev/pm2fb.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1255, i32 17 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__initcall__kmod_pm2fb__305_1805_pm2fb_init6, ptr @pm2fb_probe._entry, ptr @pm2fb_probe._entry.14, ptr @pm2fb_probe._entry.17, ptr @pm2fb_probe._entry.21, ptr @pm2fb_probe._entry.24, ptr @pm2fb_probe._entry.27, ptr @pm2fb_probe._entry.31, ptr @pm2fb_probe._entry_ptr, ptr @pm2fb_probe._entry_ptr.16, ptr @pm2fb_probe._entry_ptr.19, ptr @pm2fb_probe._entry_ptr.23, ptr @pm2fb_probe._entry_ptr.26, ptr @pm2fb_probe._entry_ptr.29, ptr @pm2fb_probe._entry_ptr.33, ptr @.str, ptr @pm2fb_driver, ptr @.str.1, ptr @.str.2, ptr @lowhsync, ptr @.str.3, ptr @lowvsync, ptr @.str.4, ptr @hwcursor, ptr @.str.5, ptr @nomtrr, ptr @.str.6, ptr @noaccel, ptr @mode_option, ptr @pm2fb_id_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pm2fb_fix, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @pm2fb_ops, ptr @.str.28, ptr @.str.30, ptr @pm2fb_var, ptr @.str.32, ptr @pp_table, ptr @cursor_bits_lookup], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowhsync to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowvsync to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwcursor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm2fb_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_table to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_bits_lookup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #9
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
  %call = call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef nonnull %option) #9
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
  call fastcc void @pm2fb_setup(ptr noundef %2) #12
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @pm2fb_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm2fb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
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
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #9
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @lowhsync, align 1
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(9) @.str.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @lowvsync, align 1
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(10) @.str.4, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call3, i32 9
  %call15 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #9
  store i32 %call15, ptr @hwcursor, align 4
  br label %while.cond.backedge

if.else16:                                        ; preds = %if.else11
  %call17 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.5, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nomtrr, align 1
  br label %while.cond.backedge

if.else20:                                        ; preds = %if.else16
  %call21 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.6, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @noaccel, align 1
  br label %while.cond.backedge

if.else24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else24, %if.then23, %if.then19, %if.then14, %if.then10, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call3 = tail call ptr @framebuffer_alloc(i32 noundef 96, ptr noundef %dev) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end6.sw.epilog_crit_edge [
    i16 15623, label %sw.bb
    i16 7, label %sw.bb8
    i16 9, label %sw.bb11
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  store i64 6077132932260179968, ptr @pm2fb_fix, align 8
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr @pm2fb_fix, ptr @.str.11, i32 10)
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr @pm2fb_fix, ptr @.str.12, i32 11)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11, %sw.bb8, %sw.bb
  %.sink = phi i32 [ 1, %sw.bb11 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end6.sw.epilog_crit_edge
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  store i32 65536, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 11), align 4
  %add = add i32 %9, 65536
  store i32 %add, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 10), align 8
  %call16 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %add, i32 noundef 65536, ptr noundef nonnull @.str.13, i32 noundef 0) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %err_exit_neither

if.end24:                                         ; preds = %sw.epilog
  %10 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 10), align 8
  %11 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 11), align 4
  %call25 = tail call ptr @ioremap(i32 noundef %10, i32 noundef %11) #9
  %v_regs = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %v_regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call25, ptr %v_regs, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @pm2fb_fix) #14
  %13 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 10), align 8
  %14 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %14) #9
  br label %err_exit_neither

if.end34:                                         ; preds = %if.end24
  %add.ptr.i = getelementptr i8, ptr %call25, i32 4160
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !93
  %mem_control = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %mem_control to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mem_control, align 4
  %17 = ptrtoint ptr %v_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %v_regs, align 4
  %add.ptr.i241 = getelementptr i8, ptr %18, i32 4224
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241) #9, !srcloc !93
  %boot_address = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %boot_address to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %boot_address, align 4
  %21 = ptrtoint ptr %v_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v_regs, align 4
  %add.ptr.i243 = getelementptr i8, ptr %22, i32 4288
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243) #9, !srcloc !93
  %mem_config = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %mem_config to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mem_config, align 4
  %25 = ptrtoint ptr %mem_control to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %land.lhs.true, label %if.end34.if.end80_crit_edge

if.end34.if.end80_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end34
  %27 = ptrtoint ptr %boot_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %boot_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %28)
  %cmp42 = icmp eq i32 %28, 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 631242751, i32 %23)
  %cmp46 = icmp eq i32 %23, 631242751
  %or.cond = select i1 %cmp42, i1 %cmp46, i1 false
  br i1 %or.cond, label %if.then48, label %land.lhs.true.if.end80_crit_edge

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then48:                                        ; preds = %land.lhs.true
  %memclock = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %memclock to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 83000, ptr %memclock, align 4
  %30 = ptrtoint ptr %mem_control to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mem_control, align 4
  %31 = ptrtoint ptr %boot_address to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %boot_address, align 4
  %32 = ptrtoint ptr %mem_config to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -436199391, ptr %mem_config, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %33 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4168, i16 %34)
  %cmp53 = icmp eq i16 %34, 4168
  br i1 %cmp53, label %land.lhs.true55, label %if.then48.if.end64_crit_edge

if.then48.if.end64_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true55:                                  ; preds = %if.then48
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %35 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2609, i16 %36)
  %cmp57 = icmp eq i16 %36, 2609
  br i1 %cmp57, label %if.then59, label %land.lhs.true55.if.end64thread-pre-split_crit_edge

land.lhs.true55.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64thread-pre-split

if.then59:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %memclock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 100000, ptr %memclock, align 4
  br label %if.end64thread-pre-split

if.end64thread-pre-split:                         ; preds = %if.then59, %land.lhs.true55.if.end64thread-pre-split_crit_edge
  %38 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %38)
  %.pr = load i16, ptr %subsystem_vendor, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64thread-pre-split, %if.then48.if.end64_crit_edge
  %39 = phi i16 [ %.pr, %if.end64thread-pre-split ], [ %34, %if.then48.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 15677, i16 %39)
  %cmp67 = icmp eq i16 %39, 15677
  br i1 %cmp67, label %land.lhs.true69, label %if.end64.if.end80_crit_edge

if.end64.if.end80_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true69:                                  ; preds = %if.end64
  %subsystem_device70 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %40 = ptrtoint ptr %subsystem_device70 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %subsystem_device70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %41)
  %cmp72 = icmp eq i16 %41, 256
  br i1 %cmp72, label %if.then74, label %land.lhs.true69.if.end80_crit_edge

land.lhs.true69.if.end80_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then74:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %memclock to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 74894, ptr %memclock, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %land.lhs.true69.if.end80_crit_edge, %if.end64.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %if.end34.if.end80_crit_edge
  %43 = ptrtoint ptr %mem_config to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mem_config, align 4
  %45 = lshr i32 %44, 8
  %switch.idx.mult = and i32 %45, 6291456
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 2097152
  store i32 %switch.offset, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 2), align 4
  %arrayidx88 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %46 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx88, align 8
  store i32 %47, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 1), align 8
  %call90 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %47, i32 noundef %switch.offset, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %do.end95, label %if.end98

do.end95:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %err_exit_mmio

if.end98:                                         ; preds = %if.end80
  %48 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 1), align 8
  %49 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 2), align 4
  %call99 = tail call ptr @ioremap_wc(i32 noundef %48, i32 noundef %49) #9
  %50 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 25
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call99, ptr %50, align 4
  %tobool100.not = icmp eq ptr %call99, null
  br i1 %tobool100.not, label %do.end104, label %if.end107

do.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  %52 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 1), align 8
  %53 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %52, i32 noundef %53) #9
  br label %err_exit_mmio

if.end107:                                        ; preds = %if.end98
  %.b237 = load i1, ptr @nomtrr, align 1
  br i1 %.b237, label %if.end107.if.end111_crit_edge, label %if.then109

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %wc_cookie = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %wc_cookie, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end107.if.end111_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 20
  %55 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @pm2fb_ops, ptr %fbops, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 7
  %56 = call ptr @memcpy(ptr %fix, ptr @pm2fb_fix, i32 68)
  %palette = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 7
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 27
  %57 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %palette, ptr %pseudo_palette, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 2
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9984, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3264, i32 noundef 6400) #15
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 10
  %60 = ptrtoint ptr %pixmap to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i, ptr %pixmap, align 4
  %tobool115.not = icmp eq ptr %call7.i, null
  br i1 %tobool115.not, label %if.end111.err_exit_pixmap_crit_edge, label %if.end117

if.end111.err_exit_pixmap_crit_edge:              ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_exit_pixmap

if.end117:                                        ; preds = %if.end111
  %size = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 10, i32 1
  %61 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6400, ptr %size, align 4
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 10, i32 3
  %62 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %buf_align, align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 10, i32 4
  %63 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %scan_align, align 4
  %access_align = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 10, i32 5
  %64 = ptrtoint ptr %access_align to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %access_align, align 4
  %flags123 = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 10, i32 6
  %65 = ptrtoint ptr %flags123 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %flags123, align 4
  %.b236238 = load i1, ptr @noaccel, align 1
  br i1 %.b236238, label %do.end128, label %if.end117.if.end134_crit_edge

if.end117.if.end134_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

do.end128:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %or = or i32 %67, 2
  store i32 %or, ptr %flags, align 4
  %68 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %scan_align, align 4
  br label %if.end134

if.end134:                                        ; preds = %do.end128, %if.end117.if.end134_crit_edge
  %69 = load ptr, ptr @mode_option, align 4
  %tobool135.not = icmp eq ptr %69, null
  br i1 %tobool135.not, label %if.then136, label %if.end134.if.end137_crit_edge

if.end134.if.end137_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @.str.30, ptr @mode_option, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end134.if.end137_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 6
  %70 = load ptr, ptr @mode_option, align 4
  %call138 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call3, ptr noundef %70, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #9
  %71 = zext i32 %call138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call138, label %if.end137.if.end144_crit_edge [
    i32 0, label %if.end137.if.then142_crit_edge
    i32 4, label %if.end137.if.then142_crit_edge245
  ]

if.end137.if.then142_crit_edge245:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then142

if.end137.if.then142_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then142

if.end137.if.end144_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end144

if.then142:                                       ; preds = %if.end137.if.then142_crit_edge, %if.end137.if.then142_crit_edge245
  %72 = call ptr @memcpy(ptr %var, ptr @pm2fb_var, i32 160)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.end137.if.end144_crit_edge
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 12
  %call145 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.end144.err_exit_both_crit_edge, label %if.end149

if.end144.err_exit_both_crit_edge:                ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_exit_both

if.end149:                                        ; preds = %if.end144
  %call150 = tail call i32 @register_framebuffer(ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %err_exit_all, label %do.end157

do.end157:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  %node = getelementptr inbounds %struct.fb_info, ptr %call3, i32 0, i32 1
  %73 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %node, align 4
  %75 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 2), align 4
  %div239 = lshr i32 %75, 10
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %74, ptr noundef %fix, i32 noundef %div239) #14
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call3, ptr %driver_data.i.i, align 4
  br label %cleanup

err_exit_all:                                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %err_exit_both

err_exit_both:                                    ; preds = %err_exit_all, %if.end144.err_exit_both_crit_edge
  %retval1.0 = phi i32 [ %call145, %if.end144.err_exit_both_crit_edge ], [ %call150, %err_exit_all ]
  %77 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %78) #9
  br label %err_exit_pixmap

err_exit_pixmap:                                  ; preds = %err_exit_both, %if.end111.err_exit_pixmap_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_exit_both ], [ -12, %if.end111.err_exit_pixmap_crit_edge ]
  %79 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %50, align 4
  tail call void @iounmap(ptr noundef %80) #9
  %81 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 1), align 8
  %82 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %81, i32 noundef %82) #9
  br label %err_exit_mmio

err_exit_mmio:                                    ; preds = %err_exit_pixmap, %do.end104, %do.end95
  %retval1.2 = phi i32 [ %retval1.1, %err_exit_pixmap ], [ -6, %do.end104 ], [ -6, %do.end95 ]
  %83 = ptrtoint ptr %v_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %v_regs, align 4
  tail call void @iounmap(ptr noundef %84) #9
  %85 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 10), align 8
  %86 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm2fb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %85, i32 noundef %86) #9
  br label %err_exit_neither

err_exit_neither:                                 ; preds = %err_exit_mmio, %do.end31, %do.end21
  %retval1.3 = phi i32 [ %retval1.2, %err_exit_mmio ], [ -6, %do.end31 ], [ -6, %do.end21 ]
  tail call void @framebuffer_release(ptr noundef nonnull %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %err_exit_neither, %do.end157, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval1.3, %err_exit_neither ], [ 0, %do.end157 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm2fb_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par2, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %6) #9
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef %10) #9
  %v_regs = getelementptr inbounds %struct.pm2fb_par, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %v_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v_regs, align 4
  tail call void @iounmap(ptr noundef %12) #9
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 10
  %13 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %15 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmio_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %16) #9
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %18) #9
  tail call void @framebuffer_release(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm2fb_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = add i32 %1, -8
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch = icmp ult i32 %3, 4
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %6 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp9.not = icmp eq i32 %5, %7
  br i1 %cmp9.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %10 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp13 = icmp ugt i32 %9, %11
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %11)
  %cmp18 = icmp ugt i32 %11, 2047
  br i1 %cmp18, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2047, ptr %yres_virtual, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %13 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %15 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vmode, align 4
  %and = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp25 = icmp eq i32 %and, 1
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %add = add i32 %5, 15
  %and30 = and i32 %add, -16
  %17 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and30, ptr %var, align 4
  %18 = add i32 %and30, -1601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1281, i32 %18)
  %19 = icmp ult i32 %18, -1281
  %20 = add i32 %9, -1201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %20)
  %21 = icmp ult i32 %20, -1001
  %or.cond = select i1 %19, i1 true, i1 %21
  br i1 %or.cond, label %if.end28.cleanup_crit_edge, label %if.end49

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end28
  %add34 = add i32 %1, 7
  %shr = lshr i32 %add34, 3
  %mul = mul i32 %and30, %shr
  %22 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yres_virtual, align 4
  %mul51 = mul i32 %mul, %23
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul51, i32 %25)
  %cmp52 = icmp ugt i32 %mul51, %25
  br i1 %cmp52, label %if.end49.cleanup_crit_edge, label %if.end55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %26 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4348, i32 %27)
  %cmp56 = icmp ult i32 %27, 4348
  br i1 %cmp56, label %if.end55.cleanup_crit_edge, label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %28 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %transp, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %length, align 4
  %30 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %3, label %if.end59.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb65
    i32 3, label %sw.bb78
    i32 2, label %sw.bb95
  ]

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %length62 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %length62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %length62, align 4
  %length63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %length63 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %length63, align 4
  br label %sw.epilog.sink.split

sw.bb65:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %red66 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %33 = ptrtoint ptr %red66 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 11, ptr %red66, align 4
  %length69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %34 = ptrtoint ptr %length69 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %length69, align 4
  %green70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %35 = ptrtoint ptr %green70 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %green70, align 4
  %length73 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %length73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %length73, align 4
  %blue74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %37 = ptrtoint ptr %blue74 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blue74, align 4
  br label %sw.epilog.sink.split

sw.bb78:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 24, ptr %transp, align 4
  %39 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %length, align 4
  %red83 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %40 = ptrtoint ptr %red83 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %red83, align 4
  %green85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %41 = ptrtoint ptr %green85 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %green85, align 4
  %blue87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %42 = ptrtoint ptr %blue87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %blue87, align 4
  %length90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %length90 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8, ptr %length90, align 4
  %length92 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %length92 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %length92, align 4
  br label %sw.epilog.sink.split

sw.bb95:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %red96 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %45 = ptrtoint ptr %red96 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %red96, align 4
  %blue98 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %46 = ptrtoint ptr %blue98 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %blue98, align 4
  %green100 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %47 = ptrtoint ptr %green100 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %green100, align 4
  %length103 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %length103 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %length103, align 4
  %length105 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %length105 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8, ptr %length105, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb95, %sw.bb78, %sw.bb65, %sw.bb
  %.sink = phi i32 [ 8, %sw.bb95 ], [ 8, %sw.bb78 ], [ 5, %sw.bb65 ], [ 8, %sw.bb ]
  %length107 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %length107 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink, ptr %length107, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end59.sw.epilog_crit_edge
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %51 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %52 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %width, align 4
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %53 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %accel_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end55.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %if.end49.cleanup_crit_edge ], [ -22, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_set_par(ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xres_virtual, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, -8
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %yres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  %add4 = add i32 %7, 7
  %and5 = and i32 %add4, -8
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %add8 = add i32 %9, 31
  %and9 = and i32 %add8, -32
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %v_regs.i.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !94
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %v_regs.i23.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v_regs.i23.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v_regs.i23.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not33.i = icmp sgt i32 %18, -1
  br i1 %tobool.not33.i, label %if.end.i.reset_card.exit_crit_edge, label %if.end.i.do.end4.i_crit_edge

if.end.i.do.end4.i_crit_edge:                     ; preds = %if.end.i
  br label %do.end4.i

if.end.i.reset_card.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_card.exit

do.end4.i:                                        ; preds = %do.end4.i.do.end4.i_crit_edge, %if.end.i.do.end4.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !97
  %19 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %v_regs.i23.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !93
  %tobool.not.i = icmp sgt i32 %21, -1
  br i1 %tobool.not.i, label %do.end4.i.reset_card.exit_crit_edge, label %do.end4.i.do.end4.i_crit_edge

do.end4.i.do.end4.i_crit_edge:                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4.i

do.end4.i.reset_card.exit_crit_edge:              ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_card.exit

reset_card.exit:                                  ; preds = %do.end4.i.reset_card.exit_crit_edge, %if.end.i.reset_card.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %23, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %mem_control.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %mem_control.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mem_control.i, align 4
  %26 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %27, i32 4160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %25) #9, !srcloc !94
  %boot_address.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %boot_address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %boot_address.i, align 4
  %30 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %31, i32 4224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %29) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %mem_config.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %mem_config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mem_config.i, align 4
  %34 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %35, i32 4288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %33) #9, !srcloc !94
  %36 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %37, i32 112
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i291) #9, !srcloc !93
  %and.i = and i32 %38, -7
  %39 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %40, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %and.i) #9, !srcloc !94
  %41 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %42, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 -1) #9, !srcloc !94
  %43 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %44, i32 4416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 -1) #9, !srcloc !94
  %45 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %46, i32 12408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #9, !srcloc !94
  %47 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %48, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 0) #9, !srcloc !94
  %49 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %50, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 0) #9, !srcloc !94
  %51 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %52, i32 32928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 0) #9, !srcloc !94
  %53 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %54, i32 37632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 262144) #9, !srcloc !94
  %55 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %56, i32 34952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 0) #9, !srcloc !94
  %57 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %58, i32 35016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 0) #9, !srcloc !94
  %59 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %60, i32 34944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 0) #9, !srcloc !94
  %61 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %62, i32 34960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 0) #9, !srcloc !94
  %63 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %64, i32 35464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 0) #9, !srcloc !94
  %65 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %66, i32 35472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 0) #9, !srcloc !94
  %67 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %68, i32 35504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 0) #9, !srcloc !94
  %69 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %70, i32 35000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 0) #9, !srcloc !94
  %71 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %72, i32 34848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 -1) #9, !srcloc !94
  %73 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %74, i32 35520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 -1) #9, !srcloc !94
  %75 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %76, i32 35536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 0) #9, !srcloc !94
  %77 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %78, i32 34840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 0) #9, !srcloc !94
  %79 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %80, i32 33184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 0) #9, !srcloc !94
  %81 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %82, i32 35232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 0) #9, !srcloc !94
  %83 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %84, i32 35208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 0) #9, !srcloc !94
  %85 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %86, i32 33664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 0) #9, !srcloc !94
  %87 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %88, i32 34416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 0) #9, !srcloc !94
  %89 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %90, i32 34424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 0) #9, !srcloc !94
  %91 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %92, i32 36608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 0) #9, !srcloc !94
  %93 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %94, i32 34784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 0) #9, !srcloc !94
  %95 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %96, i32 34432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 0) #9, !srcloc !94
  %97 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %98, i32 34448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 0) #9, !srcloc !94
  %99 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %100, i32 34832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 0) #9, !srcloc !94
  %101 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %102, i32 34856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 0) #9, !srcloc !94
  %103 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %104, i32 35848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 0) #9, !srcloc !94
  %105 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %106, i32 33152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 0) #9, !srcloc !94
  %107 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %108, i32 35840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 1024) #9, !srcloc !94
  %109 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %110, i32 16400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 255) #9, !srcloc !94
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %1, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %112, label %reset_card.exit.reset_config.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

reset_card.exit.reset_config.exit_crit_edge:      ; preds = %reset_card.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %reset_config.exit

sw.bb.i:                                          ; preds = %reset_card.exit
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %115, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 25) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %117, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %118 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i121.i = getelementptr i8, ptr %119, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i121.i, i32 6) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %120 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i122.i = getelementptr i8, ptr %121, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i122.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i124.i = getelementptr i8, ptr %123, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124.i, i32 30) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %124 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i125.i = getelementptr i8, ptr %125, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i125.i, i32 2) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %126 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i127.i = getelementptr i8, ptr %127, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i127.i, i32 64) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i128.i = getelementptr i8, ptr %129, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i128.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %130 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i130.i = getelementptr i8, ptr %131, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i130.i, i32 65) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %132 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i131.i = getelementptr i8, ptr %133, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i131.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i133.i = getelementptr i8, ptr %135, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i133.i, i32 66) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %136 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i134.i = getelementptr i8, ptr %137, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i134.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %138 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i136.i = getelementptr i8, ptr %139, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i136.i, i32 67) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i137.i = getelementptr i8, ptr %141, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i137.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %142 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i139.i = getelementptr i8, ptr %143, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i139.i, i32 68) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %144 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i140.i = getelementptr i8, ptr %145, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i140.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %reset_card.exit
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i142.i = getelementptr i8, ptr %147, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i142.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %148 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i143.i = getelementptr i8, ptr %149, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i143.i, i32 1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  tail call void @arm_heavy_mb() #9
  br label %reset_config.exit

reset_config.exit:                                ; preds = %sw.epilog.sink.split.i, %reset_card.exit.reset_config.exit_crit_edge
  %150 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i293 = getelementptr i8, ptr %151, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i293, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %reset_config.exit
  %i.010.i = phi i32 [ 256, %reset_config.exit ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %i.010.i, -1
  %152 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %153, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 0) #9, !srcloc !94
  %154 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %155, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #9, !srcloc !94
  %156 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %157, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #9, !srcloc !94
  %tobool.not.i294 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i294, label %clear_palette.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

clear_palette.exit:                               ; preds = %while.body.i
  %memclock = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 2
  %158 = ptrtoint ptr %memclock to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %memclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not = icmp eq i32 %159, 0
  br i1 %tobool.not, label %clear_palette.exit.if.end_crit_edge, label %if.then

clear_palette.exit.if.end_crit_edge:              ; preds = %clear_palette.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %clear_palette.exit
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %1, align 4
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %161, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb.i295
    i32 0, label %if.then.for.cond2.preheader.i.i_crit_edge
  ]

if.then.for.cond2.preheader.i.i_crit_edge:        ; preds = %if.then
  br label %for.cond2.preheader.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb.i295:                                       ; preds = %if.then
  %div38.i = lshr i32 %159, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc28.i.i.for.body.i.i_crit_edge, %sw.bb.i295
  %m.0.i = phi i8 [ 0, %sw.bb.i295 ], [ %m.3.i, %for.inc28.i.i.for.body.i.i_crit_edge ]
  %n.0.i = phi i8 [ 0, %sw.bb.i295 ], [ %n.3.i, %for.inc28.i.i.for.body.i.i_crit_edge ]
  %p.0.i = phi i8 [ 0, %sw.bb.i295 ], [ %p.3.i, %for.inc28.i.i.for.body.i.i_crit_edge ]
  %indvars.iv.i.i = phi i32 [ 1, %sw.bb.i295 ], [ %indvars.iv.next.i.i, %for.inc28.i.i.for.body.i.i_crit_edge ]
  %delta.058.i.i = phi i32 [ 1000, %sw.bb.i295 ], [ %delta.3.1.i.i, %for.inc28.i.i.for.body.i.i_crit_edge ]
  %indvars.iv.tr.i.i = trunc i32 %indvars.iv.i.i to i8
  %163 = shl i8 %indvars.iv.tr.i.i, 1
  %164 = or i8 %163, 1
  br label %for.cond6.preheader.i.i

for.cond6.preheader.i.i:                          ; preds = %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge, %for.body.i.i
  %m.1.i = phi i8 [ %m.0.i, %for.body.i.i ], [ %m.3.i, %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge ]
  %n.1.i = phi i8 [ %n.0.i, %for.body.i.i ], [ %n.3.i, %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge ]
  %p.1.i = phi i8 [ %p.0.i, %for.body.i.i ], [ %p.3.i, %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge ]
  %delta.156.i.i = phi i32 [ %delta.058.i.i, %for.body.i.i ], [ %delta.3.1.i.i, %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge ]
  %n.055.i.i = phi i8 [ %164, %for.body.i.i ], [ %inc26.i.i, %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge ]
  %conv13.i.i = zext i8 %n.055.i.i to i32
  %mul14.i.i = mul nuw nsw i32 %conv13.i.i, 7159
  %div.i.i = udiv i32 %mul14.i.i, %indvars.iv.i.i
  %sub.i.i = sub i32 %div.i.i, %delta.156.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %div38.i)
  %cmp16.i.i = icmp ult i32 %sub.i.i, %div38.i
  %add18.i.i = add i32 %div.i.i, %delta.156.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i.i, i32 %div38.i)
  %cmp19.i.i = icmp ugt i32 %add18.i.i, %div38.i
  %or.cond.i.i = and i1 %cmp16.i.i, %cmp19.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %for.cond6.preheader.i.i.for.inc.i.i_crit_edge

for.cond6.preheader.i.i.for.inc.i.i_crit_edge:    ; preds = %for.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %div38.i)
  %cmp21.i.i = icmp ult i32 %div.i.i, %div38.i
  %sub23.i.i = sub nsw i32 %div38.i, %div.i.i
  %sub24.i.i = sub nsw i32 %div.i.i, %div38.i
  %cond.i.i = select i1 %cmp21.i.i, i32 %sub23.i.i, i32 %sub24.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.cond6.preheader.i.i.for.inc.i.i_crit_edge
  %m.2.i = phi i8 [ %indvars.iv.tr.i.i, %if.then.i.i ], [ %m.1.i, %for.cond6.preheader.i.i.for.inc.i.i_crit_edge ]
  %n.2.i = phi i8 [ %n.055.i.i, %if.then.i.i ], [ %n.1.i, %for.cond6.preheader.i.i.for.inc.i.i_crit_edge ]
  %p.2.i = phi i8 [ 0, %if.then.i.i ], [ %p.1.i, %for.cond6.preheader.i.i.for.inc.i.i_crit_edge ]
  %delta.3.i.i = phi i32 [ %cond.i.i, %if.then.i.i ], [ %delta.156.i.i, %for.cond6.preheader.i.i.for.inc.i.i_crit_edge ]
  %mul14.1.i.i = mul nuw nsw i32 %conv13.i.i, 3579
  %div.1.i.i = udiv i32 %mul14.1.i.i, %indvars.iv.i.i
  %sub.1.i.i = sub i32 %div.1.i.i, %delta.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i.i, i32 %div38.i)
  %cmp16.1.i.i = icmp ult i32 %sub.1.i.i, %div38.i
  %add18.1.i.i = add i32 %div.1.i.i, %delta.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.1.i.i, i32 %div38.i)
  %cmp19.1.i.i = icmp ugt i32 %add18.1.i.i, %div38.i
  %or.cond.1.i.i = and i1 %cmp16.1.i.i, %cmp19.1.i.i
  br i1 %or.cond.1.i.i, label %if.then.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1.i.i, i32 %div38.i)
  %cmp21.1.i.i = icmp ult i32 %div.1.i.i, %div38.i
  %sub23.1.i.i = sub nsw i32 %div38.i, %div.1.i.i
  %sub24.1.i.i = sub nsw i32 %div.1.i.i, %div38.i
  %cond.1.i.i = select i1 %cmp21.1.i.i, i32 %sub23.1.i.i, i32 %sub24.1.i.i
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %m.3.i = phi i8 [ %indvars.iv.tr.i.i, %if.then.1.i.i ], [ %m.2.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %n.3.i = phi i8 [ %n.055.i.i, %if.then.1.i.i ], [ %n.2.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %p.3.i = phi i8 [ 1, %if.then.1.i.i ], [ %p.2.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %delta.3.1.i.i = phi i32 [ %cond.1.i.i, %if.then.1.i.i ], [ %delta.3.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %inc26.i.i = add i8 %n.055.i.i, 1
  %tobool.not.i.i = icmp eq i8 %inc26.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc28.i.i, label %for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge

for.inc.1.i.i.for.cond6.preheader.i.i_crit_edge:  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond6.preheader.i.i

for.inc28.i.i:                                    ; preds = %for.inc.1.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 128
  br i1 %exitcond.not.i.i, label %pm2v_mnp.exit.i, label %for.inc28.i.i.for.body.i.i_crit_edge

for.inc28.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

pm2v_mnp.exit.i:                                  ; preds = %for.inc28.i.i
  %165 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i297 = getelementptr i8, ptr %166, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i297, i32 2) #9, !srcloc !94
  %167 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i.i298 = getelementptr i8, ptr %168, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i298, i32 13) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %169 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i.i299 = getelementptr i8, ptr %170, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i299, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %conv.i = zext i8 %m.3.i to i32
  %171 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %172, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40.i, i32 14) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %173 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i41.i = getelementptr i8, ptr %174, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i41.i, i32 %conv.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %conv1.i = zext i8 %n.3.i to i32
  %175 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %176, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43.i, i32 15) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %177 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i44.i = getelementptr i8, ptr %178, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i44.i, i32 %conv1.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %conv2.i = zext i8 %p.3.i to i32
  %179 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i46.i = getelementptr i8, ptr %180, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46.i, i32 16) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i47.i = getelementptr i8, ptr %182, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i47.i, i32 %conv2.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %183 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %184, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i, i32 13) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %185 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i50.i = getelementptr i8, ptr %186, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i50.i, i32 1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %pm2v_mnp.exit.i
  %i.089.i = phi i32 [ 256, %pm2v_mnp.exit.i ], [ %dec.i301, %for.body.i.for.body.i_crit_edge ]
  %187 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i52.i = getelementptr i8, ptr %188, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52.i, i32 13) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %189 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %190, i32 16432
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #9, !srcloc !93
  %and.i300 = and i32 %191, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300)
  %tobool3.not.i = icmp ne i32 %and.i300, 0
  %dec.i301 = add nsw i32 %i.089.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i301)
  %tobool.not.i302 = icmp eq i32 %dec.i301, 0
  %or.cond.i = select i1 %tobool3.not.i, i1 true, i1 %tobool.not.i302
  br i1 %or.cond.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %193, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 0) #9, !srcloc !94
  br label %if.end

for.cond2.preheader.i.i:                          ; preds = %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge, %if.then.for.cond2.preheader.i.i_crit_edge
  %m.4.i = phi i8 [ %m.10.i, %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge ], [ 0, %if.then.for.cond2.preheader.i.i_crit_edge ]
  %n.4.i = phi i8 [ %n.10.i, %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge ], [ 0, %if.then.for.cond2.preheader.i.i_crit_edge ]
  %p.4.i = phi i8 [ %p.10.i, %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge ], [ 0, %if.then.for.cond2.preheader.i.i_crit_edge ]
  %indvars.iv56.i.i = phi i32 [ %indvars.iv.next57.i.i, %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge ], [ 2, %if.then.for.cond2.preheader.i.i_crit_edge ]
  %delta.054.i.i = phi i32 [ %delta.4.i.i, %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge ], [ 100000, %if.then.for.cond2.preheader.i.i_crit_edge ]
  %194 = trunc i32 %indvars.iv56.i.i to i8
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc22.i.i.for.body3.i.i_crit_edge, %for.cond2.preheader.i.i
  %m.5.i = phi i8 [ %m.4.i, %for.cond2.preheader.i.i ], [ %m.10.i, %for.inc22.i.i.for.body3.i.i_crit_edge ]
  %n.5.i = phi i8 [ %n.4.i, %for.cond2.preheader.i.i ], [ %n.10.i, %for.inc22.i.i.for.body3.i.i_crit_edge ]
  %p.5.i = phi i8 [ %p.4.i, %for.cond2.preheader.i.i ], [ %p.10.i, %for.inc22.i.i.for.body3.i.i_crit_edge ]
  %indvars.iv.i55.i = phi i32 [ 2, %for.cond2.preheader.i.i ], [ %indvars.iv.next.i66.i, %for.inc22.i.i.for.body3.i.i_crit_edge ]
  %delta.152.i.i = phi i32 [ %delta.054.i.i, %for.cond2.preheader.i.i ], [ %delta.4.i.i, %for.inc22.i.i.for.body3.i.i_crit_edge ]
  %m.050.i.i = phi i8 [ 2, %for.cond2.preheader.i.i ], [ %inc23.i.i, %for.inc22.i.i.for.body3.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %indvars.iv.i55.i, 14318
  %div.i56.i = udiv i32 %mul.i.i, %indvars.iv56.i.i
  %195 = add nsw i32 %div.i56.i, -150000
  call void @__sanitizer_cov_trace_const_cmp4(i32 150001, i32 %195)
  %196 = icmp ult i32 %195, 150001
  br i1 %196, label %for.body14.preheader.i.i, label %for.body3.i.i.for.inc22.i.i_crit_edge

for.body3.i.i.for.inc22.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i

for.body14.preheader.i.i:                         ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i56.i, i32 %159)
  %cmp15.i.i = icmp ult i32 %div.i56.i, %159
  %sub.i57.i = sub i32 %159, %div.i56.i
  %sub17.i.i = sub i32 %div.i56.i, %159
  %cond.i58.i = select i1 %cmp15.i.i, i32 %sub.i57.i, i32 %sub17.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i58.i, i32 %delta.152.i.i)
  %cmp18.i.i = icmp slt i32 %cond.i58.i, %delta.152.i.i
  br i1 %cmp18.i.i, label %if.then20.i.i, label %for.body14.preheader.i.i.for.inc.i62.i_crit_edge

for.body14.preheader.i.i.for.inc.i62.i_crit_edge: ; preds = %for.body14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i62.i

if.then20.i.i:                                    ; preds = %for.body14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %197 = trunc i32 %indvars.iv.i55.i to i8
  br label %for.inc.i62.i

for.inc.i62.i:                                    ; preds = %if.then20.i.i, %for.body14.preheader.i.i.for.inc.i62.i_crit_edge
  %m.6.i = phi i8 [ %197, %if.then20.i.i ], [ %m.5.i, %for.body14.preheader.i.i.for.inc.i62.i_crit_edge ]
  %n.6.i = phi i8 [ %194, %if.then20.i.i ], [ %n.5.i, %for.body14.preheader.i.i.for.inc.i62.i_crit_edge ]
  %p.6.i = phi i8 [ 0, %if.then20.i.i ], [ %p.5.i, %for.body14.preheader.i.i.for.inc.i62.i_crit_edge ]
  %delta.3.i59.i = phi i32 [ %cond.i58.i, %if.then20.i.i ], [ %delta.152.i.i, %for.body14.preheader.i.i.for.inc.i62.i_crit_edge ]
  %shr.i.i = lshr i32 %div.i56.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %159)
  %cmp15.1.i.i = icmp ult i32 %shr.i.i, %159
  %sub.1.i60.i = sub i32 %159, %shr.i.i
  %sub17.1.i.i = sub i32 %shr.i.i, %159
  %cond.1.i61.i = select i1 %cmp15.1.i.i, i32 %sub.1.i60.i, i32 %sub17.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1.i61.i, i32 %delta.3.i59.i)
  %cmp18.1.i.i = icmp slt i32 %cond.1.i61.i, %delta.3.i59.i
  br i1 %cmp18.1.i.i, label %if.then20.1.i.i, label %for.inc.i62.i.for.inc.1.i64.i_crit_edge

for.inc.i62.i.for.inc.1.i64.i_crit_edge:          ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i64.i

if.then20.1.i.i:                                  ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = trunc i32 %indvars.iv.i55.i to i8
  br label %for.inc.1.i64.i

for.inc.1.i64.i:                                  ; preds = %if.then20.1.i.i, %for.inc.i62.i.for.inc.1.i64.i_crit_edge
  %m.7.i = phi i8 [ %198, %if.then20.1.i.i ], [ %m.6.i, %for.inc.i62.i.for.inc.1.i64.i_crit_edge ]
  %n.7.i = phi i8 [ %194, %if.then20.1.i.i ], [ %n.6.i, %for.inc.i62.i.for.inc.1.i64.i_crit_edge ]
  %p.7.i = phi i8 [ 1, %if.then20.1.i.i ], [ %p.6.i, %for.inc.i62.i.for.inc.1.i64.i_crit_edge ]
  %delta.3.1.i63.i = phi i32 [ %cond.1.i61.i, %if.then20.1.i.i ], [ %delta.3.i59.i, %for.inc.i62.i.for.inc.1.i64.i_crit_edge ]
  %shr.1.i.i = lshr i32 %div.i56.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i.i, i32 %159)
  %cmp15.2.i.i = icmp ult i32 %shr.1.i.i, %159
  %sub.2.i.i = sub i32 %159, %shr.1.i.i
  %sub17.2.i.i = sub i32 %shr.1.i.i, %159
  %cond.2.i.i = select i1 %cmp15.2.i.i, i32 %sub.2.i.i, i32 %sub17.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2.i.i, i32 %delta.3.1.i63.i)
  %cmp18.2.i.i = icmp slt i32 %cond.2.i.i, %delta.3.1.i63.i
  br i1 %cmp18.2.i.i, label %if.then20.2.i.i, label %for.inc.1.i64.i.for.inc.2.i.i_crit_edge

for.inc.1.i64.i.for.inc.2.i.i_crit_edge:          ; preds = %for.inc.1.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

if.then20.2.i.i:                                  ; preds = %for.inc.1.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  %199 = trunc i32 %indvars.iv.i55.i to i8
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then20.2.i.i, %for.inc.1.i64.i.for.inc.2.i.i_crit_edge
  %m.8.i = phi i8 [ %199, %if.then20.2.i.i ], [ %m.7.i, %for.inc.1.i64.i.for.inc.2.i.i_crit_edge ]
  %n.8.i = phi i8 [ %194, %if.then20.2.i.i ], [ %n.7.i, %for.inc.1.i64.i.for.inc.2.i.i_crit_edge ]
  %p.8.i = phi i8 [ 2, %if.then20.2.i.i ], [ %p.7.i, %for.inc.1.i64.i.for.inc.2.i.i_crit_edge ]
  %delta.3.2.i.i = phi i32 [ %cond.2.i.i, %if.then20.2.i.i ], [ %delta.3.1.i63.i, %for.inc.1.i64.i.for.inc.2.i.i_crit_edge ]
  %shr.2.i.i = lshr i32 %div.i56.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i.i, i32 %159)
  %cmp15.3.i.i = icmp ult i32 %shr.2.i.i, %159
  %sub.3.i.i = sub i32 %159, %shr.2.i.i
  %sub17.3.i.i = sub i32 %shr.2.i.i, %159
  %cond.3.i.i = select i1 %cmp15.3.i.i, i32 %sub.3.i.i, i32 %sub17.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3.i.i, i32 %delta.3.2.i.i)
  %cmp18.3.i.i = icmp slt i32 %cond.3.i.i, %delta.3.2.i.i
  br i1 %cmp18.3.i.i, label %if.then20.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

if.then20.3.i.i:                                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %200 = trunc i32 %indvars.iv.i55.i to i8
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then20.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %m.9.i = phi i8 [ %200, %if.then20.3.i.i ], [ %m.8.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %n.9.i = phi i8 [ %194, %if.then20.3.i.i ], [ %n.8.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %p.9.i = phi i8 [ 3, %if.then20.3.i.i ], [ %p.8.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %delta.3.3.i.i = phi i32 [ %cond.3.i.i, %if.then20.3.i.i ], [ %delta.3.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %shr.3.i.i = lshr i32 %div.i56.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i.i, i32 %159)
  %cmp15.4.i.i = icmp ult i32 %shr.3.i.i, %159
  %sub.4.i.i = sub i32 %159, %shr.3.i.i
  %sub17.4.i.i = sub i32 %shr.3.i.i, %159
  %cond.4.i.i = select i1 %cmp15.4.i.i, i32 %sub.4.i.i, i32 %sub17.4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.4.i.i, i32 %delta.3.3.i.i)
  %cmp18.4.i.i = icmp slt i32 %cond.4.i.i, %delta.3.3.i.i
  br i1 %cmp18.4.i.i, label %if.then20.4.i.i, label %for.inc.3.i.i.for.inc22.i.i_crit_edge

for.inc.3.i.i.for.inc22.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i

if.then20.4.i.i:                                  ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %201 = trunc i32 %indvars.iv.i55.i to i8
  br label %for.inc22.i.i

for.inc22.i.i:                                    ; preds = %if.then20.4.i.i, %for.inc.3.i.i.for.inc22.i.i_crit_edge, %for.body3.i.i.for.inc22.i.i_crit_edge
  %m.10.i = phi i8 [ %201, %if.then20.4.i.i ], [ %m.9.i, %for.inc.3.i.i.for.inc22.i.i_crit_edge ], [ %m.5.i, %for.body3.i.i.for.inc22.i.i_crit_edge ]
  %n.10.i = phi i8 [ %194, %if.then20.4.i.i ], [ %n.9.i, %for.inc.3.i.i.for.inc22.i.i_crit_edge ], [ %n.5.i, %for.body3.i.i.for.inc22.i.i_crit_edge ]
  %p.10.i = phi i8 [ 4, %if.then20.4.i.i ], [ %p.9.i, %for.inc.3.i.i.for.inc22.i.i_crit_edge ], [ %p.5.i, %for.body3.i.i.for.inc22.i.i_crit_edge ]
  %delta.4.i.i = phi i32 [ %cond.4.i.i, %if.then20.4.i.i ], [ %delta.3.3.i.i, %for.inc.3.i.i.for.inc22.i.i_crit_edge ], [ %delta.152.i.i, %for.body3.i.i.for.inc22.i.i_crit_edge ]
  %inc23.i.i = add i8 %m.050.i.i, 1
  %tobool.not.i65.i = icmp eq i8 %inc23.i.i, 0
  %indvars.iv.next.i66.i = add nuw nsw i32 %indvars.iv.i55.i, 1
  br i1 %tobool.not.i65.i, label %for.inc25.i.i, label %for.inc22.i.i.for.body3.i.i_crit_edge

for.inc22.i.i.for.body3.i.i_crit_edge:            ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i.i

for.inc25.i.i:                                    ; preds = %for.inc22.i.i
  %indvars.iv.next57.i.i = add nuw nsw i32 %indvars.iv56.i.i, 1
  %exitcond.not.i67.i = icmp eq i32 %indvars.iv.next57.i.i, 15
  br i1 %exitcond.not.i67.i, label %pm2_mnp.exit.i, label %for.inc25.i.i.for.cond2.preheader.i.i_crit_edge

for.inc25.i.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %for.inc25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i.i

pm2_mnp.exit.i:                                   ; preds = %for.inc25.i.i
  %202 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %203, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69.i, i32 50) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %204 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i70.i = getelementptr i8, ptr %205, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i70.i, i32 6) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %conv5.i = zext i8 %m.10.i to i32
  %206 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i72.i = getelementptr i8, ptr %207, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72.i, i32 48) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %208 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i73.i = getelementptr i8, ptr %209, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i73.i, i32 %conv5.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %conv6.i = zext i8 %n.10.i to i32
  %210 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i75.i = getelementptr i8, ptr %211, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75.i, i32 49) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %212 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i76.i = getelementptr i8, ptr %213, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i76.i, i32 %conv6.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %214 = or i8 %p.10.i, 8
  %or.i = zext i8 %214 to i32
  %215 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i78.i = getelementptr i8, ptr %216, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78.i, i32 50) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %217 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i79.i = getelementptr i8, ptr %218, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i79.i, i32 %or.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %219 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %220, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81.i, i32 51) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %221 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i2.i82.i = getelementptr i8, ptr %222, i32 16464
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i82.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %pm2_mnp.exit.i
  %i.188.i = phi i32 [ 256, %pm2_mnp.exit.i ], [ %dec18.i, %for.body11.i.for.body11.i_crit_edge ]
  %224 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %225, i32 16464
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84.i) #9, !srcloc !93
  %and13.i = and i32 %226, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp ne i32 %and13.i, 0
  %dec18.i = add nsw i32 %i.188.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i)
  %tobool10.not.i = icmp eq i32 %dec18.i, 0
  %or.cond90.i = select i1 %tobool14.not.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond90.i, label %for.body11.i.if.end_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body11.i

for.body11.i.if.end_crit_edge:                    ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body11.i.if.end_crit_edge, %for.end.i, %if.then.if.end_crit_edge, %clear_palette.exit.if.end_crit_edge
  %227 = tail call i32 @llvm.umin.i32(i32 %and5, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %227)
  %cmp11 = icmp ugt i32 %227, 8
  br i1 %cmp11, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %229)
  %cmp12 = icmp eq i32 %229, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %230 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %cmp12, %lor.rhs ]
  %pixclock14 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %231 = ptrtoint ptr %pixclock14 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %pixclock14, align 4
  %div = udiv i32 1000000000, %232
  call void @__sanitizer_cov_trace_const_cmp4(i32 4348, i32 %232)
  %cmp15 = icmp ult i32 %232, 4348
  br i1 %cmp15, label %lor.end.cleanup_crit_edge, label %if.end17

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %lor.end
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %233 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %right_margin, align 4
  %235 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %227, label %if.end17.to3264.exit_crit_edge [
    i32 24, label %sw.bb.i303
    i32 8, label %if.end17.sw.bb1.i304_crit_edge
    i32 16, label %if.end17.sw.bb2.i_crit_edge
  ]

if.end17.sw.bb2.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end17.sw.bb1.i304_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i304

if.end17.to3264.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit

sw.bb.i303:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %234, 3
  br label %sw.bb1.i304

sw.bb1.i304:                                      ; preds = %sw.bb.i303, %if.end17.sw.bb1.i304_crit_edge
  %timing.addr.0.i = phi i32 [ %234, %if.end17.sw.bb1.i304_crit_edge ], [ %mul.i, %sw.bb.i303 ]
  %shr.i = lshr i32 %timing.addr.0.i, 1
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb1.i304, %if.end17.sw.bb2.i_crit_edge
  %timing.addr.1.i = phi i32 [ %234, %if.end17.sw.bb2.i_crit_edge ], [ %shr.i, %sw.bb1.i304 ]
  %shr3.i = lshr i32 %timing.addr.1.i, 1
  br label %to3264.exit

to3264.exit:                                      ; preds = %sw.bb2.i, %if.end17.to3264.exit_crit_edge
  %timing.addr.2.i = phi i32 [ %234, %if.end17.to3264.exit_crit_edge ], [ %shr3.i, %sw.bb2.i ]
  %shr4.i = zext i1 %230 to i32
  %spec.select.i = lshr i32 %timing.addr.2.i, %shr4.i
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %236 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %hsync_len, align 4
  %238 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %227, label %to3264.exit.to3264.exit316_crit_edge [
    i32 24, label %sw.bb.i306
    i32 8, label %to3264.exit.sw.bb1.i309_crit_edge
    i32 16, label %to3264.exit.sw.bb2.i312_crit_edge
  ]

to3264.exit.sw.bb2.i312_crit_edge:                ; preds = %to3264.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i312

to3264.exit.sw.bb1.i309_crit_edge:                ; preds = %to3264.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i309

to3264.exit.to3264.exit316_crit_edge:             ; preds = %to3264.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit316

sw.bb.i306:                                       ; preds = %to3264.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i305 = mul i32 %237, 3
  br label %sw.bb1.i309

sw.bb1.i309:                                      ; preds = %sw.bb.i306, %to3264.exit.sw.bb1.i309_crit_edge
  %timing.addr.0.i307 = phi i32 [ %237, %to3264.exit.sw.bb1.i309_crit_edge ], [ %mul.i305, %sw.bb.i306 ]
  %shr.i308 = lshr i32 %timing.addr.0.i307, 1
  br label %sw.bb2.i312

sw.bb2.i312:                                      ; preds = %sw.bb1.i309, %to3264.exit.sw.bb2.i312_crit_edge
  %timing.addr.1.i310 = phi i32 [ %237, %to3264.exit.sw.bb2.i312_crit_edge ], [ %shr.i308, %sw.bb1.i309 ]
  %shr3.i311 = lshr i32 %timing.addr.1.i310, 1
  br label %to3264.exit316

to3264.exit316:                                   ; preds = %sw.bb2.i312, %to3264.exit.to3264.exit316_crit_edge
  %timing.addr.2.i313 = phi i32 [ %237, %to3264.exit.to3264.exit316_crit_edge ], [ %shr3.i311, %sw.bb2.i312 ]
  %spec.select.i315 = lshr i32 %timing.addr.2.i313, %shr4.i
  %add21 = add i32 %spec.select.i315, %spec.select.i
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %239 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %left_margin, align 4
  %241 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %227, label %to3264.exit316.to3264.exit328_crit_edge [
    i32 24, label %sw.bb.i318
    i32 8, label %to3264.exit316.sw.bb1.i321_crit_edge
    i32 16, label %to3264.exit316.sw.bb2.i324_crit_edge
  ]

to3264.exit316.sw.bb2.i324_crit_edge:             ; preds = %to3264.exit316
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i324

to3264.exit316.sw.bb1.i321_crit_edge:             ; preds = %to3264.exit316
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i321

to3264.exit316.to3264.exit328_crit_edge:          ; preds = %to3264.exit316
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit328

sw.bb.i318:                                       ; preds = %to3264.exit316
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i317 = mul i32 %240, 3
  br label %sw.bb1.i321

sw.bb1.i321:                                      ; preds = %sw.bb.i318, %to3264.exit316.sw.bb1.i321_crit_edge
  %timing.addr.0.i319 = phi i32 [ %240, %to3264.exit316.sw.bb1.i321_crit_edge ], [ %mul.i317, %sw.bb.i318 ]
  %shr.i320 = lshr i32 %timing.addr.0.i319, 1
  br label %sw.bb2.i324

sw.bb2.i324:                                      ; preds = %sw.bb1.i321, %to3264.exit316.sw.bb2.i324_crit_edge
  %timing.addr.1.i322 = phi i32 [ %240, %to3264.exit316.sw.bb2.i324_crit_edge ], [ %shr.i320, %sw.bb1.i321 ]
  %shr3.i323 = lshr i32 %timing.addr.1.i322, 1
  br label %to3264.exit328

to3264.exit328:                                   ; preds = %sw.bb2.i324, %to3264.exit316.to3264.exit328_crit_edge
  %timing.addr.2.i325 = phi i32 [ %240, %to3264.exit316.to3264.exit328_crit_edge ], [ %shr3.i323, %sw.bb2.i324 ]
  %spec.select.i327 = lshr i32 %timing.addr.2.i325, %shr4.i
  %add24 = add i32 %spec.select.i327, %add21
  %242 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %227, label %to3264.exit328.to3264.exit340_crit_edge [
    i32 24, label %sw.bb.i330
    i32 8, label %to3264.exit328.sw.bb1.i333_crit_edge
    i32 16, label %to3264.exit328.sw.bb2.i336_crit_edge
  ]

to3264.exit328.sw.bb2.i336_crit_edge:             ; preds = %to3264.exit328
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i336

to3264.exit328.sw.bb1.i333_crit_edge:             ; preds = %to3264.exit328
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i333

to3264.exit328.to3264.exit340_crit_edge:          ; preds = %to3264.exit328
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit340

sw.bb.i330:                                       ; preds = %to3264.exit328
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i329 = mul i32 %and9, 3
  br label %sw.bb1.i333

sw.bb1.i333:                                      ; preds = %sw.bb.i330, %to3264.exit328.sw.bb1.i333_crit_edge
  %timing.addr.0.i331 = phi i32 [ %and9, %to3264.exit328.sw.bb1.i333_crit_edge ], [ %mul.i329, %sw.bb.i330 ]
  %shr.i332 = lshr i32 %timing.addr.0.i331, 1
  br label %sw.bb2.i336

sw.bb2.i336:                                      ; preds = %sw.bb1.i333, %to3264.exit328.sw.bb2.i336_crit_edge
  %timing.addr.1.i334 = phi i32 [ %and9, %to3264.exit328.sw.bb2.i336_crit_edge ], [ %shr.i332, %sw.bb1.i333 ]
  %shr3.i335 = lshr i32 %timing.addr.1.i334, 1
  br label %to3264.exit340

to3264.exit340:                                   ; preds = %sw.bb2.i336, %to3264.exit328.to3264.exit340_crit_edge
  %timing.addr.2.i337 = phi i32 [ %and9, %to3264.exit328.to3264.exit340_crit_edge ], [ %shr3.i335, %sw.bb2.i336 ]
  %spec.select.i339 = lshr i32 %timing.addr.2.i337, %shr4.i
  %add26 = add i32 %add24, -1
  %sub = add i32 %add26, %spec.select.i339
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %243 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %lower_margin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool28.not = icmp eq i32 %244, 0
  %sub32 = add i32 %244, -1
  %spec.select288 = select i1 %tobool28.not, i32 0, i32 %sub32
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %245 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %vsync_len, align 4
  %add39 = add i32 %246, %244
  %sub40 = add i32 %add39, -1
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %247 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %upper_margin, align 4
  %add47 = add i32 %add39, %248
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %249 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %yres, align 4
  %add49 = add i32 %add47, -1
  %sub50 = add i32 %add49, %250
  %251 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %227, label %to3264.exit340.to3264.exit351_crit_edge [
    i32 24, label %sw.bb.i342
    i32 8, label %to3264.exit340.sw.bb1.i345_crit_edge
    i32 16, label %to3264.exit340.sw.bb2.i348_crit_edge
  ]

to3264.exit340.sw.bb2.i348_crit_edge:             ; preds = %to3264.exit340
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i348

to3264.exit340.sw.bb1.i345_crit_edge:             ; preds = %to3264.exit340
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i345

to3264.exit340.to3264.exit351_crit_edge:          ; preds = %to3264.exit340
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit351

sw.bb.i342:                                       ; preds = %to3264.exit340
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i341 = mul i32 %and, 3
  br label %sw.bb1.i345

sw.bb1.i345:                                      ; preds = %sw.bb.i342, %to3264.exit340.sw.bb1.i345_crit_edge
  %timing.addr.0.i343 = phi i32 [ %and, %to3264.exit340.sw.bb1.i345_crit_edge ], [ %mul.i341, %sw.bb.i342 ]
  %shr.i344 = lshr i32 %timing.addr.0.i343, 1
  br label %sw.bb2.i348

sw.bb2.i348:                                      ; preds = %sw.bb1.i345, %to3264.exit340.sw.bb2.i348_crit_edge
  %timing.addr.1.i346 = phi i32 [ %and, %to3264.exit340.sw.bb2.i348_crit_edge ], [ %shr.i344, %sw.bb1.i345 ]
  %shr3.i347 = lshr i32 %timing.addr.1.i346, 1
  br label %to3264.exit351

to3264.exit351:                                   ; preds = %sw.bb2.i348, %to3264.exit340.to3264.exit351_crit_edge
  %timing.addr.2.i349 = phi i32 [ %and, %to3264.exit340.to3264.exit351_crit_edge ], [ %shr3.i347, %sw.bb2.i348 ]
  %spec.select.i350 = lshr i32 %timing.addr.2.i349, 1
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %252 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %yoffset, align 4
  %mul = mul i32 %253, %and9
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %254 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %xoffset, align 4
  %add54 = add i32 %mul, %255
  %256 = zext i32 %227 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %227, label %to3264.exit351.to3264.exit362_crit_edge [
    i32 24, label %sw.bb.i353
    i32 8, label %to3264.exit351.sw.bb1.i356_crit_edge
    i32 16, label %to3264.exit351.sw.bb2.i359_crit_edge
  ]

to3264.exit351.sw.bb2.i359_crit_edge:             ; preds = %to3264.exit351
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i359

to3264.exit351.sw.bb1.i356_crit_edge:             ; preds = %to3264.exit351
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i356

to3264.exit351.to3264.exit362_crit_edge:          ; preds = %to3264.exit351
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit362

sw.bb.i353:                                       ; preds = %to3264.exit351
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i352 = mul i32 %add54, 3
  br label %sw.bb1.i356

sw.bb1.i356:                                      ; preds = %sw.bb.i353, %to3264.exit351.sw.bb1.i356_crit_edge
  %timing.addr.0.i354 = phi i32 [ %add54, %to3264.exit351.sw.bb1.i356_crit_edge ], [ %mul.i352, %sw.bb.i353 ]
  %shr.i355 = lshr i32 %timing.addr.0.i354, 1
  br label %sw.bb2.i359

sw.bb2.i359:                                      ; preds = %sw.bb1.i356, %to3264.exit351.sw.bb2.i359_crit_edge
  %timing.addr.1.i357 = phi i32 [ %add54, %to3264.exit351.sw.bb2.i359_crit_edge ], [ %shr.i355, %sw.bb1.i356 ]
  %shr3.i358 = lshr i32 %timing.addr.1.i357, 1
  br label %to3264.exit362

to3264.exit362:                                   ; preds = %sw.bb2.i359, %to3264.exit351.to3264.exit362_crit_edge
  %timing.addr.2.i360 = phi i32 [ %add54, %to3264.exit351.to3264.exit362_crit_edge ], [ %shr3.i358, %sw.bb2.i359 ]
  %spec.select.i361 = lshr i32 %timing.addr.2.i360, 1
  %video.0 = select i1 %230, i32 65536, i32 0
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %257 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %sync, align 4
  %and60 = and i32 %258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %to3264.exit362.if.end71_crit_edge, label %if.then62

to3264.exit362.if.end71_crit_edge:                ; preds = %to3264.exit362
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then62:                                        ; preds = %to3264.exit362
  call void @__sanitizer_cov_trace_pc() #11
  %.b287 = load i1, ptr @lowhsync, align 1
  %. = select i1 %.b287, i32 24, i32 8
  br label %if.end71

if.end71:                                         ; preds = %if.then62, %to3264.exit362.if.end71_crit_edge
  %.sink = phi i32 [ %., %if.then62 ], [ 24, %to3264.exit362.if.end71_crit_edge ]
  %or66 = or i32 %video.0, %.sink
  %and74 = and i32 %258, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end71.if.end86_crit_edge, label %if.then76

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %.b284286 = load i1, ptr @lowvsync, align 1
  %.601 = select i1 %.b284286, i32 96, i32 32
  br label %if.end86

if.end86:                                         ; preds = %if.then76, %if.end71.if.end86_crit_edge
  %.sink600 = phi i32 [ %.601, %if.then76 ], [ 96, %if.end71.if.end86_crit_edge ]
  %or80 = or i32 %or66, %.sink600
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %259 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %vmode, align 4
  %trunc = trunc i32 %260 to i8
  %261 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %261, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %trunc, label %if.end86.if.end99_crit_edge [
    i8 1, label %if.end86.cleanup_crit_edge
    i8 2, label %if.then97
  ]

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end86.if.end99_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then97:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %or98 = or i32 %or80, 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end86.if.end99_crit_edge
  %video.3 = phi i32 [ %or98, %if.then97 ], [ %or80, %if.end86.if.end99_crit_edge ]
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %262 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %activate, align 4
  %and101 = and i32 %263, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %cmp102 = icmp eq i32 %and101, 0
  %or104 = zext i1 %cmp102 to i32
  %spec.select289 = or i32 %video.3, %or104
  %video106 = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 3
  %264 = ptrtoint ptr %video106 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %spec.select289, ptr %video106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %227)
  %cmp107 = icmp eq i32 %227, 8
  %cond108 = select i1 %cmp107, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %265 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %cond108, ptr %visual, align 4
  %266 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %var, align 4
  %mul111 = mul i32 %267, %227
  %div112285 = lshr exact i32 %mul111, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %268 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %div112285, ptr %line_length, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %269 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 256, ptr %len, align 4
  %270 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %271)
  %cmp115 = icmp eq i32 %271, 1
  br i1 %cmp115, label %if.then116, label %if.end99.if.end117_crit_edge

if.end99.if.end117_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end117

if.then116:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %272 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i = getelementptr i8, ptr %273, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !94
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end99.if.end117_crit_edge
  %274 = add nsw i32 %227, -8
  %275 = lshr exact i32 %274, 3
  %276 = zext i32 %275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %275, label %if.end117.set_aperture.exit_crit_edge [
    i32 2, label %if.end117.sw.bb.i365_crit_edge
    i32 0, label %if.end117.sw.bb.i365_crit_edge602
    i32 1, label %sw.bb1.i367
    i32 3, label %sw.bb2.i369
  ]

if.end117.sw.bb.i365_crit_edge602:                ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i365

if.end117.sw.bb.i365_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i365

if.end117.set_aperture.exit_crit_edge:            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_aperture.exit

sw.bb.i365:                                       ; preds = %if.end117.sw.bb.i365_crit_edge, %if.end117.sw.bb.i365_crit_edge602
  %277 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i364 = getelementptr i8, ptr %278, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i364, i32 0) #9, !srcloc !94
  br label %set_aperture.exit

sw.bb1.i367:                                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %279 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i7.i366 = getelementptr i8, ptr %280, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i366, i32 2) #9, !srcloc !94
  br label %set_aperture.exit

sw.bb2.i369:                                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %281 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i9.i368 = getelementptr i8, ptr %282, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i368, i32 1) #9, !srcloc !94
  br label %set_aperture.exit

set_aperture.exit:                                ; preds = %sw.bb2.i369, %sw.bb1.i367, %sw.bb.i365, %if.end117.set_aperture.exit_crit_edge
  %283 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %284, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %285 = zext i32 %275 to i64
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %275, label %set_aperture.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb118
    i32 3, label %sw.bb121
    i32 2, label %sw.bb124
  ]

set_aperture.exit.sw.epilog_crit_edge:            ; preds = %set_aperture.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %set_aperture.exit
  call void @__sanitizer_cov_trace_pc() #11
  %286 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i371 = getelementptr i8, ptr %287, i32 35536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i371, i32 0) #9, !srcloc !94
  br label %sw.epilog

sw.bb118:                                         ; preds = %set_aperture.exit
  call void @__sanitizer_cov_trace_pc() #11
  %288 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i373 = getelementptr i8, ptr %289, i32 35536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i373, i32 1) #9, !srcloc !94
  br label %sw.epilog

sw.bb121:                                         ; preds = %set_aperture.exit
  call void @__sanitizer_cov_trace_pc() #11
  %290 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i375 = getelementptr i8, ptr %291, i32 35536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i375, i32 2) #9, !srcloc !94
  br label %sw.epilog

sw.bb124:                                         ; preds = %set_aperture.exit
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i377 = getelementptr i8, ptr %293, i32 35536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i377, i32 4) #9, !srcloc !94
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb124, %sw.bb121, %sw.bb118, %sw.bb, %set_aperture.exit.sw.epilog_crit_edge
  %clrmode.0 = phi i32 [ 48, %set_aperture.exit.sw.epilog_crit_edge ], [ 185, %sw.bb124 ], [ 184, %sw.bb121 ], [ 182, %sw.bb118 ], [ 48, %sw.bb ]
  %txtmap.0 = phi i32 [ 0, %set_aperture.exit.sw.epilog_crit_edge ], [ 2097152, %sw.bb124 ], [ 1048576, %sw.bb121 ], [ 524288, %sw.bb118 ], [ 0, %sw.bb ]
  %pixsize.0 = phi i32 [ 0, %set_aperture.exit.sw.epilog_crit_edge ], [ 4, %sw.bb124 ], [ 2, %sw.bb121 ], [ 1, %sw.bb118 ], [ 0, %sw.bb ]
  %clrformat.0 = phi i32 [ 0, %set_aperture.exit.sw.epilog_crit_edge ], [ 32, %sw.bb124 ], [ 32, %sw.bb121 ], [ 112, %sw.bb118 ], [ 46, %sw.bb ]
  %misc.0 = phi i32 [ 1, %set_aperture.exit.sw.epilog_crit_edge ], [ 9, %sw.bb124 ], [ 9, %sw.bb121 ], [ 9, %sw.bb118 ], [ 1, %sw.bb ]
  %294 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i379 = getelementptr i8, ptr %295, i32 35512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i379, i32 1) #9, !srcloc !94
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %sw.epilog
  %i.0.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool.not.i380 = icmp eq i16 %297, 0
  %conv.i381 = zext i16 %297 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %conv.i381)
  %cmp.not.i = icmp eq i32 %and9, %conv.i381
  %or.cond.i382 = or i1 %tobool.not.i380, %cmp.not.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i382, label %partprod.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

partprod.exit:                                    ; preds = %for.cond.i
  %pp.i = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i, i32 1
  %298 = ptrtoint ptr %pp.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %pp.i, align 2
  %conv11.i = zext i16 %299 to i32
  %300 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i385 = getelementptr i8, ptr %301, i32 35456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i385, i32 %conv11.i) #9, !srcloc !94
  br label %for.cond.i393

for.cond.i393:                                    ; preds = %for.cond.i393.for.cond.i393_crit_edge, %partprod.exit
  %i.0.i386 = phi i32 [ 0, %partprod.exit ], [ %inc.i392, %for.cond.i393.for.cond.i393_crit_edge ]
  %arrayidx.i387 = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i386
  %302 = ptrtoint ptr %arrayidx.i387 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %arrayidx.i387, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %303)
  %tobool.not.i388 = icmp eq i16 %303, 0
  %conv.i389 = zext i16 %303 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %conv.i389)
  %cmp.not.i390 = icmp eq i32 %and9, %conv.i389
  %or.cond.i391 = or i1 %tobool.not.i388, %cmp.not.i390
  %inc.i392 = add nuw nsw i32 %i.0.i386, 1
  br i1 %or.cond.i391, label %partprod.exit397, label %for.cond.i393.for.cond.i393_crit_edge

for.cond.i393.for.cond.i393_crit_edge:            ; preds = %for.cond.i393
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i393

partprod.exit397:                                 ; preds = %for.cond.i393
  %pp.i394 = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i386, i32 1
  %304 = ptrtoint ptr %pp.i394 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %pp.i394, align 2
  %conv11.i395 = zext i16 %305 to i32
  %306 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i399 = getelementptr i8, ptr %307, i32 34944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 %conv11.i395) #9, !srcloc !94
  br label %for.cond.i407

for.cond.i407:                                    ; preds = %for.cond.i407.for.cond.i407_crit_edge, %partprod.exit397
  %i.0.i400 = phi i32 [ 0, %partprod.exit397 ], [ %inc.i406, %for.cond.i407.for.cond.i407_crit_edge ]
  %arrayidx.i401 = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i400
  %308 = ptrtoint ptr %arrayidx.i401 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %arrayidx.i401, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %309)
  %tobool.not.i402 = icmp eq i16 %309, 0
  %conv.i403 = zext i16 %309 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %conv.i403)
  %cmp.not.i404 = icmp eq i32 %and9, %conv.i403
  %or.cond.i405 = or i1 %tobool.not.i402, %cmp.not.i404
  %inc.i406 = add nuw nsw i32 %i.0.i400, 1
  br i1 %or.cond.i405, label %partprod.exit411, label %for.cond.i407.for.cond.i407_crit_edge

for.cond.i407.for.cond.i407_crit_edge:            ; preds = %for.cond.i407
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i407

partprod.exit411:                                 ; preds = %for.cond.i407
  %pp.i408 = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i400, i32 1
  %310 = ptrtoint ptr %pp.i408 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %pp.i408, align 2
  %conv11.i409 = zext i16 %311 to i32
  %or130 = or i32 %txtmap.0, %conv11.i409
  %312 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i413 = getelementptr i8, ptr %313, i32 34184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413, i32 %or130) #9, !srcloc !94
  %314 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i415 = getelementptr i8, ptr %315, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415, i32 %sub) #9, !srcloc !94
  %316 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i417 = getelementptr i8, ptr %317, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 %spec.select.i) #9, !srcloc !94
  %318 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i419 = getelementptr i8, ptr %319, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i419, i32 %add21) #9, !srcloc !94
  %320 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i421 = getelementptr i8, ptr %321, i32 12312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i421, i32 %add24) #9, !srcloc !94
  %322 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i423 = getelementptr i8, ptr %323, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 %add24) #9, !srcloc !94
  %324 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i425 = getelementptr i8, ptr %325, i32 12344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 %sub50) #9, !srcloc !94
  %326 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i427 = getelementptr i8, ptr %327, i32 12360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427, i32 %spec.select288) #9, !srcloc !94
  %328 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i429 = getelementptr i8, ptr %329, i32 12368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429, i32 %sub40) #9, !srcloc !94
  %330 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i431 = getelementptr i8, ptr %331, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i431, i32 %add47) #9, !srcloc !94
  %332 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i433 = getelementptr i8, ptr %333, i32 12296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 %spec.select.i350) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %334 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i435 = getelementptr i8, ptr %335, i32 33224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i435, i32 0) #9, !srcloc !94
  %shl = shl i32 %5, 16
  %or134 = or i32 %shl, %and
  %336 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i437 = getelementptr i8, ptr %337, i32 33176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i437, i32 %or134) #9, !srcloc !94
  %338 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i439 = getelementptr i8, ptr %339, i32 33152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i439, i32 2) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %340 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i441 = getelementptr i8, ptr %341, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i441, i32 %spec.select.i361) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  tail call fastcc void @set_video(ptr noundef %1, i32 noundef %spec.select289)
  %342 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %1, align 4
  %344 = zext i32 %343 to i64
  call void @__sanitizer_cov_trace_switch(i64 %344, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %343, label %partprod.exit411.sw.epilog146_crit_edge [
    i32 0, label %sw.bb142
    i32 1, label %sw.bb145
  ]

partprod.exit411.sw.epilog146_crit_edge:          ; preds = %partprod.exit411
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog146

sw.bb142:                                         ; preds = %partprod.exit411
  call void @__sanitizer_cov_trace_pc() #11
  %345 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i443 = getelementptr i8, ptr %346, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i443, i32 24) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %347 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i444 = getelementptr i8, ptr %348, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i444, i32 %clrmode.0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %cond144 = select i1 %cmp107, i32 0, i32 16
  %349 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i446 = getelementptr i8, ptr %350, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i446, i32 64) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %351 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i447 = getelementptr i8, ptr %352, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i447, i32 %cond144) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  br label %sw.epilog146thread-pre-split

sw.bb145:                                         ; preds = %partprod.exit411
  call void @__sanitizer_cov_trace_pc() #11
  %353 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i449 = getelementptr i8, ptr %354, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i449, i32 2) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %355 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i450 = getelementptr i8, ptr %356, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i450, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %357 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i452 = getelementptr i8, ptr %358, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i452, i32 3) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %359 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i453 = getelementptr i8, ptr %360, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i453, i32 %pixsize.0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %361 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i455 = getelementptr i8, ptr %362, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i455, i32 4) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %363 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i456 = getelementptr i8, ptr %364, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i456, i32 %clrformat.0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %365 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i458 = getelementptr i8, ptr %366, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i458, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %367 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i459 = getelementptr i8, ptr %368, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i459, i32 %misc.0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %369 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i461 = getelementptr i8, ptr %370, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i461, i32 13) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %371 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i462 = getelementptr i8, ptr %372, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i462, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  br label %sw.epilog146thread-pre-split

sw.epilog146thread-pre-split:                     ; preds = %sw.bb145, %sw.bb142
  tail call void @arm_heavy_mb() #9
  %373 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %373)
  %.pr = load i32, ptr %1, align 4
  br label %sw.epilog146

sw.epilog146:                                     ; preds = %sw.epilog146thread-pre-split, %partprod.exit411.sw.epilog146_crit_edge
  %374 = phi i32 [ %.pr, %sw.epilog146thread-pre-split ], [ %343, %partprod.exit411.sw.epilog146_crit_edge ]
  %375 = zext i32 %374 to i64
  call void @__sanitizer_cov_trace_switch(i64 %375, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %374, label %sw.epilog146.cleanup_crit_edge [
    i32 0, label %sw.epilog146.for.cond2.preheader.i.i468_crit_edge
    i32 1, label %sw.bb5.i
  ]

sw.epilog146.for.cond2.preheader.i.i468_crit_edge: ; preds = %sw.epilog146
  br label %for.cond2.preheader.i.i468

sw.epilog146.cleanup_crit_edge:                   ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond2.preheader.i.i468:                       ; preds = %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge, %sw.epilog146.for.cond2.preheader.i.i468_crit_edge
  %m.0.i463 = phi i8 [ %m.6.i533, %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge ], [ 0, %sw.epilog146.for.cond2.preheader.i.i468_crit_edge ]
  %n.0.i464 = phi i8 [ %n.6.i534, %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge ], [ 0, %sw.epilog146.for.cond2.preheader.i.i468_crit_edge ]
  %p.0.i465 = phi i8 [ %p.6.i535, %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge ], [ 0, %sw.epilog146.for.cond2.preheader.i.i468_crit_edge ]
  %indvars.iv56.i.i466 = phi i32 [ %indvars.iv.next57.i.i541, %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge ], [ 2, %sw.epilog146.for.cond2.preheader.i.i468_crit_edge ]
  %delta.054.i.i467 = phi i32 [ %delta.4.i.i536, %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge ], [ 100000, %sw.epilog146.for.cond2.preheader.i.i468_crit_edge ]
  %376 = trunc i32 %indvars.iv56.i.i466 to i8
  br label %for.body3.i.i477

for.body3.i.i477:                                 ; preds = %for.inc22.i.i540.for.body3.i.i477_crit_edge, %for.cond2.preheader.i.i468
  %m.1.i469 = phi i8 [ %m.0.i463, %for.cond2.preheader.i.i468 ], [ %m.6.i533, %for.inc22.i.i540.for.body3.i.i477_crit_edge ]
  %n.1.i470 = phi i8 [ %n.0.i464, %for.cond2.preheader.i.i468 ], [ %n.6.i534, %for.inc22.i.i540.for.body3.i.i477_crit_edge ]
  %p.1.i471 = phi i8 [ %p.0.i465, %for.cond2.preheader.i.i468 ], [ %p.6.i535, %for.inc22.i.i540.for.body3.i.i477_crit_edge ]
  %indvars.iv.i.i472 = phi i32 [ 2, %for.cond2.preheader.i.i468 ], [ %indvars.iv.next.i.i539, %for.inc22.i.i540.for.body3.i.i477_crit_edge ]
  %delta.152.i.i473 = phi i32 [ %delta.054.i.i467, %for.cond2.preheader.i.i468 ], [ %delta.4.i.i536, %for.inc22.i.i540.for.body3.i.i477_crit_edge ]
  %m.050.i.i474 = phi i8 [ 2, %for.cond2.preheader.i.i468 ], [ %inc23.i.i537, %for.inc22.i.i540.for.body3.i.i477_crit_edge ]
  %mul.i.i475 = mul nuw nsw i32 %indvars.iv.i.i472, 14318
  %div.i.i476 = udiv i32 %mul.i.i475, %indvars.iv56.i.i466
  %377 = add nsw i32 %div.i.i476, -150000
  call void @__sanitizer_cov_trace_const_cmp4(i32 150001, i32 %377)
  %378 = icmp ult i32 %377, 150001
  br i1 %378, label %for.body14.preheader.i.i483, label %for.body3.i.i477.for.inc22.i.i540_crit_edge

for.body3.i.i477.for.inc22.i.i540_crit_edge:      ; preds = %for.body3.i.i477
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i540

for.body14.preheader.i.i483:                      ; preds = %for.body3.i.i477
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i476, i32 %div)
  %cmp15.i.i478 = icmp ult i32 %div.i.i476, %div
  %sub.i.i479 = sub nsw i32 %div, %div.i.i476
  %sub17.i.i480 = sub nsw i32 %div.i.i476, %div
  %cond.i.i481 = select i1 %cmp15.i.i478, i32 %sub.i.i479, i32 %sub17.i.i480
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i481, i32 %delta.152.i.i473)
  %cmp18.i.i482 = icmp slt i32 %cond.i.i481, %delta.152.i.i473
  br i1 %cmp18.i.i482, label %if.then20.i.i484, label %for.body14.preheader.i.i483.for.inc.i.i495_crit_edge

for.body14.preheader.i.i483.for.inc.i.i495_crit_edge: ; preds = %for.body14.preheader.i.i483
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i495

if.then20.i.i484:                                 ; preds = %for.body14.preheader.i.i483
  call void @__sanitizer_cov_trace_pc() #11
  %379 = trunc i32 %indvars.iv.i.i472 to i8
  br label %for.inc.i.i495

for.inc.i.i495:                                   ; preds = %if.then20.i.i484, %for.body14.preheader.i.i483.for.inc.i.i495_crit_edge
  %m.2.i485 = phi i8 [ %379, %if.then20.i.i484 ], [ %m.1.i469, %for.body14.preheader.i.i483.for.inc.i.i495_crit_edge ]
  %n.2.i486 = phi i8 [ %376, %if.then20.i.i484 ], [ %n.1.i470, %for.body14.preheader.i.i483.for.inc.i.i495_crit_edge ]
  %p.2.i487 = phi i8 [ 0, %if.then20.i.i484 ], [ %p.1.i471, %for.body14.preheader.i.i483.for.inc.i.i495_crit_edge ]
  %delta.3.i.i488 = phi i32 [ %cond.i.i481, %if.then20.i.i484 ], [ %delta.152.i.i473, %for.body14.preheader.i.i483.for.inc.i.i495_crit_edge ]
  %shr.i.i489 = lshr i32 %div.i.i476, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i489, i32 %div)
  %cmp15.1.i.i490 = icmp ult i32 %shr.i.i489, %div
  %sub.1.i.i491 = sub nsw i32 %div, %shr.i.i489
  %sub17.1.i.i492 = sub nsw i32 %shr.i.i489, %div
  %cond.1.i.i493 = select i1 %cmp15.1.i.i490, i32 %sub.1.i.i491, i32 %sub17.1.i.i492
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1.i.i493, i32 %delta.3.i.i488)
  %cmp18.1.i.i494 = icmp slt i32 %cond.1.i.i493, %delta.3.i.i488
  br i1 %cmp18.1.i.i494, label %if.then20.1.i.i496, label %for.inc.i.i495.for.inc.1.i.i507_crit_edge

for.inc.i.i495.for.inc.1.i.i507_crit_edge:        ; preds = %for.inc.i.i495
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i507

if.then20.1.i.i496:                               ; preds = %for.inc.i.i495
  call void @__sanitizer_cov_trace_pc() #11
  %380 = trunc i32 %indvars.iv.i.i472 to i8
  br label %for.inc.1.i.i507

for.inc.1.i.i507:                                 ; preds = %if.then20.1.i.i496, %for.inc.i.i495.for.inc.1.i.i507_crit_edge
  %m.3.i497 = phi i8 [ %380, %if.then20.1.i.i496 ], [ %m.2.i485, %for.inc.i.i495.for.inc.1.i.i507_crit_edge ]
  %n.3.i498 = phi i8 [ %376, %if.then20.1.i.i496 ], [ %n.2.i486, %for.inc.i.i495.for.inc.1.i.i507_crit_edge ]
  %p.3.i499 = phi i8 [ 1, %if.then20.1.i.i496 ], [ %p.2.i487, %for.inc.i.i495.for.inc.1.i.i507_crit_edge ]
  %delta.3.1.i.i500 = phi i32 [ %cond.1.i.i493, %if.then20.1.i.i496 ], [ %delta.3.i.i488, %for.inc.i.i495.for.inc.1.i.i507_crit_edge ]
  %shr.1.i.i501 = lshr i32 %div.i.i476, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i.i501, i32 %div)
  %cmp15.2.i.i502 = icmp ult i32 %shr.1.i.i501, %div
  %sub.2.i.i503 = sub nsw i32 %div, %shr.1.i.i501
  %sub17.2.i.i504 = sub nsw i32 %shr.1.i.i501, %div
  %cond.2.i.i505 = select i1 %cmp15.2.i.i502, i32 %sub.2.i.i503, i32 %sub17.2.i.i504
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2.i.i505, i32 %delta.3.1.i.i500)
  %cmp18.2.i.i506 = icmp slt i32 %cond.2.i.i505, %delta.3.1.i.i500
  br i1 %cmp18.2.i.i506, label %if.then20.2.i.i508, label %for.inc.1.i.i507.for.inc.2.i.i519_crit_edge

for.inc.1.i.i507.for.inc.2.i.i519_crit_edge:      ; preds = %for.inc.1.i.i507
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i519

if.then20.2.i.i508:                               ; preds = %for.inc.1.i.i507
  call void @__sanitizer_cov_trace_pc() #11
  %381 = trunc i32 %indvars.iv.i.i472 to i8
  br label %for.inc.2.i.i519

for.inc.2.i.i519:                                 ; preds = %if.then20.2.i.i508, %for.inc.1.i.i507.for.inc.2.i.i519_crit_edge
  %m.4.i509 = phi i8 [ %381, %if.then20.2.i.i508 ], [ %m.3.i497, %for.inc.1.i.i507.for.inc.2.i.i519_crit_edge ]
  %n.4.i510 = phi i8 [ %376, %if.then20.2.i.i508 ], [ %n.3.i498, %for.inc.1.i.i507.for.inc.2.i.i519_crit_edge ]
  %p.4.i511 = phi i8 [ 2, %if.then20.2.i.i508 ], [ %p.3.i499, %for.inc.1.i.i507.for.inc.2.i.i519_crit_edge ]
  %delta.3.2.i.i512 = phi i32 [ %cond.2.i.i505, %if.then20.2.i.i508 ], [ %delta.3.1.i.i500, %for.inc.1.i.i507.for.inc.2.i.i519_crit_edge ]
  %shr.2.i.i513 = lshr i32 %div.i.i476, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i.i513, i32 %div)
  %cmp15.3.i.i514 = icmp ult i32 %shr.2.i.i513, %div
  %sub.3.i.i515 = sub nsw i32 %div, %shr.2.i.i513
  %sub17.3.i.i516 = sub nsw i32 %shr.2.i.i513, %div
  %cond.3.i.i517 = select i1 %cmp15.3.i.i514, i32 %sub.3.i.i515, i32 %sub17.3.i.i516
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3.i.i517, i32 %delta.3.2.i.i512)
  %cmp18.3.i.i518 = icmp slt i32 %cond.3.i.i517, %delta.3.2.i.i512
  br i1 %cmp18.3.i.i518, label %if.then20.3.i.i520, label %for.inc.2.i.i519.for.inc.3.i.i531_crit_edge

for.inc.2.i.i519.for.inc.3.i.i531_crit_edge:      ; preds = %for.inc.2.i.i519
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i531

if.then20.3.i.i520:                               ; preds = %for.inc.2.i.i519
  call void @__sanitizer_cov_trace_pc() #11
  %382 = trunc i32 %indvars.iv.i.i472 to i8
  br label %for.inc.3.i.i531

for.inc.3.i.i531:                                 ; preds = %if.then20.3.i.i520, %for.inc.2.i.i519.for.inc.3.i.i531_crit_edge
  %m.5.i521 = phi i8 [ %382, %if.then20.3.i.i520 ], [ %m.4.i509, %for.inc.2.i.i519.for.inc.3.i.i531_crit_edge ]
  %n.5.i522 = phi i8 [ %376, %if.then20.3.i.i520 ], [ %n.4.i510, %for.inc.2.i.i519.for.inc.3.i.i531_crit_edge ]
  %p.5.i523 = phi i8 [ 3, %if.then20.3.i.i520 ], [ %p.4.i511, %for.inc.2.i.i519.for.inc.3.i.i531_crit_edge ]
  %delta.3.3.i.i524 = phi i32 [ %cond.3.i.i517, %if.then20.3.i.i520 ], [ %delta.3.2.i.i512, %for.inc.2.i.i519.for.inc.3.i.i531_crit_edge ]
  %shr.3.i.i525 = lshr i32 %div.i.i476, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i.i525, i32 %div)
  %cmp15.4.i.i526 = icmp ult i32 %shr.3.i.i525, %div
  %sub.4.i.i527 = sub nsw i32 %div, %shr.3.i.i525
  %sub17.4.i.i528 = sub nsw i32 %shr.3.i.i525, %div
  %cond.4.i.i529 = select i1 %cmp15.4.i.i526, i32 %sub.4.i.i527, i32 %sub17.4.i.i528
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.4.i.i529, i32 %delta.3.3.i.i524)
  %cmp18.4.i.i530 = icmp slt i32 %cond.4.i.i529, %delta.3.3.i.i524
  br i1 %cmp18.4.i.i530, label %if.then20.4.i.i532, label %for.inc.3.i.i531.for.inc22.i.i540_crit_edge

for.inc.3.i.i531.for.inc22.i.i540_crit_edge:      ; preds = %for.inc.3.i.i531
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i540

if.then20.4.i.i532:                               ; preds = %for.inc.3.i.i531
  call void @__sanitizer_cov_trace_pc() #11
  %383 = trunc i32 %indvars.iv.i.i472 to i8
  br label %for.inc22.i.i540

for.inc22.i.i540:                                 ; preds = %if.then20.4.i.i532, %for.inc.3.i.i531.for.inc22.i.i540_crit_edge, %for.body3.i.i477.for.inc22.i.i540_crit_edge
  %m.6.i533 = phi i8 [ %383, %if.then20.4.i.i532 ], [ %m.5.i521, %for.inc.3.i.i531.for.inc22.i.i540_crit_edge ], [ %m.1.i469, %for.body3.i.i477.for.inc22.i.i540_crit_edge ]
  %n.6.i534 = phi i8 [ %376, %if.then20.4.i.i532 ], [ %n.5.i522, %for.inc.3.i.i531.for.inc22.i.i540_crit_edge ], [ %n.1.i470, %for.body3.i.i477.for.inc22.i.i540_crit_edge ]
  %p.6.i535 = phi i8 [ 4, %if.then20.4.i.i532 ], [ %p.5.i523, %for.inc.3.i.i531.for.inc22.i.i540_crit_edge ], [ %p.1.i471, %for.body3.i.i477.for.inc22.i.i540_crit_edge ]
  %delta.4.i.i536 = phi i32 [ %cond.4.i.i529, %if.then20.4.i.i532 ], [ %delta.3.3.i.i524, %for.inc.3.i.i531.for.inc22.i.i540_crit_edge ], [ %delta.152.i.i473, %for.body3.i.i477.for.inc22.i.i540_crit_edge ]
  %inc23.i.i537 = add i8 %m.050.i.i474, 1
  %tobool.not.i.i538 = icmp eq i8 %inc23.i.i537, 0
  %indvars.iv.next.i.i539 = add nuw nsw i32 %indvars.iv.i.i472, 1
  br i1 %tobool.not.i.i538, label %for.inc25.i.i543, label %for.inc22.i.i540.for.body3.i.i477_crit_edge

for.inc22.i.i540.for.body3.i.i477_crit_edge:      ; preds = %for.inc22.i.i540
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i.i477

for.inc25.i.i543:                                 ; preds = %for.inc22.i.i540
  %indvars.iv.next57.i.i541 = add nuw nsw i32 %indvars.iv56.i.i466, 1
  %exitcond.not.i.i542 = icmp eq i32 %indvars.iv.next57.i.i541, 15
  br i1 %exitcond.not.i.i542, label %pm2_mnp.exit.i550, label %for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge

for.inc25.i.i543.for.cond2.preheader.i.i468_crit_edge: ; preds = %for.inc25.i.i543
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i.i468

pm2_mnp.exit.i550:                                ; preds = %for.inc25.i.i543
  %384 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i.i544 = getelementptr i8, ptr %385, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i544, i32 34) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %386 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i.i545 = getelementptr i8, ptr %387, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i545, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %conv.i546 = zext i8 %m.6.i533 to i32
  %388 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %389, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24.i, i32 32) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %390 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i25.i = getelementptr i8, ptr %391, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i25.i, i32 %conv.i546) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %conv1.i547 = zext i8 %n.6.i534 to i32
  %392 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i27.i = getelementptr i8, ptr %393, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27.i, i32 33) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %394 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i28.i = getelementptr i8, ptr %395, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i28.i, i32 %conv1.i547) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %396 = or i8 %p.6.i535, 8
  %or.i548 = zext i8 %396 to i32
  %397 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %398, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 34) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %399 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i31.i = getelementptr i8, ptr %400, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i31.i, i32 %or.i548) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %401 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i33.i = getelementptr i8, ptr %402, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33.i, i32 41) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %403 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i2.i.i549 = getelementptr i8, ptr %404, i32 16464
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i549) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  br label %for.body.i556

for.body.i556:                                    ; preds = %for.body.i556.for.body.i556_crit_edge, %pm2_mnp.exit.i550
  %i.063.i = phi i32 [ 256, %pm2_mnp.exit.i550 ], [ %dec.i553, %for.body.i556.for.body.i556_crit_edge ]
  %406 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i551 = getelementptr i8, ptr %407, i32 16464
  %408 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i551) #9, !srcloc !93
  %and.i552 = and i32 %408, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i552)
  %tobool4.not.i = icmp ne i32 %and.i552, 0
  %dec.i553 = add nsw i32 %i.063.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i553)
  %tobool.not.i554 = icmp eq i32 %dec.i553, 0
  %or.cond.i555 = select i1 %tobool4.not.i, i1 true, i1 %tobool.not.i554
  br i1 %or.cond.i555, label %for.body.i556.cleanup_crit_edge, label %for.body.i556.for.body.i556_crit_edge

for.body.i556.for.body.i556_crit_edge:            ; preds = %for.body.i556
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i556

for.body.i556.cleanup_crit_edge:                  ; preds = %for.body.i556
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5.i:                                         ; preds = %sw.epilog146
  %div22.i = lshr i32 %div, 1
  br label %for.body.i.i562

for.body.i.i562:                                  ; preds = %for.inc28.i.i596.for.body.i.i562_crit_edge, %sw.bb5.i
  %m.7.i557 = phi i8 [ 0, %sw.bb5.i ], [ %m.10.i592, %for.inc28.i.i596.for.body.i.i562_crit_edge ]
  %n.7.i558 = phi i8 [ 0, %sw.bb5.i ], [ %n.10.i593, %for.inc28.i.i596.for.body.i.i562_crit_edge ]
  %p.7.i559 = phi i8 [ 0, %sw.bb5.i ], [ %p.10.i594, %for.inc28.i.i596.for.body.i.i562_crit_edge ]
  %indvars.iv.i34.i = phi i32 [ 1, %sw.bb5.i ], [ %indvars.iv.next.i45.i, %for.inc28.i.i596.for.body.i.i562_crit_edge ]
  %delta.058.i.i560 = phi i32 [ 1000, %sw.bb5.i ], [ %delta.3.1.i42.i, %for.inc28.i.i596.for.body.i.i562_crit_edge ]
  %indvars.iv.tr.i.i561 = trunc i32 %indvars.iv.i34.i to i8
  %409 = shl i8 %indvars.iv.tr.i.i561, 1
  %410 = or i8 %409, 1
  br label %for.cond6.preheader.i.i574

for.cond6.preheader.i.i574:                       ; preds = %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge, %for.body.i.i562
  %m.8.i563 = phi i8 [ %m.7.i557, %for.body.i.i562 ], [ %m.10.i592, %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge ]
  %n.8.i564 = phi i8 [ %n.7.i558, %for.body.i.i562 ], [ %n.10.i593, %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge ]
  %p.8.i565 = phi i8 [ %p.7.i559, %for.body.i.i562 ], [ %p.10.i594, %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge ]
  %delta.156.i.i566 = phi i32 [ %delta.058.i.i560, %for.body.i.i562 ], [ %delta.3.1.i42.i, %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge ]
  %n.055.i.i567 = phi i8 [ %410, %for.body.i.i562 ], [ %inc26.i.i595, %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge ]
  %conv13.i.i568 = zext i8 %n.055.i.i567 to i32
  %mul14.i.i569 = mul nuw nsw i32 %conv13.i.i568, 7159
  %div.i35.i = udiv i32 %mul14.i.i569, %indvars.iv.i34.i
  %sub.i36.i = sub i32 %div.i35.i, %delta.156.i.i566
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i36.i, i32 %div22.i)
  %cmp16.i.i570 = icmp ult i32 %sub.i36.i, %div22.i
  %add18.i.i571 = add i32 %div.i35.i, %delta.156.i.i566
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i.i571, i32 %div22.i)
  %cmp19.i.i572 = icmp ugt i32 %add18.i.i571, %div22.i
  %or.cond.i.i573 = and i1 %cmp16.i.i570, %cmp19.i.i572
  br i1 %or.cond.i.i573, label %if.then.i.i578, label %for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge

for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge: ; preds = %for.cond6.preheader.i.i574
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i40.i

if.then.i.i578:                                   ; preds = %for.cond6.preheader.i.i574
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i35.i, i32 %div22.i)
  %cmp21.i.i575 = icmp ult i32 %div.i35.i, %div22.i
  %sub23.i.i576 = sub nsw i32 %div22.i, %div.i35.i
  %sub24.i.i577 = sub nsw i32 %div.i35.i, %div22.i
  %cond.i37.i = select i1 %cmp21.i.i575, i32 %sub23.i.i576, i32 %sub24.i.i577
  br label %for.inc.i40.i

for.inc.i40.i:                                    ; preds = %if.then.i.i578, %for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge
  %m.9.i579 = phi i8 [ %indvars.iv.tr.i.i561, %if.then.i.i578 ], [ %m.8.i563, %for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge ]
  %n.9.i580 = phi i8 [ %n.055.i.i567, %if.then.i.i578 ], [ %n.8.i564, %for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge ]
  %p.9.i581 = phi i8 [ 0, %if.then.i.i578 ], [ %p.8.i565, %for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge ]
  %delta.3.i38.i = phi i32 [ %cond.i37.i, %if.then.i.i578 ], [ %delta.156.i.i566, %for.cond6.preheader.i.i574.for.inc.i40.i_crit_edge ]
  %mul14.1.i.i582 = mul nuw nsw i32 %conv13.i.i568, 3579
  %div.1.i.i583 = udiv i32 %mul14.1.i.i582, %indvars.iv.i34.i
  %sub.1.i39.i = sub i32 %div.1.i.i583, %delta.3.i38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i39.i, i32 %div22.i)
  %cmp16.1.i.i584 = icmp ult i32 %sub.1.i39.i, %div22.i
  %add18.1.i.i585 = add i32 %div.1.i.i583, %delta.3.i38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.1.i.i585, i32 %div22.i)
  %cmp19.1.i.i586 = icmp ugt i32 %add18.1.i.i585, %div22.i
  %or.cond.1.i.i587 = and i1 %cmp16.1.i.i584, %cmp19.1.i.i586
  br i1 %or.cond.1.i.i587, label %if.then.1.i.i591, label %for.inc.i40.i.for.inc.1.i44.i_crit_edge

for.inc.i40.i.for.inc.1.i44.i_crit_edge:          ; preds = %for.inc.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i44.i

if.then.1.i.i591:                                 ; preds = %for.inc.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1.i.i583, i32 %div22.i)
  %cmp21.1.i.i588 = icmp ult i32 %div.1.i.i583, %div22.i
  %sub23.1.i.i589 = sub nsw i32 %div22.i, %div.1.i.i583
  %sub24.1.i.i590 = sub nsw i32 %div.1.i.i583, %div22.i
  %cond.1.i41.i = select i1 %cmp21.1.i.i588, i32 %sub23.1.i.i589, i32 %sub24.1.i.i590
  br label %for.inc.1.i44.i

for.inc.1.i44.i:                                  ; preds = %if.then.1.i.i591, %for.inc.i40.i.for.inc.1.i44.i_crit_edge
  %m.10.i592 = phi i8 [ %indvars.iv.tr.i.i561, %if.then.1.i.i591 ], [ %m.9.i579, %for.inc.i40.i.for.inc.1.i44.i_crit_edge ]
  %n.10.i593 = phi i8 [ %n.055.i.i567, %if.then.1.i.i591 ], [ %n.9.i580, %for.inc.i40.i.for.inc.1.i44.i_crit_edge ]
  %p.10.i594 = phi i8 [ 1, %if.then.1.i.i591 ], [ %p.9.i581, %for.inc.i40.i.for.inc.1.i44.i_crit_edge ]
  %delta.3.1.i42.i = phi i32 [ %cond.1.i41.i, %if.then.1.i.i591 ], [ %delta.3.i38.i, %for.inc.i40.i.for.inc.1.i44.i_crit_edge ]
  %inc26.i.i595 = add i8 %n.055.i.i567, 1
  %tobool.not.i43.i = icmp eq i8 %inc26.i.i595, 0
  br i1 %tobool.not.i43.i, label %for.inc28.i.i596, label %for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge

for.inc.1.i44.i.for.cond6.preheader.i.i574_crit_edge: ; preds = %for.inc.1.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond6.preheader.i.i574

for.inc28.i.i596:                                 ; preds = %for.inc.1.i44.i
  %indvars.iv.next.i45.i = add nuw nsw i32 %indvars.iv.i34.i, 1
  %exitcond.not.i46.i = icmp eq i32 %indvars.iv.next.i45.i, 128
  br i1 %exitcond.not.i46.i, label %pm2v_mnp.exit.i599, label %for.inc28.i.i596.for.body.i.i562_crit_edge

for.inc28.i.i596.for.body.i.i562_crit_edge:       ; preds = %for.inc28.i.i596
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i562

pm2v_mnp.exit.i599:                               ; preds = %for.inc28.i.i596
  call void @__sanitizer_cov_trace_pc() #11
  %411 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %412, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 2) #9, !srcloc !94
  %conv6.i597 = zext i8 %m.10.i592 to i32
  %413 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i50.i = getelementptr i8, ptr %414, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50.i, i32 1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %415 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i51.i = getelementptr i8, ptr %416, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i51.i, i32 %conv6.i597) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %conv7.i = zext i8 %n.10.i593 to i32
  %417 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i53.i = getelementptr i8, ptr %418, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53.i, i32 2) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %419 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i54.i = getelementptr i8, ptr %420, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i54.i, i32 %conv7.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %conv8.i = zext i8 %p.10.i594 to i32
  %421 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %422, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56.i, i32 3) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %423 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i5.i57.i = getelementptr i8, ptr %424, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i57.i, i32 %conv8.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %425 = ptrtoint ptr %v_regs.i23.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %v_regs.i23.i, align 4
  %add.ptr.i59.i598 = getelementptr i8, ptr %426, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i598, i32 0) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %pm2v_mnp.exit.i599, %for.body.i556.cleanup_crit_edge, %sw.epilog146.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.end.cleanup_crit_edge ], [ -22, %if.end86.cleanup_crit_edge ], [ 0, %sw.epilog146.cleanup_crit_edge ], [ 0, %pm2v_mnp.exit.i599 ], [ 0, %for.body.i556.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %regno)
  %cmp.not = icmp ugt i32 %3, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup85_crit_edge

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %red, 77
  %mul3 = mul i32 %green, 151
  %add = add i32 %mul3, %mul
  %mul4 = mul i32 %blue, 28
  %add5 = add i32 %add, %mul4
  %shr = lshr i32 %add5, 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %red.addr.0 = phi i32 [ %shr, %if.then2 ], [ %red, %if.end.if.end6_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then2 ], [ %green, %if.end.if.end6_crit_edge ]
  %blue.addr.0 = phi i32 [ %shr, %if.then2 ], [ %blue, %if.end.if.end6_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %7, label %if.end6.sw.epilog_crit_edge [
    i32 2, label %if.end6.sw.bb_crit_edge
    i32 3, label %if.end6.sw.bb_crit_edge130
    i32 4, label %if.end6.cleanup85_crit_edge
  ]

if.end6.cleanup85_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end6.sw.bb_crit_edge130:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge130
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %shl = shl i32 %red.addr.0, %10
  %add9 = sub i32 32767, %red.addr.0
  %sub = add i32 %add9, %shl
  %shr10 = lshr i32 %sub, 16
  %length13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %11 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length13, align 4
  %shl14 = shl i32 %green.addr.0, %12
  %add15 = sub i32 32767, %green.addr.0
  %sub16 = add i32 %add15, %shl14
  %shr17 = lshr i32 %sub16, 16
  %length20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %13 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length20, align 4
  %shl21 = shl i32 %blue.addr.0, %14
  %add22 = sub i32 32767, %blue.addr.0
  %sub23 = add i32 %add22, %shl21
  %shr24 = lshr i32 %sub23, 16
  %length27 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %15 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length27, align 4
  %shl28 = shl i32 %transp, %16
  %add29 = sub i32 32767, %transp
  %sub30 = add i32 %add29, %shl28
  %shr31 = lshr i32 %sub30, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end6.sw.epilog_crit_edge
  %red.addr.1 = phi i32 [ %red.addr.0, %if.end6.sw.epilog_crit_edge ], [ %shr10, %sw.bb ]
  %green.addr.1 = phi i32 [ %green.addr.0, %if.end6.sw.epilog_crit_edge ], [ %shr17, %sw.bb ]
  %blue.addr.1 = phi i32 [ %blue.addr.0, %if.end6.sw.epilog_crit_edge ], [ %shr24, %sw.bb ]
  %transp.addr.0 = phi i32 [ %transp, %if.end6.sw.epilog_crit_edge ], [ %shr31, %sw.bb ]
  %17 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %sw.epilog.cleanup85_crit_edge [
    i32 2, label %if.then52
    i32 3, label %if.then79
  ]

sw.epilog.cleanup85_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.then52:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp53 = icmp ugt i32 %regno, 15
  br i1 %cmp53, label %if.then52.cleanup85_crit_edge, label %if.end55

if.then52.cleanup85_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end55:                                         ; preds = %if.then52
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %19, label %if.end55.cleanup85_crit_edge [
    i32 32, label %if.end55.sw.bb74_crit_edge
    i32 16, label %if.end55.sw.bb74_crit_edge131
    i32 24, label %if.end55.sw.bb74_crit_edge132
  ]

if.end55.sw.bb74_crit_edge132:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

if.end55.sw.bb74_crit_edge131:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

if.end55.sw.bb74_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb74

if.end55.cleanup85_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

sw.bb74:                                          ; preds = %if.end55.sw.bb74_crit_edge, %if.end55.sw.bb74_crit_edge131, %if.end55.sw.bb74_crit_edge132
  %red57 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %red57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %red57, align 4
  %shl58 = shl i32 %red.addr.1, %22
  %green60 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %23 = ptrtoint ptr %green60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %green60, align 4
  %shl62 = shl i32 %green.addr.1, %24
  %or = or i32 %shl62, %shl58
  %blue64 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %25 = ptrtoint ptr %blue64 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blue64, align 4
  %shl66 = shl i32 %blue.addr.1, %26
  %or67 = or i32 %or, %shl66
  %transp69 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %27 = ptrtoint ptr %transp69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %transp69, align 4
  %shl71 = shl i32 %transp.addr.0, %28
  %or72 = or i32 %or67, %shl71
  %arrayidx = getelementptr %struct.pm2fb_par, ptr %1, i32 0, i32 7, i32 %regno
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or72, ptr %arrayidx, align 4
  br label %cleanup85

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = and i32 %regno, 255
  %v_regs.i.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %conv1.i = and i32 %red.addr.1, 255
  %32 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %33, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %conv1.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %conv4.i = and i32 %green.addr.1, 255
  %34 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %35, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %conv4.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  %conv7.i = and i32 %blue.addr.1, 255
  %36 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %37, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %conv7.i) #9, !srcloc !94
  br label %cleanup85

cleanup85:                                        ; preds = %if.then79, %sw.bb74, %if.end55.cleanup85_crit_edge, %if.then52.cleanup85_crit_edge, %sw.epilog.cleanup85_crit_edge, %if.end6.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup85_crit_edge ], [ -22, %if.then52.cleanup85_crit_edge ], [ 0, %if.end55.cleanup85_crit_edge ], [ 0, %sw.bb74 ], [ 0, %sw.epilog.cleanup85_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end6.cleanup85_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %video2 = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %video2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video2, align 4
  %4 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %blank_mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %3, 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %3, -2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and5 = and i32 %3, -99
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and7 = and i32 %3, -27
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = and i32 %3, -123
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %video.0 = phi i32 [ %3, %entry.sw.epilog_crit_edge ], [ %and9, %sw.bb8 ], [ %and7, %sw.bb6 ], [ %and5, %sw.bb4 ], [ %and, %sw.bb3 ], [ %or, %sw.bb ]
  tail call fastcc void @set_video(ptr noundef %1, i32 noundef %video.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %add = add i32 %3, 7
  %and = and i32 %add, -8
  %4 = ptrtoint ptr %var1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var1, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %and, i32 32)
  %add4 = add i32 %5, 31
  %and5 = and i32 %add4, -32
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %7 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yoffset, align 4
  %mul = mul i32 %and5, %8
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %9 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xoffset, align 4
  %add6 = add i32 %mul, %10
  %11 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %6, label %entry.to3264.exit_crit_edge [
    i32 24, label %sw.bb.i
    i32 8, label %entry.sw.bb1.i_crit_edge
    i32 16, label %entry.sw.bb2.i_crit_edge
  ]

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.to3264.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %to3264.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %add6, 3
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %entry.sw.bb1.i_crit_edge
  %timing.addr.0.i = phi i32 [ %add6, %entry.sw.bb1.i_crit_edge ], [ %mul.i, %sw.bb.i ]
  %shr.i = lshr i32 %timing.addr.0.i, 1
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb1.i, %entry.sw.bb2.i_crit_edge
  %timing.addr.1.i = phi i32 [ %add6, %entry.sw.bb2.i_crit_edge ], [ %shr.i, %sw.bb1.i ]
  %shr3.i = lshr i32 %timing.addr.1.i, 1
  br label %to3264.exit

to3264.exit:                                      ; preds = %sw.bb2.i, %entry.to3264.exit_crit_edge
  %timing.addr.2.i = phi i32 [ %add6, %entry.to3264.exit_crit_edge ], [ %shr3.i, %sw.bb2.i ]
  %spec.select.i = lshr i32 %timing.addr.2.i, 1
  %v_regs.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %spec.select.i) #9, !srcloc !94
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm2fb_fillrect(ptr noundef %info, ptr noundef %region) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %4 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pseudo_palette, align 4
  %color2 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  %6 = ptrtoint ptr %color2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %color2, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %color3 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx, %cond.true ], [ %color3, %cond.false ]
  %8 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %cond = load i32, ptr %cond.in, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.not = icmp eq i32 %10, 0
  br i1 %cmp4.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %13 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp5.not = icmp eq i32 %14, 0
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %region) #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yres_virtual, align 4
  %19 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %19)
  %modded.sroa.0.0.copyload = load i32, ptr %region, align 4
  %modded.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %region, i32 4
  %20 = ptrtoint ptr %modded.sroa.8.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %modded.sroa.8.0.copyload = load i32, ptr %modded.sroa.8.0..sroa_idx, align 4
  %modded.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %region, i32 8
  %21 = ptrtoint ptr %modded.sroa.13.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %modded.sroa.13.0.copyload = load i32, ptr %modded.sroa.13.0..sroa_idx, align 4
  %modded.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %region, i32 12
  %22 = ptrtoint ptr %modded.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %modded.sroa.18.0.copyload = load i32, ptr %modded.sroa.18.0..sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.13.0.copyload)
  %tobool9.not = icmp ne i32 %modded.sroa.13.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.18.0.copyload)
  %tobool11.not = icmp ne i32 %modded.sroa.18.0.copyload, 0
  %or.cond = select i1 %tobool9.not, i1 %tobool11.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %modded.sroa.0.0.copyload)
  %cmp13.not = icmp ugt i32 %16, %modded.sroa.0.0.copyload
  %or.cond107 = select i1 %or.cond, i1 %cmp13.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %modded.sroa.8.0.copyload)
  %cmp15.not = icmp ugt i32 %18, %modded.sroa.8.0.copyload
  %or.cond108 = select i1 %or.cond107, i1 %cmp15.not, i1 false
  br i1 %or.cond108, label %if.end17, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %add = add i32 %modded.sroa.13.0.copyload, %modded.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp20 = icmp ugt i32 %add, %16
  %sub = sub i32 %16, %modded.sroa.0.0.copyload
  %spec.select = select i1 %cmp20, i32 %sub, i32 %modded.sroa.13.0.copyload
  %add27 = add i32 %modded.sroa.18.0.copyload, %modded.sroa.8.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %18)
  %cmp28 = icmp ugt i32 %add27, %18
  %sub31 = sub i32 %18, %modded.sroa.8.0.copyload
  %modded.sroa.18.0 = select i1 %cmp28, i32 %sub31, i32 %modded.sroa.18.0.copyload
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp35 = icmp eq i32 %24, 8
  %shl = shl i32 %cond, 8
  %or = select i1 %cmp35, i32 %shl, i32 0
  %color.0 = or i32 %or, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %24)
  %cmp40 = icmp ult i32 %24, 17
  %shl42 = shl i32 %color.0, 16
  %or43 = select i1 %cmp40, i32 %shl42, i32 0
  %color.1 = or i32 %or43, %color.0
  %v_regs.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 36240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8) #9, !srcloc !94
  %shl46 = shl i32 %modded.sroa.8.0.copyload, 16
  %or48 = or i32 %shl46, %modded.sroa.0.0.copyload
  %27 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %28, i32 32976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %or48) #9, !srcloc !94
  %shl50 = shl i32 %modded.sroa.18.0, 16
  %or52 = or i32 %shl50, %spec.select
  %29 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %30, i32 32984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %or52) #9, !srcloc !94
  %31 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %32)
  %cmp55.not = icmp eq i32 %32, 24
  %33 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %v_regs.i, align 4
  br i1 %cmp55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i114 = getelementptr i8, ptr %34, i32 35528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %color.1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %36, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 200) #9, !srcloc !94
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i118 = getelementptr i8, ptr %34, i32 34784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 1) #9, !srcloc !94
  %37 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %38, i32 34792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %color.1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %40, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 6291648) #9, !srcloc !94
  %41 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %42, i32 34784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 0) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then56, %if.end7.cleanup_crit_edge, %if.then6, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm2fb_copyarea(ptr noundef %info, ptr noundef %area) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %modded.sroa.0.0.copyload = load i32, ptr %area, align 4
  %modded.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 4
  %7 = ptrtoint ptr %modded.sroa.10.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %modded.sroa.10.0.copyload = load i32, ptr %modded.sroa.10.0..sroa_idx, align 4
  %modded.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 8
  %8 = ptrtoint ptr %modded.sroa.17.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %modded.sroa.17.0.copyload = load i32, ptr %modded.sroa.17.0..sroa_idx, align 4
  %modded.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 12
  %9 = ptrtoint ptr %modded.sroa.24.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %modded.sroa.24.0.copyload = load i32, ptr %modded.sroa.24.0..sroa_idx, align 4
  %modded.sroa.31.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 16
  %10 = ptrtoint ptr %modded.sroa.31.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %modded.sroa.31.0.copyload = load i32, ptr %modded.sroa.31.0..sroa_idx, align 4
  %modded.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 20
  %11 = ptrtoint ptr %modded.sroa.37.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %modded.sroa.37.0.copyload = load i32, ptr %modded.sroa.37.0..sroa_idx, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.17.0.copyload)
  %tobool5.not = icmp ne i32 %modded.sroa.17.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.24.0.copyload)
  %tobool6.not = icmp ne i32 %modded.sroa.24.0.copyload, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %modded.sroa.31.0.copyload)
  %cmp8.not = icmp ugt i32 %13, %modded.sroa.31.0.copyload
  %or.cond124 = select i1 %or.cond, i1 %cmp8.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %modded.sroa.37.0.copyload)
  %cmp10.not = icmp ugt i32 %15, %modded.sroa.37.0.copyload
  %or.cond125 = select i1 %or.cond124, i1 %cmp10.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %modded.sroa.0.0.copyload)
  %cmp12.not = icmp ugt i32 %13, %modded.sroa.0.0.copyload
  %or.cond126 = select i1 %or.cond125, i1 %cmp12.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %modded.sroa.10.0.copyload)
  %cmp14.not = icmp ugt i32 %15, %modded.sroa.10.0.copyload
  %or.cond127 = select i1 %or.cond126, i1 %cmp14.not, i1 false
  br i1 %or.cond127, label %if.end16, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %modded.sroa.31.0.copyload, %modded.sroa.17.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp19 = icmp ugt i32 %add, %13
  %sub = sub i32 %13, %modded.sroa.31.0.copyload
  %spec.select = select i1 %cmp19, i32 %sub, i32 %modded.sroa.17.0.copyload
  %add26 = add i32 %spec.select, %modded.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %13)
  %cmp27 = icmp ugt i32 %add26, %13
  %sub30 = sub i32 %13, %modded.sroa.0.0.copyload
  %modded.sroa.17.1 = select i1 %cmp27, i32 %sub30, i32 %spec.select
  %add35 = add i32 %modded.sroa.37.0.copyload, %modded.sroa.24.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %15)
  %cmp36 = icmp ugt i32 %add35, %15
  %sub39 = sub i32 %15, %modded.sroa.37.0.copyload
  %modded.sroa.24.0 = select i1 %cmp36, i32 %sub39, i32 %modded.sroa.24.0.copyload
  %add44 = add i32 %modded.sroa.24.0, %modded.sroa.10.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %15)
  %cmp45 = icmp ugt i32 %add44, %15
  %sub48 = sub i32 %15, %modded.sroa.10.0.copyload
  %modded.sroa.24.1 = select i1 %cmp45, i32 %sub48, i32 %modded.sroa.24.0
  %v_regs.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 36240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 9) #9, !srcloc !94
  %sub53 = sub i32 %modded.sroa.37.0.copyload, %modded.sroa.10.0.copyload
  %and54 = shl i32 %sub53, 16
  %shl = and i32 %and54, 268369920
  %sub57 = sub i32 %modded.sroa.31.0.copyload, %modded.sroa.0.0.copyload
  %and58 = and i32 %sub57, 4095
  %or = or i32 %shl, %and58
  %18 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %19, i32 36232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %or) #9, !srcloc !94
  %shl60 = shl i32 %modded.sroa.10.0.copyload, 16
  %or62 = or i32 %shl60, %modded.sroa.0.0.copyload
  %20 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %21, i32 32976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %or62) #9, !srcloc !94
  %shl64 = shl i32 %modded.sroa.24.1, 16
  %or66 = or i32 %shl64, %modded.sroa.17.1
  %22 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %23, i32 32984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %or66) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.31.0.copyload, i32 %modded.sroa.0.0.copyload)
  %cmp69 = icmp ugt i32 %modded.sroa.31.0.copyload, %modded.sroa.0.0.copyload
  %or70 = select i1 %cmp69, i32 2097344, i32 192
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.37.0.copyload, i32 %modded.sroa.10.0.copyload)
  %cmp73 = icmp ugt i32 %modded.sroa.37.0.copyload, %modded.sroa.10.0.copyload
  %cond74 = select i1 %cmp73, i32 4194304, i32 0
  %or75 = or i32 %cond74, %or70
  %24 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %25, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 %or75) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm2fb_imageblit(ptr noundef %info, ptr noundef %image) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %height2 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %2 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height2, align 4
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var, align 4
  %add = add i32 %7, 31
  %and = and i32 %add, -32
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and4 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp5.not = icmp eq i8 %13, 1
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cond = icmp eq i32 %15, 3
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr %struct.pm2fb_par, ptr %1, i32 0, i32 7, i32 %17
  %bg_color12 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %18 = ptrtoint ptr %bg_color12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bg_color12, align 4
  %arrayidx13 = getelementptr %struct.pm2fb_par, ptr %1, i32 0, i32 7, i32 %19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %fgx.0.in = phi ptr [ %fg_color, %sw.bb ], [ %arrayidx, %sw.default ]
  %bgx.0.in = phi ptr [ %bg_color, %sw.bb ], [ %arrayidx13, %sw.default ]
  %20 = ptrtoint ptr %bgx.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %bgx.0 = load i32, ptr %bgx.0.in, align 4
  %21 = ptrtoint ptr %fgx.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %fgx.0 = load i32, ptr %fgx.0.in, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %23)
  %cmp15 = icmp eq i32 %23, 8
  %shl = shl i32 %fgx.0, 8
  %shl18 = shl i32 %bgx.0, 8
  %or = select i1 %cmp15, i32 %shl, i32 0
  %fgx.1 = or i32 %or, %fgx.0
  %or19 = select i1 %cmp15, i32 %shl18, i32 0
  %bgx.1 = or i32 %or19, %bgx.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %23)
  %cmp23 = icmp ult i32 %23, 17
  %shl26 = shl i32 %fgx.1, 16
  %shl28 = shl i32 %bgx.1, 16
  %or27 = select i1 %cmp23, i32 %shl26, i32 0
  %or29 = select i1 %cmp23, i32 %shl28, i32 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %sw.epilog
  %i.0.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  %conv.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %and, %conv.i
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %or.cond.i, label %partprod.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

partprod.exit:                                    ; preds = %for.cond.i
  %fgx.2 = or i32 %or27, %fgx.1
  %bgx.2 = or i32 %or29, %bgx.1
  %pp.i = getelementptr [33 x %struct.anon.86], ptr @pp_table, i32 0, i32 %i.0.i, i32 1
  %26 = ptrtoint ptr %pp.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pp.i, align 2
  %conv11.i = zext i16 %27 to i32
  %v_regs.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 35456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv11.i) #9, !srcloc !94
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %30 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dy, align 4
  %and31 = shl i32 %31, 16
  %shl32 = and i32 %and31, 268369920
  %32 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %image, align 4
  %and33 = and i32 %33, 4095
  %or34 = or i32 %shl32, %and33
  %34 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %35, i32 33160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %or34) #9, !srcloc !94
  %36 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dy, align 4
  %38 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height2, align 4
  %add37 = add i32 %39, %37
  %and38 = shl i32 %add37, 16
  %shl39 = and i32 %and38, 268369920
  %40 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %image, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %42 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width, align 4
  %add41 = add i32 %43, %41
  %and42 = and i32 %add41, 4095
  %or43 = or i32 %and42, %shl39
  %44 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %45, i32 33168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %or43) #9, !srcloc !94
  %46 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %47, i32 33152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 1) #9, !srcloc !94
  %48 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %49, i32 34856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 7) #9, !srcloc !94
  %50 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dy, align 4
  %and45 = shl i32 %51, 16
  %shl46 = and i32 %and45, 268369920
  %52 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %image, align 4
  %and48 = and i32 %53, 4095
  %or49 = or i32 %shl46, %and48
  %54 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %55, i32 32976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %or49) #9, !srcloc !94
  %56 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height2, align 4
  %and51 = shl i32 %57, 16
  %shl52 = and i32 %and51, 268369920
  %58 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %width, align 4
  %and54 = and i32 %59, 4095
  %or55 = or i32 %shl52, %and54
  %60 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %61, i32 32984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %or55) #9, !srcloc !94
  %62 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %63)
  %cmp58 = icmp eq i32 %63, 24
  %64 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %65, i32 34784
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %partprod.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 1) #9, !srcloc !94
  %66 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %67, i32 34792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %bgx.2) #9, !srcloc !94
  %68 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %69, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 6291648) #9, !srcloc !94
  %70 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %71, i32 32928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 513) #9, !srcloc !94
  %72 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %73, i32 34792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 %fgx.2) #9, !srcloc !94
  %74 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i167 = getelementptr i8, ptr %75, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 6293696) #9, !srcloc !94
  br label %if.end62

if.else:                                          ; preds = %partprod.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 0) #9, !srcloc !94
  %76 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %77, i32 35528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %bgx.2) #9, !srcloc !94
  %78 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i173 = getelementptr i8, ptr %79, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 6291656) #9, !srcloc !94
  %80 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %81, i32 32928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 1) #9, !srcloc !94
  %82 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i177 = getelementptr i8, ptr %83, i32 35528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %fgx.2) #9, !srcloc !94
  %84 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %85, i32 32824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 6293704) #9, !srcloc !94
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool63.not192 = icmp eq i32 %3, 0
  br i1 %tobool63.not192, label %if.end62.while.end73_crit_edge, label %while.body.lr.ph

if.end62.while.end73_crit_edge:                   ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end73

while.body.lr.ph:                                 ; preds = %if.end62
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body72.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %src.1.lcssa = phi ptr [ %src.0193, %while.body.while.cond.loopexit_crit_edge ], [ %incdec.ptr, %while.body72.while.cond.loopexit_crit_edge ]
  %tobool63.not = icmp eq i32 %dec194, 0
  br i1 %tobool63.not, label %while.cond.loopexit.while.end73_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.loopexit.while.end73_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end73

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %dec194.in = phi i32 [ %3, %while.body.lr.ph ], [ %dec194, %while.cond.loopexit.while.body_crit_edge ]
  %src.0193 = phi ptr [ %5, %while.body.lr.ph ], [ %src.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %dec194 = add i32 %dec194.in, -1
  %86 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %width, align 4
  %add66 = add i32 %87, 7
  %shr = lshr i32 %add66, 3
  %88 = ptrtoint ptr %scan_align to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %scan_align, align 4
  %add67 = add i32 %89, -1
  %sub = add i32 %add67, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %tobool71.not188 = icmp ult i32 %sub, 4
  br i1 %tobool71.not188, label %while.body.while.cond.loopexit_crit_edge, label %while.body72.preheader

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

while.body72.preheader:                           ; preds = %while.body
  %shr68 = ashr i32 %sub, 2
  br label %while.body72

while.body72:                                     ; preds = %while.body72.while.body72_crit_edge, %while.body72.preheader
  %width64.0190 = phi i32 [ %dec70, %while.body72.while.body72_crit_edge ], [ %shr68, %while.body72.preheader ]
  %src.1189 = phi ptr [ %incdec.ptr, %while.body72.while.body72_crit_edge ], [ %src.0193, %while.body72.preheader ]
  %dec70 = add i32 %width64.0190, -1
  %90 = ptrtoint ptr %src.1189 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %src.1189, align 4
  %92 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %93, i32 32872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %91) #9, !srcloc !94
  %incdec.ptr = getelementptr i32, ptr %src.1189, i32 1
  %tobool71.not = icmp eq i32 %dec70, 0
  br i1 %tobool71.not, label %while.body72.while.cond.loopexit_crit_edge, label %while.body72.while.body72_crit_edge

while.body72.while.body72_crit_edge:              ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body72

while.body72.while.cond.loopexit_crit_edge:       ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit

while.end73:                                      ; preds = %while.cond.loopexit.while.end73_crit_edge, %if.end62.while.end73_crit_edge
  %94 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %95, i32 32928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 0) #9, !srcloc !94
  %96 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %97, i32 34784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 0) #9, !srcloc !94
  %98 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %99, i32 33152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 0) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %while.end73, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_cursor(ptr nocapture noundef readonly %info, ptr noundef readonly %cursor) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = load i32, ptr @hwcursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %image = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5
  %width = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp ugt i32 %4, 64
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp3 = icmp ugt i32 %6, 64
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %depth = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 6
  %7 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp6 = icmp ugt i8 %8, 1
  br i1 %cmp6, label %lor.lhs.false4.cleanup_crit_edge, label %if.end9

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp10 = icmp eq i32 %10, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %11 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %image, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %13 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xoffset.i, align 4
  %sub.i = sub i32 %12, %14
  %dy.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dy.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %17 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yoffset.i, align 4
  %sub4.i = sub i32 %16, %18
  %enable.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %19 = ptrtoint ptr %enable.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %enable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i = icmp eq i16 %20, 0
  %spec.select.i = select i1 %tobool.not.i, i32 16, i32 17
  %v_regs.i.i.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 5) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %24, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i.i, i32 %spec.select.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %enable.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %enable.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool8.not.i = icmp eq i16 %26, 0
  %x.0.i = select i1 %tobool8.not.i, i32 2047, i32 %sub.i
  %and.i = and i32 %x.0.i, 255
  %27 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %28, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i, i32 7) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i6.i = getelementptr i8, ptr %30, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i6.i, i32 %and.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %31 = lshr i32 %x.0.i, 8
  %and11.i = and i32 %31, 15
  %32 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %33, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 8) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i9.i = getelementptr i8, ptr %35, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i9.i, i32 %and11.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %and12.i = and i32 %sub4.i, 255
  %36 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %37, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11.i, i32 9) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i12.i = getelementptr i8, ptr %39, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i12.i, i32 %and12.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %40 = lshr i32 %sub4.i, 8
  %and14.i = and i32 %40, 15
  %41 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %42, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 10) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i15.i = getelementptr i8, ptr %44, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i15.i, i32 %and14.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool15.not.i = icmp eq i16 %46, 0
  br i1 %tobool15.not.i, label %if.then12.cleanup_crit_edge, label %if.end17.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i:                                       ; preds = %if.then12
  %47 = and i16 %46, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool21.not.i = icmp eq i16 %47, 0
  br i1 %tobool21.not.i, label %if.end17.i.if.end30.i_crit_edge, label %if.then22.i

if.end17.i.if.end30.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %hot.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %48 = ptrtoint ptr %hot.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hot.i, align 4
  %50 = and i16 %49, 63
  %and25.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %52, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.i, i32 11) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i18.i = getelementptr i8, ptr %54, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i18.i, i32 %and25.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %y27.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %y27.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %y27.i, align 2
  %57 = and i16 %56, 63
  %and29.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i20.i = getelementptr i8, ptr %59, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20.i, i32 12) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i21.i = getelementptr i8, ptr %61, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i21.i, i32 %and29.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end30.i_crit_edge
  %62 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cursor, align 4
  %64 = and i16 %63, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool34.not.i = icmp eq i16 %64, 0
  br i1 %tobool34.not.i, label %if.end30.i.if.end59.i_crit_edge, label %if.then35.i

if.end30.i.if.end59.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then35.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %fg_color.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %65 = ptrtoint ptr %fg_color.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fg_color.i, align 4
  %bg_color.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %67 = ptrtoint ptr %bg_color.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bg_color.i, align 4
  %cmap.sroa.5.0.cmap38.sroa_idx.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %69 = ptrtoint ptr %cmap.sroa.5.0.cmap38.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %cmap.sroa.5.0.copyload.i = load ptr, ptr %cmap.sroa.5.0.cmap38.sroa_idx.i, align 4
  %cmap.sroa.8.0.cmap38.sroa_idx.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %70 = ptrtoint ptr %cmap.sroa.8.0.cmap38.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %cmap.sroa.8.0.copyload.i = load ptr, ptr %cmap.sroa.8.0.cmap38.sroa_idx.i, align 4
  %cmap.sroa.11.0.cmap38.sroa_idx.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %71 = ptrtoint ptr %cmap.sroa.11.0.cmap38.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %cmap.sroa.11.0.copyload.i = load ptr, ptr %cmap.sroa.11.0.cmap38.sroa_idx.i, align 4
  %72 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %73, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 3) #9, !srcloc !94
  %arrayidx.i = getelementptr i16, ptr %cmap.sroa.5.0.copyload.i, i32 %68
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i, align 2
  %76 = lshr i16 %75, 8
  %77 = zext i16 %76 to i32
  %78 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %79, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i, i32 3) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %80 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i24.i = getelementptr i8, ptr %81, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i24.i, i32 %77) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %arrayidx41.i = getelementptr i16, ptr %cmap.sroa.8.0.copyload.i, i32 %68
  %82 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx41.i, align 2
  %84 = lshr i16 %83, 8
  %85 = zext i16 %84 to i32
  %86 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %87, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 4) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i27.i = getelementptr i8, ptr %89, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i27.i, i32 %85) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %arrayidx44.i = getelementptr i16, ptr %cmap.sroa.11.0.copyload.i, i32 %68
  %90 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx44.i, align 2
  %92 = lshr i16 %91, 8
  %93 = zext i16 %92 to i32
  %94 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i29.i = getelementptr i8, ptr %95, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i29.i, i32 5) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i30.i = getelementptr i8, ptr %97, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i30.i, i32 %93) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %arrayidx48.i = getelementptr i16, ptr %cmap.sroa.5.0.copyload.i, i32 %66
  %98 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx48.i, align 2
  %100 = lshr i16 %99, 8
  %101 = zext i16 %100 to i32
  %102 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %103, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 6) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i33.i = getelementptr i8, ptr %105, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i33.i, i32 %101) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %arrayidx52.i = getelementptr i16, ptr %cmap.sroa.8.0.copyload.i, i32 %66
  %106 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx52.i, align 2
  %108 = lshr i16 %107, 8
  %109 = zext i16 %108 to i32
  %110 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %111, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 7) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i36.i = getelementptr i8, ptr %113, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i36.i, i32 %109) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %arrayidx56.i = getelementptr i16, ptr %cmap.sroa.11.0.copyload.i, i32 %66
  %114 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx56.i, align 2
  %116 = lshr i16 %115, 8
  %117 = zext i16 %116 to i32
  %118 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i38.i = getelementptr i8, ptr %119, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38.i, i32 8) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %120 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i39.i = getelementptr i8, ptr %121, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i39.i, i32 %117) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %123, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 0) #9, !srcloc !94
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then35.i, %if.end30.i.if.end59.i_crit_edge
  %124 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %cursor, align 4
  %126 = and i16 %125, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool63.not.i = icmp eq i16 %126, 0
  br i1 %tobool63.not.i, label %if.end59.i.cleanup_crit_edge, label %if.then64.i

if.end59.i.cleanup_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then64.i:                                      ; preds = %if.end59.i
  %127 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp78.not.i = icmp eq i32 %128, 0
  br i1 %cmp78.not.i, label %if.then64.i.while.body.i.preheader_crit_edge, label %for.body.lr.ph.i

if.then64.i.while.body.i.preheader_crit_edge:     ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %while.cond.preheader.i.while.body.i.preheader_crit_edge, %if.then64.i.while.body.i.preheader_crit_edge
  %pos.385.i.ph = phi i32 [ 1024, %if.then64.i.while.body.i.preheader_crit_edge ], [ %pos.2.lcssa.i, %while.cond.preheader.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

for.body.lr.ph.i:                                 ; preds = %if.then64.i
  %mask66.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %129 = ptrtoint ptr %mask66.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mask66.i, align 4
  %data.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %131 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %data.i, align 4
  %rop.i = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.end119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %pos.2.lcssa.i)
  %cmp12384.i = icmp slt i32 %pos.2.lcssa.i, 2048
  br i1 %cmp12384.i, label %while.cond.preheader.i.while.body.i.preheader_crit_edge, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.cond.preheader.i.while.body.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.preheader

for.body.i:                                       ; preds = %for.end119.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.082.i = phi i32 [ 1024, %for.body.lr.ph.i ], [ %pos.2.lcssa.i, %for.end119.i.for.body.i_crit_edge ]
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc121.i, %for.end119.i.for.body.i_crit_edge ]
  %mask.080.i = phi ptr [ %130, %for.body.lr.ph.i ], [ %mask.1.lcssa95.i, %for.end119.i.for.body.i_crit_edge ]
  %bitmap.079.i = phi ptr [ %132, %for.body.lr.ph.i ], [ %bitmap.1.lcssa93.i, %for.end119.i.for.body.i_crit_edge ]
  %133 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %width, align 4
  %add.i = add i32 %134, 7
  %shr70.i = lshr i32 %add.i, 3
  %sub71.i = sub nsw i32 8, %shr70.i
  %shr72.i = ashr i32 %pos.082.i, 8
  %135 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %136, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %shr72.i) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp7467.not.i = icmp ult i32 %add.i, 8
  br i1 %cmp7467.not.i, label %for.body.i.for.body114.preheader.i_crit_edge, label %for.body.i.for.body76.i_crit_edge

for.body.i.for.body76.i_crit_edge:                ; preds = %for.body.i
  br label %for.body76.i

for.body.i.for.body114.preheader.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body114.preheader.i

for.cond111.preheader.i:                          ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp11274.i = icmp ult i32 %add.i, 64
  br i1 %cmp11274.i, label %for.cond111.preheader.i.for.body114.preheader.i_crit_edge, label %for.cond111.preheader.i.for.end119.i_crit_edge

for.cond111.preheader.i.for.end119.i_crit_edge:   ; preds = %for.cond111.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119.i

for.cond111.preheader.i.for.body114.preheader.i_crit_edge: ; preds = %for.cond111.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body114.preheader.i

for.body114.preheader.i:                          ; preds = %for.cond111.preheader.i.for.body114.preheader.i_crit_edge, %for.body.i.for.body114.preheader.i_crit_edge
  %pos.1.lcssa97.i = phi i32 [ %inc99.i, %for.cond111.preheader.i.for.body114.preheader.i_crit_edge ], [ %pos.082.i, %for.body.i.for.body114.preheader.i_crit_edge ]
  %mask.1.lcssa96.i = phi ptr [ %incdec.ptr110.i, %for.cond111.preheader.i.for.body114.preheader.i_crit_edge ], [ %mask.080.i, %for.body.i.for.body114.preheader.i_crit_edge ]
  %bitmap.1.lcssa94.i = phi ptr [ %incdec.ptr.i, %for.cond111.preheader.i.for.body114.preheader.i_crit_edge ], [ %bitmap.079.i, %for.body.i.for.body114.preheader.i_crit_edge ]
  br label %for.body114.i

for.body76.i:                                     ; preds = %for.body76.i.for.body76.i_crit_edge, %for.body.i.for.body76.i_crit_edge
  %j.071.i = phi i32 [ %dec.i, %for.body76.i.for.body76.i_crit_edge ], [ %shr70.i, %for.body.i.for.body76.i_crit_edge ]
  %pos.170.i = phi i32 [ %inc99.i, %for.body76.i.for.body76.i_crit_edge ], [ %pos.082.i, %for.body.i.for.body76.i_crit_edge ]
  %mask.169.i = phi ptr [ %incdec.ptr110.i, %for.body76.i.for.body76.i_crit_edge ], [ %mask.080.i, %for.body.i.for.body76.i_crit_edge ]
  %bitmap.168.i = phi ptr [ %incdec.ptr.i, %for.body76.i.for.body76.i_crit_edge ], [ %bitmap.079.i, %for.body.i.for.body76.i_crit_edge ]
  %137 = ptrtoint ptr %bitmap.168.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bitmap.168.i, align 1
  %139 = ptrtoint ptr %mask.169.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %mask.169.i, align 1
  %xor1.i = xor i8 %140, %138
  %141 = ptrtoint ptr %rop.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %rop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %cmp82.i = icmp eq i16 %142, 0
  %and872.i = and i8 %140, %138
  %spec.select3.i = select i1 %cmp82.i, i8 %and872.i, i8 %xor1.i
  %inc.i = add i32 %pos.170.i, 1
  %conv90.i = zext i8 %spec.select3.i to i32
  %143 = lshr i32 %conv90.i, 4
  %arrayidx92.i = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx92.i, align 1
  %conv93.i = zext i8 %145 to i32
  %146 = lshr i8 %140, 4
  %147 = zext i8 %146 to i32
  %arrayidx96.i = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx96.i, align 1
  %conv97.i = zext i8 %149 to i32
  %shl.i = shl nuw nsw i32 %conv97.i, 1
  %or98.i = or i32 %shl.i, %conv93.i
  %and.i.i = and i32 %pos.170.i, 255
  %150 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i45.i = getelementptr i8, ptr %151, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i45.i, i32 %and.i.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %152 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i46.i = getelementptr i8, ptr %153, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i46.i, i32 %or98.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %inc99.i = add i32 %pos.170.i, 2
  %and101.i = and i32 %conv90.i, 15
  %arrayidx102.i = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %and101.i
  %154 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx102.i, align 1
  %conv103.i = zext i8 %155 to i32
  %156 = ptrtoint ptr %mask.169.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %mask.169.i, align 1
  %158 = and i8 %157, 15
  %and105.i = zext i8 %158 to i32
  %arrayidx106.i = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %and105.i
  %159 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx106.i, align 1
  %conv107.i = zext i8 %160 to i32
  %shl108.i = shl nuw nsw i32 %conv107.i, 1
  %or109.i = or i32 %shl108.i, %conv103.i
  %and.i47.i = and i32 %inc.i, 255
  %161 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i49.i = getelementptr i8, ptr %162, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49.i, i32 %and.i47.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %163 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i50.i = getelementptr i8, ptr %164, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i50.i, i32 %or109.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %incdec.ptr.i = getelementptr i8, ptr %bitmap.168.i, i32 1
  %incdec.ptr110.i = getelementptr i8, ptr %mask.169.i, i32 1
  %dec.i = add nsw i32 %j.071.i, -1
  %cmp74.i = icmp ugt i32 %j.071.i, 1
  br i1 %cmp74.i, label %for.body76.i.for.body76.i_crit_edge, label %for.cond111.preheader.i

for.body76.i.for.body76.i_crit_edge:              ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body76.i

for.body114.i:                                    ; preds = %for.body114.i.for.body114.i_crit_edge, %for.body114.preheader.i
  %k.076.i = phi i32 [ %dec118.i, %for.body114.i.for.body114.i_crit_edge ], [ %sub71.i, %for.body114.preheader.i ]
  %pos.275.i = phi i32 [ %inc116.i, %for.body114.i.for.body114.i_crit_edge ], [ %pos.1.lcssa97.i, %for.body114.preheader.i ]
  %inc115.i = add i32 %pos.275.i, 1
  %and.i51.i = and i32 %pos.275.i, 255
  %165 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i53.i = getelementptr i8, ptr %166, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i53.i, i32 %and.i51.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %167 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i54.i = getelementptr i8, ptr %168, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i54.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %inc116.i = add i32 %pos.275.i, 2
  %and.i55.i = and i32 %inc115.i, 255
  %169 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i57.i = getelementptr i8, ptr %170, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57.i, i32 %and.i55.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %171 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i58.i = getelementptr i8, ptr %172, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i58.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %dec118.i = add nsw i32 %k.076.i, -1
  %cmp112.i = icmp sgt i32 %k.076.i, 1
  br i1 %cmp112.i, label %for.body114.i.for.body114.i_crit_edge, label %for.body114.i.for.end119.i_crit_edge

for.body114.i.for.end119.i_crit_edge:             ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119.i

for.body114.i.for.body114.i_crit_edge:            ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body114.i

for.end119.i:                                     ; preds = %for.body114.i.for.end119.i_crit_edge, %for.cond111.preheader.i.for.end119.i_crit_edge
  %mask.1.lcssa95.i = phi ptr [ %incdec.ptr110.i, %for.cond111.preheader.i.for.end119.i_crit_edge ], [ %mask.1.lcssa96.i, %for.body114.i.for.end119.i_crit_edge ]
  %bitmap.1.lcssa93.i = phi ptr [ %incdec.ptr.i, %for.cond111.preheader.i.for.end119.i_crit_edge ], [ %bitmap.1.lcssa94.i, %for.body114.i.for.end119.i_crit_edge ]
  %pos.2.lcssa.i = phi i32 [ %inc99.i, %for.cond111.preheader.i.for.end119.i_crit_edge ], [ %inc116.i, %for.body114.i.for.end119.i_crit_edge ]
  %inc121.i = add nuw i32 %i.081.i, 1
  %173 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %height, align 4
  %cmp.i = icmp ult i32 %inc121.i, %174
  br i1 %cmp.i, label %for.end119.i.for.body.i_crit_edge, label %while.cond.preheader.i

for.end119.i.for.body.i_crit_edge:                ; preds = %for.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %pos.385.i = phi i32 [ %inc126.i, %while.body.i.while.body.i_crit_edge ], [ %pos.385.i.ph, %while.body.i.preheader ]
  %shr125.i = ashr i32 %pos.385.i, 8
  %175 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %176, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %shr125.i) #9, !srcloc !94
  %inc126.i = add i32 %pos.385.i, 1
  %and.i61.i = and i32 %pos.385.i, 255
  %177 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i.i63.i = getelementptr i8, ptr %178, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63.i, i32 %and.i61.i) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %179 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i5.i64.i = getelementptr i8, ptr %180, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i64.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %exitcond.not.i = icmp eq i32 %inc126.i, 2048
  br i1 %exitcond.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %181 = ptrtoint ptr %v_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %v_regs.i.i.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %182, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 0) #9, !srcloc !94
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %183 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool14.not = icmp eq i16 %184, 0
  %conv17 = select i1 %tobool14.not, i32 64, i32 67
  %v_regs.i.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %185 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i.i248 = getelementptr i8, ptr %186, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248, i32 6) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %187 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %188, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %conv17) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %189 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool18.not = icmp eq i16 %190, 0
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %191 = and i16 %190, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %tobool23.not = icmp eq i16 %191, 0
  br i1 %tobool23.not, label %if.end20.if.end35_crit_edge, label %if.then24

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %192 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %image, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %194 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %xoffset, align 4
  %sub = sub i32 %193, %195
  %add = add i32 %sub, 63
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %196 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %198 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %yoffset, align 4
  %sub28 = sub i32 %197, %199
  %add29 = add i32 %sub28, 63
  %and30 = and i32 %add, 255
  %200 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %201, i32 16480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and30) #9, !srcloc !94
  %202 = lshr i32 %add, 8
  %and31 = and i32 %202, 7
  %203 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i250 = getelementptr i8, ptr %204, i32 16488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250, i32 %and31) #9, !srcloc !94
  %and32 = and i32 %add29, 255
  %205 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i252 = getelementptr i8, ptr %206, i32 16496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i252, i32 %and32) #9, !srcloc !94
  %207 = lshr i32 %add29, 8
  %and34 = and i32 %207, 7
  %208 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i254 = getelementptr i8, ptr %209, i32 16504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254, i32 %and34) #9, !srcloc !94
  br label %if.end35

if.end35:                                         ; preds = %if.then24, %if.end20.if.end35_crit_edge
  %210 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %cursor, align 4
  %212 = and i16 %211, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %212)
  %tobool39.not = icmp eq i16 %212, 0
  br i1 %tobool39.not, label %if.end35.if.end68_crit_edge, label %if.then40

if.end35.if.end68_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %213 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %215 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bg_color, align 4
  %217 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i256 = getelementptr i8, ptr %218, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256, i32 1) #9, !srcloc !94
  %red = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %219 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %red, align 4
  %arrayidx = getelementptr i16, ptr %220, i32 %216
  %221 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx, align 2
  %223 = lshr i16 %222, 8
  %224 = zext i16 %223 to i32
  %225 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i258 = getelementptr i8, ptr %226, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 %224) #9, !srcloc !94
  %green = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %227 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %green, align 4
  %arrayidx46 = getelementptr i16, ptr %228, i32 %216
  %229 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %arrayidx46, align 2
  %231 = lshr i16 %230, 8
  %232 = zext i16 %231 to i32
  %233 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %234, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %232) #9, !srcloc !94
  %blue = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %235 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %blue, align 4
  %arrayidx50 = getelementptr i16, ptr %236, i32 %216
  %237 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx50, align 2
  %239 = lshr i16 %238, 8
  %240 = zext i16 %239 to i32
  %241 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i262 = getelementptr i8, ptr %242, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %240) #9, !srcloc !94
  %243 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %red, align 4
  %arrayidx55 = getelementptr i16, ptr %244, i32 %214
  %245 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %arrayidx55, align 2
  %247 = lshr i16 %246, 8
  %248 = zext i16 %247 to i32
  %249 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i264 = getelementptr i8, ptr %250, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264, i32 %248) #9, !srcloc !94
  %251 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %green, align 4
  %arrayidx60 = getelementptr i16, ptr %252, i32 %214
  %253 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %arrayidx60, align 2
  %255 = lshr i16 %254, 8
  %256 = zext i16 %255 to i32
  %257 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i266 = getelementptr i8, ptr %258, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266, i32 %256) #9, !srcloc !94
  %259 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %blue, align 4
  %arrayidx65 = getelementptr i16, ptr %260, i32 %214
  %261 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %arrayidx65, align 2
  %263 = lshr i16 %262, 8
  %264 = zext i16 %263 to i32
  %265 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i268 = getelementptr i8, ptr %266, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268, i32 %264) #9, !srcloc !94
  br label %if.end68

if.end68:                                         ; preds = %if.then40, %if.end35.if.end68_crit_edge
  %267 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %cursor, align 4
  %269 = and i16 %268, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %tobool72.not = icmp eq i16 %269, 0
  br i1 %tobool72.not, label %if.end68.cleanup_crit_edge, label %if.then73

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then73:                                        ; preds = %if.end68
  %data = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %270 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %data, align 4
  %mask75 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %272 = ptrtoint ptr %mask75 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %mask75, align 4
  %274 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %275, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 0) #9, !srcloc !94
  %276 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %cmp78290.not = icmp eq i32 %277, 0
  br i1 %cmp78290.not, label %if.then73.while.cond.preheader.preheader_crit_edge, label %for.body.lr.ph

if.then73.while.cond.preheader.preheader_crit_edge: ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.preheader

for.body.lr.ph:                                   ; preds = %if.then73
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  br label %for.body

for.cond113.preheader:                            ; preds = %for.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc)
  %cmp114296 = icmp slt i32 %inc, 64
  br i1 %cmp114296, label %for.cond113.preheader.while.cond.preheader.preheader_crit_edge, label %for.cond113.preheader.for.end123_crit_edge

for.cond113.preheader.for.end123_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end123

for.cond113.preheader.while.cond.preheader.preheader_crit_edge: ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.preheader

while.cond.preheader.preheader:                   ; preds = %for.cond113.preheader.while.cond.preheader.preheader_crit_edge, %if.then73.while.cond.preheader.preheader_crit_edge
  %i.1297.ph = phi i32 [ 0, %if.then73.while.cond.preheader.preheader_crit_edge ], [ %inc, %for.cond113.preheader.while.cond.preheader.preheader_crit_edge ]
  br label %while.cond.preheader

for.body:                                         ; preds = %for.end110.for.body_crit_edge, %for.body.lr.ph
  %i.0293 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end110.for.body_crit_edge ]
  %mask.0292 = phi ptr [ %273, %for.body.lr.ph ], [ %mask.1.lcssa320, %for.end110.for.body_crit_edge ]
  %bitmap.0291 = phi ptr [ %271, %for.body.lr.ph ], [ %bitmap.1.lcssa318, %for.end110.for.body_crit_edge ]
  %278 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %width, align 4
  %add82 = add i32 %279, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add82)
  %cmp86283.not = icmp ult i32 %add82, 8
  br i1 %cmp86283.not, label %for.body.for.body107_crit_edge, label %for.body88.preheader

for.body.for.body107_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body107

for.body88.preheader:                             ; preds = %for.body
  %shr83 = lshr i32 %add82, 3
  br label %for.body88

for.cond104.preheader:                            ; preds = %for.body88
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add82)
  %cmp105288 = icmp ult i32 %add82, 64
  br i1 %cmp105288, label %for.cond104.preheader.for.body107_crit_edge, label %for.cond104.preheader.for.end110_crit_edge

for.cond104.preheader.for.end110_crit_edge:       ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.cond104.preheader.for.body107_crit_edge:      ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body107

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %for.body88.preheader
  %j.0286 = phi i32 [ %dec, %for.body88.for.body88_crit_edge ], [ %shr83, %for.body88.preheader ]
  %mask.1285 = phi ptr [ %incdec.ptr103, %for.body88.for.body88_crit_edge ], [ %mask.0292, %for.body88.preheader ]
  %bitmap.1284 = phi ptr [ %incdec.ptr, %for.body88.for.body88_crit_edge ], [ %bitmap.0291, %for.body88.preheader ]
  %280 = ptrtoint ptr %bitmap.1284 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %bitmap.1284, align 1
  %282 = ptrtoint ptr %mask.1285 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %mask.1285, align 1
  %xor246 = xor i8 %283, %281
  %284 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %285)
  %cmp94 = icmp eq i16 %285, 0
  %and99247 = and i8 %283, %281
  %spec.select = select i1 %cmp94, i8 %and99247, i8 %xor246
  %conv102 = zext i8 %spec.select to i32
  %286 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i272 = getelementptr i8, ptr %287, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 %conv102) #9, !srcloc !94
  %incdec.ptr = getelementptr i8, ptr %bitmap.1284, i32 1
  %incdec.ptr103 = getelementptr i8, ptr %mask.1285, i32 1
  %dec = add nsw i32 %j.0286, -1
  %cmp86 = icmp ugt i32 %j.0286, 1
  br i1 %cmp86, label %for.body88.for.body88_crit_edge, label %for.cond104.preheader

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body88

for.body107:                                      ; preds = %for.cond104.preheader.for.body107_crit_edge, %for.body.for.body107_crit_edge
  %mask.1.lcssa321 = phi ptr [ %incdec.ptr103, %for.cond104.preheader.for.body107_crit_edge ], [ %mask.0292, %for.body.for.body107_crit_edge ]
  %bitmap.1.lcssa319 = phi ptr [ %incdec.ptr, %for.cond104.preheader.for.body107_crit_edge ], [ %bitmap.0291, %for.body.for.body107_crit_edge ]
  %288 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274 = getelementptr i8, ptr %289, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %add82)
  %cmp105 = icmp ult i32 %add82, 56
  br i1 %cmp105, label %for.body107.1, label %for.body107.for.end110_crit_edge

for.body107.for.end110_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.1:                                    ; preds = %for.body107
  %290 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.1 = getelementptr i8, ptr %291, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.1, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %add82)
  %cmp105.1 = icmp ult i32 %add82, 48
  br i1 %cmp105.1, label %for.body107.2, label %for.body107.1.for.end110_crit_edge

for.body107.1.for.end110_crit_edge:               ; preds = %for.body107.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.2:                                    ; preds = %for.body107.1
  %292 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.2 = getelementptr i8, ptr %293, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.2, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add82)
  %cmp105.2 = icmp ult i32 %add82, 40
  br i1 %cmp105.2, label %for.body107.3, label %for.body107.2.for.end110_crit_edge

for.body107.2.for.end110_crit_edge:               ; preds = %for.body107.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.3:                                    ; preds = %for.body107.2
  %294 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.3 = getelementptr i8, ptr %295, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.3, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add82)
  %cmp105.3 = icmp ult i32 %add82, 32
  br i1 %cmp105.3, label %for.body107.4, label %for.body107.3.for.end110_crit_edge

for.body107.3.for.end110_crit_edge:               ; preds = %for.body107.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.4:                                    ; preds = %for.body107.3
  %296 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.4 = getelementptr i8, ptr %297, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.4, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add82)
  %cmp105.4 = icmp ult i32 %add82, 24
  br i1 %cmp105.4, label %for.body107.5, label %for.body107.4.for.end110_crit_edge

for.body107.4.for.end110_crit_edge:               ; preds = %for.body107.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.5:                                    ; preds = %for.body107.4
  %298 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.5 = getelementptr i8, ptr %299, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.5, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add82)
  %cmp105.5 = icmp ult i32 %add82, 16
  br i1 %cmp105.5, label %for.body107.6, label %for.body107.5.for.end110_crit_edge

for.body107.5.for.end110_crit_edge:               ; preds = %for.body107.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.6:                                    ; preds = %for.body107.5
  %300 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.6 = getelementptr i8, ptr %301, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.6, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add82)
  %cmp105.6 = icmp ult i32 %add82, 8
  br i1 %cmp105.6, label %for.body107.7, label %for.body107.6.for.end110_crit_edge

for.body107.6.for.end110_crit_edge:               ; preds = %for.body107.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110

for.body107.7:                                    ; preds = %for.body107.6
  call void @__sanitizer_cov_trace_pc() #11
  %302 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i274.7 = getelementptr i8, ptr %303, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.7, i32 0) #9, !srcloc !94
  br label %for.end110

for.end110:                                       ; preds = %for.body107.7, %for.body107.6.for.end110_crit_edge, %for.body107.5.for.end110_crit_edge, %for.body107.4.for.end110_crit_edge, %for.body107.3.for.end110_crit_edge, %for.body107.2.for.end110_crit_edge, %for.body107.1.for.end110_crit_edge, %for.body107.for.end110_crit_edge, %for.cond104.preheader.for.end110_crit_edge
  %mask.1.lcssa320 = phi ptr [ %incdec.ptr103, %for.cond104.preheader.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.7 ], [ %mask.1.lcssa321, %for.body107.6.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.5.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.4.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.3.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.2.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.1.for.end110_crit_edge ], [ %mask.1.lcssa321, %for.body107.for.end110_crit_edge ]
  %bitmap.1.lcssa318 = phi ptr [ %incdec.ptr, %for.cond104.preheader.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.7 ], [ %bitmap.1.lcssa319, %for.body107.6.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.5.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.4.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.3.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.2.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.1.for.end110_crit_edge ], [ %bitmap.1.lcssa319, %for.body107.for.end110_crit_edge ]
  %inc = add nuw i32 %i.0293, 1
  %304 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %height, align 4
  %cmp78 = icmp ult i32 %inc, %305
  br i1 %cmp78, label %for.end110.for.body_crit_edge, label %for.cond113.preheader

for.end110.for.body_crit_edge:                    ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.cond.preheader:                             ; preds = %while.cond.preheader.while.cond.preheader_crit_edge, %while.cond.preheader.preheader
  %i.1297 = phi i32 [ %inc122, %while.cond.preheader.while.cond.preheader_crit_edge ], [ %i.1297.ph, %while.cond.preheader.preheader ]
  %306 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276 = getelementptr i8, ptr %307, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 0) #9, !srcloc !94
  %308 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.1 = getelementptr i8, ptr %309, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.1, i32 0) #9, !srcloc !94
  %310 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.2 = getelementptr i8, ptr %311, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.2, i32 0) #9, !srcloc !94
  %312 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.3 = getelementptr i8, ptr %313, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.3, i32 0) #9, !srcloc !94
  %314 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.4 = getelementptr i8, ptr %315, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.4, i32 0) #9, !srcloc !94
  %316 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.5 = getelementptr i8, ptr %317, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.5, i32 0) #9, !srcloc !94
  %318 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.6 = getelementptr i8, ptr %319, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.6, i32 0) #9, !srcloc !94
  %320 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i276.7 = getelementptr i8, ptr %321, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.7, i32 0) #9, !srcloc !94
  %inc122 = add nsw i32 %i.1297, 1
  %exitcond.not = icmp eq i32 %inc122, 64
  br i1 %exitcond.not, label %for.end123thread-pre-split, label %while.cond.preheader.while.cond.preheader_crit_edge

while.cond.preheader.while.cond.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.end123thread-pre-split:                       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %322 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %322)
  %.pr = load i32, ptr %height, align 4
  br label %for.end123

for.end123:                                       ; preds = %for.end123thread-pre-split, %for.cond113.preheader.for.end123_crit_edge
  %323 = phi i32 [ %.pr, %for.end123thread-pre-split ], [ %305, %for.cond113.preheader.for.end123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp128304.not = icmp eq i32 %323, 0
  br i1 %cmp128304.not, label %for.end123.while.cond162.preheader.preheader_crit_edge, label %for.body130.preheader

for.end123.while.cond162.preheader.preheader_crit_edge: ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond162.preheader.preheader

for.body130.preheader:                            ; preds = %for.end123
  %324 = ptrtoint ptr %mask75 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %mask75, align 4
  br label %for.body130

for.cond157.preheader:                            ; preds = %for.end153
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc155)
  %cmp158309 = icmp slt i32 %inc155, 64
  br i1 %cmp158309, label %for.cond157.preheader.while.cond162.preheader.preheader_crit_edge, label %for.cond157.preheader.cleanup_crit_edge

for.cond157.preheader.cleanup_crit_edge:          ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond157.preheader.while.cond162.preheader.preheader_crit_edge: ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond162.preheader.preheader

while.cond162.preheader.preheader:                ; preds = %for.cond157.preheader.while.cond162.preheader.preheader_crit_edge, %for.end123.while.cond162.preheader.preheader_crit_edge
  %i.3310.ph = phi i32 [ 0, %for.end123.while.cond162.preheader.preheader_crit_edge ], [ %inc155, %for.cond157.preheader.while.cond162.preheader.preheader_crit_edge ]
  br label %while.cond162.preheader

for.body130:                                      ; preds = %for.end153.for.body130_crit_edge, %for.body130.preheader
  %i.2306 = phi i32 [ %inc155, %for.end153.for.body130_crit_edge ], [ 0, %for.body130.preheader ]
  %mask.2305 = phi ptr [ %mask.3.lcssa327, %for.end153.for.body130_crit_edge ], [ %325, %for.body130.preheader ]
  %326 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %width, align 4
  %add134 = add i32 %327, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add134)
  %cmp139298.not = icmp ult i32 %add134, 8
  br i1 %cmp139298.not, label %for.body130.for.body150_crit_edge, label %for.body141.preheader

for.body130.for.body150_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body150

for.body141.preheader:                            ; preds = %for.body130
  %shr135 = lshr i32 %add134, 3
  br label %for.body141

for.cond147.preheader:                            ; preds = %for.body141
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add134)
  %cmp148302 = icmp ult i32 %add134, 64
  br i1 %cmp148302, label %for.cond147.preheader.for.body150_crit_edge, label %for.cond147.preheader.for.end153_crit_edge

for.cond147.preheader.for.end153_crit_edge:       ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.cond147.preheader.for.body150_crit_edge:      ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body150

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %for.body141.preheader
  %j131.0300 = phi i32 [ %dec145, %for.body141.for.body141_crit_edge ], [ %shr135, %for.body141.preheader ]
  %mask.3299 = phi ptr [ %incdec.ptr143, %for.body141.for.body141_crit_edge ], [ %mask.2305, %for.body141.preheader ]
  %328 = ptrtoint ptr %mask.3299 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %mask.3299, align 1
  %conv142 = zext i8 %329 to i32
  %330 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %331, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %conv142) #9, !srcloc !94
  %incdec.ptr143 = getelementptr i8, ptr %mask.3299, i32 1
  %dec145 = add nsw i32 %j131.0300, -1
  %cmp139 = icmp ugt i32 %j131.0300, 1
  br i1 %cmp139, label %for.body141.for.body141_crit_edge, label %for.cond147.preheader

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body141

for.body150:                                      ; preds = %for.cond147.preheader.for.body150_crit_edge, %for.body130.for.body150_crit_edge
  %mask.3.lcssa328 = phi ptr [ %incdec.ptr143, %for.cond147.preheader.for.body150_crit_edge ], [ %mask.2305, %for.body130.for.body150_crit_edge ]
  %332 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %333, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %add134)
  %cmp148 = icmp ult i32 %add134, 56
  br i1 %cmp148, label %for.body150.1, label %for.body150.for.end153_crit_edge

for.body150.for.end153_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.1:                                    ; preds = %for.body150
  %334 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.1 = getelementptr i8, ptr %335, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.1, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %add134)
  %cmp148.1 = icmp ult i32 %add134, 48
  br i1 %cmp148.1, label %for.body150.2, label %for.body150.1.for.end153_crit_edge

for.body150.1.for.end153_crit_edge:               ; preds = %for.body150.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.2:                                    ; preds = %for.body150.1
  %336 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.2 = getelementptr i8, ptr %337, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.2, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add134)
  %cmp148.2 = icmp ult i32 %add134, 40
  br i1 %cmp148.2, label %for.body150.3, label %for.body150.2.for.end153_crit_edge

for.body150.2.for.end153_crit_edge:               ; preds = %for.body150.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.3:                                    ; preds = %for.body150.2
  %338 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.3 = getelementptr i8, ptr %339, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.3, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add134)
  %cmp148.3 = icmp ult i32 %add134, 32
  br i1 %cmp148.3, label %for.body150.4, label %for.body150.3.for.end153_crit_edge

for.body150.3.for.end153_crit_edge:               ; preds = %for.body150.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.4:                                    ; preds = %for.body150.3
  %340 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.4 = getelementptr i8, ptr %341, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.4, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add134)
  %cmp148.4 = icmp ult i32 %add134, 24
  br i1 %cmp148.4, label %for.body150.5, label %for.body150.4.for.end153_crit_edge

for.body150.4.for.end153_crit_edge:               ; preds = %for.body150.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.5:                                    ; preds = %for.body150.4
  %342 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.5 = getelementptr i8, ptr %343, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.5, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add134)
  %cmp148.5 = icmp ult i32 %add134, 16
  br i1 %cmp148.5, label %for.body150.6, label %for.body150.5.for.end153_crit_edge

for.body150.5.for.end153_crit_edge:               ; preds = %for.body150.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.6:                                    ; preds = %for.body150.5
  %344 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.6 = getelementptr i8, ptr %345, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.6, i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add134)
  %cmp148.6 = icmp ult i32 %add134, 8
  br i1 %cmp148.6, label %for.body150.7, label %for.body150.6.for.end153_crit_edge

for.body150.6.for.end153_crit_edge:               ; preds = %for.body150.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end153

for.body150.7:                                    ; preds = %for.body150.6
  call void @__sanitizer_cov_trace_pc() #11
  %346 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i280.7 = getelementptr i8, ptr %347, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.7, i32 0) #9, !srcloc !94
  br label %for.end153

for.end153:                                       ; preds = %for.body150.7, %for.body150.6.for.end153_crit_edge, %for.body150.5.for.end153_crit_edge, %for.body150.4.for.end153_crit_edge, %for.body150.3.for.end153_crit_edge, %for.body150.2.for.end153_crit_edge, %for.body150.1.for.end153_crit_edge, %for.body150.for.end153_crit_edge, %for.cond147.preheader.for.end153_crit_edge
  %mask.3.lcssa327 = phi ptr [ %incdec.ptr143, %for.cond147.preheader.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.7 ], [ %mask.3.lcssa328, %for.body150.6.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.5.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.4.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.3.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.2.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.1.for.end153_crit_edge ], [ %mask.3.lcssa328, %for.body150.for.end153_crit_edge ]
  %inc155 = add nuw i32 %i.2306, 1
  %348 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %height, align 4
  %cmp128 = icmp ult i32 %inc155, %349
  br i1 %cmp128, label %for.end153.for.body130_crit_edge, label %for.cond157.preheader

for.end153.for.body130_crit_edge:                 ; preds = %for.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body130

while.cond162.preheader:                          ; preds = %while.cond162.preheader.while.cond162.preheader_crit_edge, %while.cond162.preheader.preheader
  %i.3310 = phi i32 [ %inc169, %while.cond162.preheader.while.cond162.preheader_crit_edge ], [ %i.3310.ph, %while.cond162.preheader.preheader ]
  %350 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %351, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 0) #9, !srcloc !94
  %352 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.1 = getelementptr i8, ptr %353, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.1, i32 0) #9, !srcloc !94
  %354 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.2 = getelementptr i8, ptr %355, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.2, i32 0) #9, !srcloc !94
  %356 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.3 = getelementptr i8, ptr %357, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.3, i32 0) #9, !srcloc !94
  %358 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.4 = getelementptr i8, ptr %359, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.4, i32 0) #9, !srcloc !94
  %360 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.5 = getelementptr i8, ptr %361, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.5, i32 0) #9, !srcloc !94
  %362 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.6 = getelementptr i8, ptr %363, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.6, i32 0) #9, !srcloc !94
  %364 = ptrtoint ptr %v_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %v_regs.i.i, align 4
  %add.ptr.i282.7 = getelementptr i8, ptr %365, i32 16472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.7, i32 0) #9, !srcloc !94
  %inc169 = add nsw i32 %i.3310, 1
  %exitcond311.not = icmp eq i32 %inc169, 64
  br i1 %exitcond311.not, label %while.cond162.preheader.cleanup_crit_edge, label %while.cond162.preheader.while.cond162.preheader_crit_edge

while.cond162.preheader.while.cond162.preheader_crit_edge: ; preds = %while.cond162.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond162.preheader

while.cond162.preheader.cleanup_crit_edge:        ; preds = %while.cond162.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.cond162.preheader.cleanup_crit_edge, %for.cond157.preheader.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %while.end.i, %if.end59.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end59.i.cleanup_crit_edge ], [ 0, %while.end.i ], [ 0, %for.cond157.preheader.cleanup_crit_edge ], [ 0, %while.cond162.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm2fb_sync(ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %v_regs.i = getelementptr inbounds %struct.pm2fb_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 35904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  br label %do.body2

do.body2:                                         ; preds = %do.cond12.do.body2_crit_edge, %entry
  %4 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i1922 = getelementptr i8, ptr %5, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1922) #9, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23 = icmp eq i32 %6, 0
  br i1 %cmp23, label %do.body2.do.end7_crit_edge, label %do.body2.do.cond12_crit_edge

do.body2.do.cond12_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond12

do.body2.do.end7_crit_edge:                       ; preds = %do.body2
  br label %do.end7

do.end7:                                          ; preds = %do.end7.do.end7_crit_edge, %do.body2.do.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !123
  %7 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #9, !srcloc !93
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.end7.do.end7_crit_edge, label %do.end7.do.cond12_crit_edge

do.end7.do.cond12_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond12

do.end7.do.end7_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.cond12:                                        ; preds = %do.end7.do.cond12_crit_edge, %do.body2.do.cond12_crit_edge
  %10 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 8192
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #9, !srcloc !93
  %cmp14.not = icmp eq i32 %12, 392
  br i1 %cmp14.not, label %do.end15, label %do.cond12.do.body2_crit_edge

do.cond12.do.body2_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

do.end15:                                         ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_video(ptr nocapture noundef readonly %p, i32 noundef %video) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %video, -121
  %or = or i32 %and, 40
  %v_regs.i = getelementptr inbounds %struct.pm2fb_par, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #9, !srcloc !94
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and2 = and i32 %video, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and2)
  %cmp = icmp eq i32 %and2, 24
  %spec.select = select i1 %cmp, i32 6, i32 2
  %and4 = and i32 %video, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 96
  %or7 = or i32 %spec.select, 8
  %tmp.1 = select i1 %cmp5, i32 %or7, i32 %spec.select
  %5 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 30) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %8, i32 16464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %tmp.1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %video, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 24
  %spec.select34 = zext i1 %cmp11 to i32
  %and15 = and i32 %video, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 96
  %or18 = or i32 %spec.select34, 4
  %tmp.3 = select i1 %cmp16, i32 %or18, i32 %spec.select34
  %9 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %10, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i36, i32 1) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %v_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v_regs.i, align 4
  %add.ptr.i5.i37 = getelementptr i8, ptr %12, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i37, i32 %tmp.3) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb9, %sw.bb
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_pm2fb__305_1805_pm2fb_init6, !1, !"__initcall__kmod_pm2fb__305_1805_pm2fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1805, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1797, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1771, i32 38}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1774, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1776, i32 30}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1778, i32 31}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1780, i32 31}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1782, i32 31}
!16 = distinct !{null, !17, !"lowhsync", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/pm2fb.c", i32 77, i32 13}
!18 = distinct !{null, !19, !"lowvsync", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/pm2fb.c", i32 78, i32 13}
!20 = !{ptr @hwcursor, !21, !"hwcursor", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/pm2fb.c", i32 65, i32 12}
!22 = distinct !{null, !23, !"nomtrr", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/pm2fb.c", i32 80, i32 13}
!24 = distinct !{null, !25, !"noaccel", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/pm2fb.c", i32 79, i32 13}
!26 = !{ptr @mode_option, !27, !"mode_option", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/pm2fb.c", i32 66, i32 14}
!28 = !{ptr @pm2fb_driver, !29, !"pm2fb_driver", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1748, i32 26}
!30 = !{ptr @pm2fb_id_table, !31, !"pm2fb_id_table", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1738, i32 35}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1523, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pm2fb_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @pm2fb_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1534, i32 24}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1538, i32 24}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1542, i32 24}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1561, i32 7}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1563, i32 3}
!48 = !{ptr @pm2fb_probe._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pm2fb_probe._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1569, i32 3}
!52 = !{ptr @pm2fb_probe._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pm2fb_probe._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1630, i32 7}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1632, i32 3}
!58 = !{ptr @pm2fb_probe._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pm2fb_probe._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1638, i32 3}
!62 = !{ptr @pm2fb_probe._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pm2fb_probe._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1668, i32 3}
!66 = !{ptr @pm2fb_probe._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pm2fb_probe._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1674, i32 17}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1688, i32 2}
!72 = !{ptr @pm2fb_probe._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @pm2fb_probe._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @pm2fb_fix, !75, !"pm2fb_fix", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/pm2fb.c", i32 103, i32 33}
!76 = !{ptr @pm2fb_ops, !77, !"pm2fb_ops", i1 false, i1 false}
!77 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1487, i32 28}
!78 = !{ptr @pp_table, !79, !"pp_table", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/pm2fb.c", i32 201, i32 3}
!80 = !{ptr @cursor_bits_lookup, !81, !"cursor_bits_lookup", i1 false, i1 false}
!81 = !{!"../drivers/video/fbdev/pm2fb.c", i32 1255, i32 17}
!82 = !{ptr @pm2fb_var, !83, !"pm2fb_var", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/pm2fb.c", i32 116, i32 39}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 6261418}
!94 = !{i64 6261000}
!95 = !{i64 2156257548}
!96 = !{i64 2156257839}
!97 = !{i64 2156257681}
!98 = !{i64 2156257982}
!99 = !{i64 2156259613}
!100 = !{i64 2156259775}
!101 = !{i64 2156253713}
!102 = !{i64 2156253868}
!103 = !{i64 2156254192}
!104 = !{i64 2156254347}
!105 = !{i64 2156257370}
!106 = !{i64 2156260762}
!107 = !{i64 2156253382}
!108 = !{i64 2156253056}
!109 = !{i64 2156260891}
!110 = !{i64 2156285368}
!111 = !{i64 2156285710}
!112 = !{i64 2156285884}
!113 = !{i64 2156286039}
!114 = !{i64 2156261019}
!115 = !{i64 2156260311}
!116 = !{i64 2156260466}
!117 = !{i64 2156260621}
!118 = !{i64 2156290658}
!119 = !{i64 2156290843}
!120 = !{i64 2156291084}
!121 = !{i64 2156290134}
!122 = !{i64 2156290416}
!123 = !{i64 2156290258}
