; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/pm3fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/pm3fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.84 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.pm3_par = type { ptr, i32, i32, [16 x i32], i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }

@__initcall__kmod_pm3fb__305_1555_pm3fb_init6 = internal global ptr @pm3fb_init, section ".initcall6.init", align 4
@__param_str_mode_option = internal constant [18 x i8] c"pm3fb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype306 = internal constant [33 x i8] c"pm3fb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option307 = internal constant [62 x i8] c"pm3fb.parm=mode_option:Initial video mode e.g. '648x480-8@60'\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [14 x i8] c"pm3fb.noaccel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@noaccel = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype308 = internal constant [28 x i8] c"pm3fb.parmtype=noaccel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel309 = internal constant [40 x i8] c"pm3fb.parm=noaccel:Disable acceleration\00", section ".modinfo", align 1
@__param_str_hwcursor = internal constant [15 x i8] c"pm3fb.hwcursor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@hwcursor = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_hwcursor = internal constant %struct.kernel_param { ptr @__param_str_hwcursor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @hwcursor } }, section "__param", align 4
@__UNIQUE_ID_hwcursortype310 = internal constant [28 x i8] c"pm3fb.parmtype=hwcursor:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hwcursor311 = internal constant [76 x i8] c"pm3fb.parm=hwcursor:Enable hardware cursor (1=enable, 0=disable, default=1)\00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [13 x i8] c"pm3fb.nomtrr\00", align 1
@nomtrr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nomtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype312 = internal constant [27 x i8] c"pm3fb.parmtype=nomtrr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr313 = internal constant [69 x i8] c"pm3fb.parm=nomtrr:Disable MTRR support (0 or 1=disabled) (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [54 x i8] c"pm3fb.description=Permedia3 framebuffer device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [37 x i8] c"pm3fb.file=drivers/video/fbdev/pm3fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [18 x i8] c"pm3fb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pm3fb\00", [26 x i8] zeroinitializer }, align 32
@pm3fb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pm3fb_id_table, ptr @pm3fb_probe, ptr @pm3fb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noaccel\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hwcursor=\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@pm3fb_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 15677, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014pm3fb: Can't enable PCI dev: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pm3fb_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/video/fbdev/pm3fb.c\00", [36 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr = internal global ptr @pm3fb_probe._entry, section ".printk_index", align 4
@pm3fb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"Permedia3\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 3, i16 1, i16 1, i16 0, i32 0, i32 0, i32 0, i32 37, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm3fb regbase\00", [18 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.7, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014pm3fb: Can't reserve regbase.\0A\00", [63 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.11 = internal global ptr @pm3fb_probe._entry.9, section ".printk_index", align 4
@pm3fb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.7, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014pm3fb: Can't remap %s register area.\0A\00", [56 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.14 = internal global ptr @pm3fb_probe._entry.12, section ".printk_index", align 4
@pm3fb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014pm3fb: Can't find memory on board.\0A\00", [58 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.17 = internal global ptr @pm3fb_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm3fb smem\00", [21 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014pm3fb: Can't reserve smem.\0A\00", [34 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.21 = internal global ptr @pm3fb_probe._entry.19, section ".printk_index", align 4
@pm3fb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.7, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014pm3fb: Can't ioremap smem area.\0A\00", [61 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.24 = internal global ptr @pm3fb_probe._entry.22, section ".printk_index", align 4
@pm3fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm3fb_check_var, ptr @pm3fb_set_par, ptr @pm3fb_setcolreg, ptr null, ptr @pm3fb_blank, ptr @pm3fb_pan_display, ptr @pm3fb_fillrect, ptr @pm3fb_copyarea, ptr @pm3fb_imageblit, ptr @pm3fb_cursor, ptr @pm3fb_sync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.7, i32 1396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017disabling acceleration\0A\00", [38 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.27 = internal global ptr @pm3fb_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480@60\00", [21 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.6, ptr @.str.7, i32 1438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", [32 x i8] zeroinitializer }, align 32
@pm3fb_probe._entry_ptr.31 = internal global ptr @pm3fb_probe._entry.29, section ".printk_index", align 4
@pm3fb_size_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.32, ptr @.str.7, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm3fb_size_memory\00", [46 x i8] zeroinitializer }, align 32
@pm3fb_size_memory._entry_ptr = internal global ptr @pm3fb_size_memory._entry, section ".printk_index", align 4
@pm3fb_size_memory._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.32, ptr @.str.7, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pm3fb_size_memory._entry_ptr.34 = internal global ptr @pm3fb_size_memory._entry.33, section ".printk_index", align 4
@cursor_bits_lookup = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00@\10P\04D\14T\01A\11Q\05E\15U", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 12, i64 15, i64 16, i64 32]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 56, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"noaccel\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 57, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"hwcursor\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 55, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 58, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1539, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"pm3fb_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1489, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1515, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1518, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1520, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1522, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"pm3fb_id_table\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1482, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1320, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"pm3fb_fix\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 80, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1344, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1346, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1352, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1362, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1365, i32 7 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1367, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1373, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"pm3fb_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1203, i32 28 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1396, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1415, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1438, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1235, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 1241, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"cursor_bits_lookup\00", align 1
@___asan_gen_.159 = private constant [31 x i8] c"../drivers/video/fbdev/pm3fb.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 607, i32 17 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_hwcursor311, ptr @__UNIQUE_ID_hwcursortype310, ptr @__UNIQUE_ID_license316, ptr @__UNIQUE_ID_mode_option307, ptr @__UNIQUE_ID_mode_optiontype306, ptr @__UNIQUE_ID_noaccel309, ptr @__UNIQUE_ID_noacceltype308, ptr @__UNIQUE_ID_nomtrr313, ptr @__UNIQUE_ID_nomtrrtype312, ptr @__initcall__kmod_pm3fb__305_1555_pm3fb_init6, ptr @__param_hwcursor, ptr @__param_mode_option, ptr @__param_noaccel, ptr @__param_nomtrr, ptr @pm3fb_probe._entry, ptr @pm3fb_probe._entry.12, ptr @pm3fb_probe._entry.15, ptr @pm3fb_probe._entry.19, ptr @pm3fb_probe._entry.22, ptr @pm3fb_probe._entry.25, ptr @pm3fb_probe._entry.29, ptr @pm3fb_probe._entry.9, ptr @pm3fb_probe._entry_ptr, ptr @pm3fb_probe._entry_ptr.11, ptr @pm3fb_probe._entry_ptr.14, ptr @pm3fb_probe._entry_ptr.17, ptr @pm3fb_probe._entry_ptr.21, ptr @pm3fb_probe._entry_ptr.24, ptr @pm3fb_probe._entry_ptr.27, ptr @pm3fb_probe._entry_ptr.31, ptr @pm3fb_size_memory._entry, ptr @pm3fb_size_memory._entry.33, ptr @pm3fb_size_memory._entry_ptr, ptr @pm3fb_size_memory._entry_ptr.34, ptr @mode_option, ptr @noaccel, ptr @hwcursor, ptr @nomtrr, ptr @.str, ptr @pm3fb_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pm3fb_id_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pm3fb_fix, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @pm3fb_ops, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @cursor_bits_lookup], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noaccel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwcursor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_size_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm3fb_size_memory._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_bits_lookup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_init() #0 section ".init.text" align 64 {
entry:
  %option = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #8
  %0 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %option, align 4
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
  call fastcc void @pm3fb_setup(ptr noundef %2) #11
  %call2 = call i32 @__pci_register_driver(ptr noundef nonnull @pm3fb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm3fb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
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
  %call1 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #8
  %cmp.not2 = icmp eq ptr %call1, null
  br i1 %cmp.not2, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call1, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.else

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call4 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(8) @.str.2, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  store i8 1, ptr @noaccel, align 1
  br label %while.cond.backedge

if.else7:                                         ; preds = %if.else
  %call8 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(10) @.str.3, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call3, i32 9
  %call11 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #8
  store i32 %call11, ptr @hwcursor, align 4
  br label %while.cond.backedge

if.else12:                                        ; preds = %if.else7
  %call13 = call i32 @strncmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.4, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  store i8 1, ptr @nomtrr, align 1
  br label %while.cond.backedge

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call3, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else16, %if.then15, %if.then10, %if.then6, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.1) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
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
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_probe(ptr noundef %dev, ptr nocapture noundef readnone %ent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call4 = tail call ptr @framebuffer_alloc(i32 noundef 80, ptr noundef %dev1) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %par8 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 30
  %0 = ptrtoint ptr %par8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par8, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  store i32 65536, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 11), align 4
  %add = add i32 %3, 65536
  store i32 %add, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 10), align 4
  %call10 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %add, i32 noundef 65536, ptr noundef nonnull @.str.8, i32 noundef 0) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %err_exit_neither

if.end18:                                         ; preds = %if.end7
  %4 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 10), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 11), align 4
  %call19 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %1, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @pm3fb_fix) #12
  %7 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 10), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %8) #8
  br label %err_exit_neither

if.end28:                                         ; preds = %if.end18
  %arrayidx30 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx30, align 8
  store i32 %10, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  store i32 67108864, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef 67108864, ptr noundef nonnull @.str.18, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %pm3fb_size_memory.exit.thread

if.end.i:                                         ; preds = %if.end28
  %11 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  %call2.i = tail call ptr @ioremap(i32 noundef %11, i32 noundef %12) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  %13 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %14) #8
  br label %pm3fb_size_memory.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4104
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i.i = icmp eq i32 %20, 0
  br i1 %cmp6.i.i, label %if.end10.i.do.end.i.i_crit_edge, label %if.end10.i.PM3_WAIT.exit.i_crit_edge

if.end10.i.PM3_WAIT.exit.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i

if.end10.i.do.end.i.i_crit_edge:                  ; preds = %if.end10.i
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.end10.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !115
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.PM3_WAIT.exit.i_crit_edge

do.end.i.i.PM3_WAIT.exit.i_crit_edge:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

PM3_WAIT.exit.i:                                  ; preds = %do.end.i.i.PM3_WAIT.exit.i_crit_edge, %if.end10.i.PM3_WAIT.exit.i_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %25, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 -1) #8, !srcloc !118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call2.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call2.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21.i164 = icmp eq i32 %26, 0
  br i1 %cmp21.i164, label %PM3_WAIT.exit.i.if.then22.i_crit_edge, label %PM3_WAIT.exit.i.if.end65.i_crit_edge

PM3_WAIT.exit.i.if.end65.i_crit_edge:             ; preds = %PM3_WAIT.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

PM3_WAIT.exit.i.if.then22.i_crit_edge:            ; preds = %PM3_WAIT.exit.i
  br label %if.then22.i

for.body.i:                                       ; preds = %if.then22.i
  %mul.i = mul nuw nsw i32 %inc.i, 3430008
  %mul13.i = shl nuw nsw i32 %inc.i, 20
  %add.ptr.i = getelementptr i8, ptr %call2.i, i32 %mul13.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %mul.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !115
  %cmp21.i = icmp eq i32 %27, %mul.i
  br i1 %cmp21.i, label %for.body.i.if.then22.i_crit_edge, label %for.body.i.do.body30.i.preheader_crit_edge

for.body.i.do.body30.i.preheader_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30.i.preheader

for.body.i.if.then22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22.i

if.then22.i:                                      ; preds = %for.body.i.if.then22.i_crit_edge, %PM3_WAIT.exit.i.if.then22.i_crit_edge
  %i.0115.i165 = phi i32 [ %inc.i, %for.body.i.if.then22.i_crit_edge ], [ 0, %PM3_WAIT.exit.i.if.then22.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0115.i165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.then22.i.do.body30.i.preheader_crit_edge, label %for.body.i

if.then22.i.do.body30.i.preheader_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30.i.preheader

do.body30.i.preheader:                            ; preds = %if.then22.i.do.body30.i.preheader_crit_edge, %for.body.i.do.body30.i.preheader_crit_edge
  br label %do.body30.i

do.body30.i:                                      ; preds = %do.body30.i.do.body30.i_crit_edge, %do.body30.i.preheader
  %i.1117.i = phi i32 [ %inc36.i, %do.body30.i.do.body30.i_crit_edge ], [ 0, %do.body30.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %mul33.i = shl nuw nsw i32 %i.1117.i, 20
  %add.ptr34.i = getelementptr i8, ptr %call2.i, i32 %mul33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 0) #8, !srcloc !118
  %inc36.i = add nuw nsw i32 %i.1117.i, 1
  %exitcond120.not.i = icmp eq i32 %inc36.i, 32
  br i1 %exitcond120.not.i, label %do.body38.i, label %do.body30.i.do.body30.i_crit_edge

do.body30.i.do.body30.i_crit_edge:                ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30.i

do.body38.i:                                      ; preds = %do.body30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  br label %for.body43.i

for.cond41.i:                                     ; preds = %for.body43.i
  %inc63.i = add nuw nsw i32 %i.2118.i, 1
  %exitcond121.not.i = icmp eq i32 %inc63.i, 64
  br i1 %exitcond121.not.i, label %for.cond41.i.if.end65.i_crit_edge, label %for.cond41.i.for.body43.i_crit_edge

for.cond41.i.for.body43.i_crit_edge:              ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43.i

for.cond41.i.if.end65.i_crit_edge:                ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

for.body43.i:                                     ; preds = %for.cond41.i.for.body43.i_crit_edge, %do.body38.i
  %memsize.1119.i = phi i32 [ %i.0115.i165, %do.body38.i ], [ %i.2118.i, %for.cond41.i.for.body43.i_crit_edge ]
  %i.2118.i = phi i32 [ 32, %do.body38.i ], [ %inc63.i, %for.cond41.i.for.body43.i_crit_edge ]
  %mul44.i = mul nuw nsw i32 %i.2118.i, 3430008
  %mul45.i = shl nuw nsw i32 %i.2118.i, 20
  %add.ptr46.i = getelementptr i8, ptr %call2.i, i32 %mul45.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %mul44.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #8, !srcloc !115
  %mul53.i = add nsw i32 %mul45.i, -33554432
  %add.ptr54.i = getelementptr i8, ptr %call2.i, i32 %mul53.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %mul44.i)
  %cmp57.i = icmp eq i32 %28, %mul44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp58.i = icmp eq i32 %29, 0
  %or.cond.i = select i1 %cmp57.i, i1 %cmp58.i, i1 false
  br i1 %or.cond.i, label %for.cond41.i, label %for.body43.i.if.end65.i_crit_edge

for.body43.i.if.end65.i_crit_edge:                ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.end65.i:                                       ; preds = %for.body43.i.if.end65.i_crit_edge, %for.cond41.i.if.end65.i_crit_edge, %PM3_WAIT.exit.i.if.end65.i_crit_edge
  %memsize.2.i = phi i32 [ 0, %PM3_WAIT.exit.i.if.end65.i_crit_edge ], [ 63, %for.cond41.i.if.end65.i_crit_edge ], [ %memsize.1119.i, %for.body43.i.if.end65.i_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i5.i108.i = getelementptr i8, ptr %31, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i108.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.i109.i = icmp eq i32 %32, 0
  br i1 %cmp6.i109.i, label %if.end65.i.do.end.i112.i_crit_edge, label %if.end65.i.pm3fb_size_memory.exit_crit_edge

if.end65.i.pm3fb_size_memory.exit_crit_edge:      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_size_memory.exit

if.end65.i.do.end.i112.i_crit_edge:               ; preds = %if.end65.i
  br label %do.end.i112.i

do.end.i112.i:                                    ; preds = %do.end.i112.i.do.end.i112.i_crit_edge, %if.end65.i.do.end.i112.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i.i110.i = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i110.i) #8, !srcloc !115
  %cmp.i111.i = icmp eq i32 %35, 0
  br i1 %cmp.i111.i, label %do.end.i112.i.do.end.i112.i_crit_edge, label %do.end.i112.i.pm3fb_size_memory.exit_crit_edge

do.end.i112.i.pm3fb_size_memory.exit_crit_edge:   ; preds = %do.end.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_size_memory.exit

do.end.i112.i.do.end.i112.i_crit_edge:            ; preds = %do.end.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i112.i

pm3fb_size_memory.exit.thread:                    ; preds = %do.end7.i, %do.end.i
  store i32 0, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  br label %do.end37

pm3fb_size_memory.exit:                           ; preds = %do.end.i112.i.pm3fb_size_memory.exit_crit_edge, %if.end65.i.pm3fb_size_memory.exit_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %37, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 %17) #8, !srcloc !118
  tail call void @iounmap(ptr noundef nonnull %call2.i) #8
  %38 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %38, i32 noundef %39) #8
  %add67.i = shl i32 %memsize.2.i, 20
  %mul68.i = add i32 %add67.i, 1048576
  store i32 %mul68.i, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul68.i)
  %tobool33.not = icmp eq i32 %mul68.i, 0
  br i1 %tobool33.not, label %pm3fb_size_memory.exit.do.end37_crit_edge, label %if.end40

pm3fb_size_memory.exit.do.end37_crit_edge:        ; preds = %pm3fb_size_memory.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

do.end37:                                         ; preds = %pm3fb_size_memory.exit.do.end37_crit_edge, %pm3fb_size_memory.exit.thread
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %err_exit_mmio

if.end40:                                         ; preds = %pm3fb_size_memory.exit
  %40 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %call41 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %40, i32 noundef %mul68.i, ptr noundef nonnull @.str.18, i32 noundef 0) #8
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %err_exit_mmio

if.end49:                                         ; preds = %if.end40
  %41 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %42 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  %call50 = tail call ptr @ioremap_wc(i32 noundef %41, i32 noundef %42) #8
  %43 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 25
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call50, ptr %43, align 4
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  %45 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %46 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %45, i32 noundef %46) #8
  br label %err_exit_mmio

if.end58:                                         ; preds = %if.end49
  %47 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 26
  %48 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %screen_size, align 4
  %49 = load i8, ptr @nomtrr, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool59.not = icmp eq i8 %49, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %wc_cookie = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %wc_cookie, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 20
  %51 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pm3fb_ops, ptr %fbops, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %add.ptr.i161 = getelementptr i8, ptr %53, i32 12376
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #8, !srcloc !115
  %video = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %video to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %video, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 7
  %56 = call ptr @memcpy(ptr %fix, ptr @pm3fb_fix, i32 68)
  %palette = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 3
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 27
  %57 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %palette, ptr %pseudo_palette, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 2
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 14080, ptr %flags, align 4
  %59 = load i8, ptr @noaccel, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool64.not = icmp eq i8 %59, 0
  br i1 %tobool64.not, label %if.end62.if.end72_crit_edge, label %do.end68

if.end62.if.end72_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 4
  %or = or i32 %61, 2
  store i32 %or, ptr %flags, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end68, %if.end62.if.end72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 8192) #13
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 10
  %63 = ptrtoint ptr %pixmap to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i, ptr %pixmap, align 4
  %tobool76.not = icmp eq ptr %call7.i, null
  br i1 %tobool76.not, label %if.end72.err_exit_pixmap_crit_edge, label %if.end78

if.end72.err_exit_pixmap_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit_pixmap

if.end78:                                         ; preds = %if.end72
  %size = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8192, ptr %size, align 4
  %buf_align = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 10, i32 3
  %65 = ptrtoint ptr %buf_align to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %buf_align, align 4
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 10, i32 4
  %66 = ptrtoint ptr %scan_align to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %scan_align, align 4
  %access_align = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 10, i32 5
  %67 = ptrtoint ptr %access_align to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 32, ptr %access_align, align 4
  %flags84 = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 10, i32 6
  %68 = ptrtoint ptr %flags84 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %flags84, align 4
  %69 = load ptr, ptr @mode_option, align 4
  %tobool85.not = icmp eq ptr %69, null
  br i1 %tobool85.not, label %if.then86, label %if.end78.if.end87_crit_edge

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then86:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  store ptr @.str.28, ptr @mode_option, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end78.if.end87_crit_edge
  %var = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 6
  %70 = load ptr, ptr @mode_option, align 4
  %call88 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef %call4, ptr noundef %70, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 8) #8
  %71 = zext i32 %call88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call88, label %if.end91 [
    i32 0, label %if.end87.err_exit_both_crit_edge
    i32 4, label %if.end87.err_exit_both_crit_edge173
  ]

if.end87.err_exit_both_crit_edge173:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit_both

if.end87.err_exit_both_crit_edge:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit_both

if.end91:                                         ; preds = %if.end87
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 12
  %call92 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.end91.err_exit_both_crit_edge, label %if.end95

if.end91.err_exit_both_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit_both

if.end95:                                         ; preds = %if.end91
  %call97 = tail call i32 @pm3fb_check_var(ptr noundef %var, ptr noundef %call4)
  %call98 = tail call i32 @register_framebuffer(ptr noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then100, label %do.end104

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_exit_both

do.end104:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %call4, i32 0, i32 1
  %72 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %node, align 4
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %73, ptr noundef %fix) #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %74 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call4, ptr %driver_data.i.i, align 4
  br label %cleanup

err_exit_both:                                    ; preds = %if.then100, %if.end91.err_exit_both_crit_edge, %if.end87.err_exit_both_crit_edge, %if.end87.err_exit_both_crit_edge173
  %retval2.0 = phi i32 [ -22, %if.then100 ], [ -22, %if.end87.err_exit_both_crit_edge ], [ -22, %if.end87.err_exit_both_crit_edge173 ], [ -12, %if.end91.err_exit_both_crit_edge ]
  %75 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %76) #8
  br label %err_exit_pixmap

err_exit_pixmap:                                  ; preds = %err_exit_both, %if.end72.err_exit_pixmap_crit_edge
  %retval2.1 = phi i32 [ %retval2.0, %err_exit_both ], [ -12, %if.end72.err_exit_pixmap_crit_edge ]
  %77 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %43, align 4
  tail call void @iounmap(ptr noundef %78) #8
  %79 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 1), align 4
  %80 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 2), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %79, i32 noundef %80) #8
  br label %err_exit_mmio

err_exit_mmio:                                    ; preds = %err_exit_pixmap, %do.end55, %do.end46, %do.end37
  %retval2.2 = phi i32 [ %retval2.1, %err_exit_pixmap ], [ -6, %do.end55 ], [ -6, %do.end46 ], [ -6, %do.end37 ]
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %82) #8
  %83 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 10), align 4
  %84 = load i32, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @pm3fb_fix, i32 0, i32 11), align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %83, i32 noundef %84) #8
  br label %err_exit_neither

err_exit_neither:                                 ; preds = %err_exit_mmio, %do.end25, %do.end15
  %retval2.3 = phi i32 [ %retval2.2, %err_exit_mmio ], [ -6, %do.end25 ], [ -6, %do.end15 ]
  tail call void @framebuffer_release(ptr noundef nonnull %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %err_exit_neither, %do.end104, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval2.3, %err_exit_neither ], [ 0, %do.end104 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm3fb_remove(ptr nocapture noundef readonly %dev) #4 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #10
  %par2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par2, align 4
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  %4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %6) #8
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %smem_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %8, i32 noundef %10) #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %12) #8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 10
  %13 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mmio_start, align 4
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 11
  %15 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmio_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef %16) #8
  %pixmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pixmap, align 4
  tail call void @kfree(ptr noundef %18) #8
  tail call void @framebuffer_release(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm3fb_check_var(ptr nocapture noundef %var, ptr nocapture noundef readonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length1 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length1, align 4
  %add = add i32 %3, %1
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %length2 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length2, align 4
  %add3 = add i32 %add, %5
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %length4 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %length4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length4, align 4
  %add5 = add i32 %add3, %7
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %8 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %9)
  %cmp.not = icmp eq i32 %add5, %9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %9, label %if.then.cleanup_crit_edge [
    i32 8, label %if.end.thread167
    i32 16, label %sw.bb22
    i32 32, label %sw.bb31
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread167:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %length, align 4
  %12 = ptrtoint ptr %length1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %length1, align 4
  %13 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %length2, align 4
  %14 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %red, align 4
  %15 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %green, align 4
  %16 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %blue, align 4
  %17 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %transp, align 4
  %18 = ptrtoint ptr %length4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %length4, align 4
  br label %if.end63

sw.bb22:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %length, align 4
  %20 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %length2, align 4
  %21 = ptrtoint ptr %length1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %length1, align 4
  br label %if.then42.sink.split

sw.bb31:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %length, align 4
  %23 = ptrtoint ptr %length1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %length1, align 4
  %24 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %length2, align 4
  br label %if.then42.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add5)
  %cmp41 = icmp ugt i32 %add5, 8
  br i1 %cmp41, label %if.end.if.then42_crit_edge, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end.if.then42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42.sink.split:                             ; preds = %sw.bb31, %sw.bb22
  %.sink = phi i32 [ 8, %sw.bb31 ], [ 0, %sw.bb22 ]
  %25 = ptrtoint ptr %length4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %length4, align 4
  br label %if.then42

if.then42:                                        ; preds = %if.then42.sink.split, %if.end.if.then42_crit_edge
  %26 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %blue, align 4
  %27 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length2, align 4
  %29 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %green, align 4
  %30 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length1, align 4
  %add53 = add i32 %31, %28
  %32 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add53, ptr %red, align 4
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %add60 = add i32 %34, %add53
  %35 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add60, ptr %transp, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then42, %if.end.if.end63_crit_edge, %if.end.thread167
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %36 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %37 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %width, align 4
  %38 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %40 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp64.not = icmp eq i32 %39, %41
  br i1 %cmp64.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %42 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %44 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp68 = icmp ugt i32 %43, %45
  br i1 %cmp68, label %if.end67.cleanup_crit_edge, label %if.end71

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %46 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %if.end74, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %if.end71
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %48 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vmode, align 4
  %and = and i32 %49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp75 = icmp eq i32 %and, 1
  br i1 %cmp75, label %if.end74.cleanup_crit_edge, label %if.end78

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %add80 = add i32 %39, 31
  %and81 = and i32 %add80, -32
  %50 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and81, ptr %var, align 4
  %51 = add i32 %and81, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1849, i32 %51)
  %52 = icmp ult i32 %51, -1849
  %53 = add i32 %43, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3896, i32 %53)
  %54 = icmp ult i32 %53, -3896
  %or.cond = select i1 %52, i1 true, i1 %54
  br i1 %or.cond, label %if.end78.cleanup_crit_edge, label %if.end100

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end100:                                        ; preds = %if.end78
  %add85 = add i32 %9, 7
  %shr = lshr i32 %add85, 3
  %mul = mul i32 %and81, %shr
  %mul102 = mul i32 %mul, %45
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul102, i32 %56)
  %cmp103 = icmp ugt i32 %mul102, %56
  br i1 %cmp103, label %if.end100.cleanup_crit_edge, label %if.end106

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %if.end100
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %57 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pixclock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3334, i32 %58)
  %cmp107 = icmp ult i32 %58, 3334
  br i1 %cmp107, label %if.end106.cleanup_crit_edge, label %if.end110

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end110:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %59 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %accel_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end106.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end110 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end63.cleanup_crit_edge ], [ -22, %if.end67.cleanup_crit_edge ], [ -22, %if.end71.cleanup_crit_edge ], [ -22, %if.end74.cleanup_crit_edge ], [ -22, %if.end78.cleanup_crit_edge ], [ -22, %if.end100.cleanup_crit_edge ], [ -22, %if.end106.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_set_par(ptr noundef %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %add = add i32 %3, 31
  %and = and i32 %add, -32
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %mul = mul i32 %7, %and
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %add6 = add i32 %mul, %9
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %5, label %entry.pm3fb_shift_bpp.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 16, label %sw.bb1.i
    i32 32, label %sw.bb3.i
  ]

entry.pm3fb_shift_bpp.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_shift_bpp.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = ashr i32 %add6, 4
  br label %pm3fb_shift_bpp.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr2.i = ashr i32 %add6, 3
  br label %pm3fb_shift_bpp.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr4.i = ashr i32 %add6, 2
  br label %pm3fb_shift_bpp.exit

pm3fb_shift_bpp.exit:                             ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.pm3fb_shift_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %shr4.i, %sw.bb3.i ], [ %shr2.i, %sw.bb1.i ], [ %shr.i, %sw.bb.i ], [ 0, %entry.pm3fb_shift_bpp.exit_crit_edge ]
  %base = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %base, align 4
  %video = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %video to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %video, align 4
  %sync = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 24
  %13 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync, align 4
  %and8 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %. = select i1 %tobool.not, i32 24, i32 8
  %15 = ptrtoint ptr %video to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %video, align 4
  %16 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sync, align 4
  %and14 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %storemerge79.v = select i1 %tobool15.not, i32 96, i32 32
  %storemerge79 = or i32 %storemerge79.v, %.
  %18 = ptrtoint ptr %video to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge79, ptr %video, align 4
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %19 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vmode, align 4
  %and24 = and i32 %20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and24)
  %cmp = icmp eq i32 %and24, 2
  br i1 %cmp, label %if.then25, label %pm3fb_shift_bpp.exit.if.end28_crit_edge

pm3fb_shift_bpp.exit.if.end28_crit_edge:          ; preds = %pm3fb_shift_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %pm3fb_shift_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %storemerge79, 4
  %21 = ptrtoint ptr %video to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or27, ptr %video, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %pm3fb_shift_bpp.exit.if.end28_crit_edge
  %activate = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 13
  %22 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %activate, align 4
  %and30 = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %if.then32, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %video, align 4
  %or34 = or i32 %25, 1
  store i32 %or34, ptr %video, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end28.if.end36_crit_edge
  %26 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %5, label %if.end36.sw.epilog_crit_edge [
    i32 32, label %sw.bb42
    i32 16, label %if.end36.sw.epilog.sink.split_crit_edge
  ]

if.end36.sw.epilog.sink.split_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb42, %if.end36.sw.epilog.sink.split_crit_edge
  %.sink115 = phi i32 [ 1048576, %sw.bb42 ], [ 524288, %if.end36.sw.epilog.sink.split_crit_edge ]
  %27 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %video, align 4
  %or44 = or i32 %28, %.sink115
  store i32 %or44, ptr %video, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end36.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp46 = icmp eq i32 %5, 8
  %cond = select i1 %cmp46, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %visual, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xres_virtual, align 4
  %add48 = add i32 %31, 7
  %shr = lshr i32 %add48, 3
  %mul49 = mul i32 %shr, %5
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %32 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul49, ptr %line_length, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %pm3fb_set_color.exit.i.for.body.i_crit_edge, %sw.epilog
  %i.01.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %pm3fb_set_color.exit.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i.i = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp6.i.i.i = icmp ult i32 %35, 4
  br i1 %cmp6.i.i.i, label %for.body.i.do.end.i.i.i_crit_edge, label %for.body.i.pm3fb_set_color.exit.i_crit_edge

for.body.i.pm3fb_set_color.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_set_color.exit.i

for.body.i.do.end.i.i.i_crit_edge:                ; preds = %for.body.i
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %for.body.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !115
  %cmp.i.i.i = icmp ult i32 %38, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i.do.end.i.i.i_crit_edge, label %do.end.i.i.i.pm3fb_set_color.exit.i_crit_edge

do.end.i.i.i.pm3fb_set_color.exit.i_crit_edge:    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_set_color.exit.i

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i

pm3fb_set_color.exit.i:                           ; preds = %do.end.i.i.i.pm3fb_set_color.exit.i_crit_edge, %for.body.i.pm3fb_set_color.exit.i_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %i.01.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %42, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %44, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %46, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %pm3fb_clear_colormap.exit, label %pm3fb_set_color.exit.i.for.body.i_crit_edge

pm3fb_set_color.exit.i.for.body.i_crit_edge:      ; preds = %pm3fb_set_color.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

pm3fb_clear_colormap.exit:                        ; preds = %pm3fb_set_color.exit.i
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %48, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp6.i.i = icmp ult i32 %49, 3
  br i1 %cmp6.i.i, label %pm3fb_clear_colormap.exit.do.end.i.i_crit_edge, label %pm3fb_clear_colormap.exit.PM3_WRITE_DAC_REG.exit_crit_edge

pm3fb_clear_colormap.exit.PM3_WRITE_DAC_REG.exit_crit_edge: ; preds = %pm3fb_clear_colormap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit

pm3fb_clear_colormap.exit.do.end.i.i_crit_edge:   ; preds = %pm3fb_clear_colormap.exit
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %pm3fb_clear_colormap.exit.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i80 = getelementptr i8, ptr %51, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i80) #8, !srcloc !115
  %cmp.i.i = icmp ult i32 %52, 3
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.PM3_WRITE_DAC_REG.exit_crit_edge

do.end.i.i.PM3_WRITE_DAC_REG.exit_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

PM3_WRITE_DAC_REG.exit:                           ; preds = %do.end.i.i.PM3_WRITE_DAC_REG.exit_crit_edge, %pm3fb_clear_colormap.exit.PM3_WRITE_DAC_REG.exit_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !118
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %56, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 5) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %58, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %par1, align 4
  %61 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xres_virtual, align 4
  %add.i = add i32 %62, 7
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  %add.ptr.i5.i.i81 = getelementptr i8, ptr %64, i32 24
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i81) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %65)
  %cmp6.i.i82 = icmp ult i32 %65, 50
  br i1 %cmp6.i.i82, label %PM3_WRITE_DAC_REG.exit.do.end.i.i85_crit_edge, label %PM3_WRITE_DAC_REG.exit.PM3_WAIT.exit.i_crit_edge

PM3_WRITE_DAC_REG.exit.PM3_WAIT.exit.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i

PM3_WRITE_DAC_REG.exit.do.end.i.i85_crit_edge:    ; preds = %PM3_WRITE_DAC_REG.exit
  br label %do.end.i.i85

do.end.i.i85:                                     ; preds = %do.end.i.i85.do.end.i.i85_crit_edge, %PM3_WRITE_DAC_REG.exit.do.end.i.i85_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %60, align 4
  %add.ptr.i.i.i83 = getelementptr i8, ptr %67, i32 24
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i83) #8, !srcloc !115
  %cmp.i.i84 = icmp ult i32 %68, 50
  br i1 %cmp.i.i84, label %do.end.i.i85.do.end.i.i85_crit_edge, label %do.end.i.i85.PM3_WAIT.exit.i_crit_edge

do.end.i.i85.PM3_WAIT.exit.i_crit_edge:           ; preds = %do.end.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i

do.end.i.i85.do.end.i.i85_crit_edge:              ; preds = %do.end.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i85

PM3_WAIT.exit.i:                                  ; preds = %do.end.i.i85.PM3_WAIT.exit.i_crit_edge, %PM3_WRITE_DAC_REG.exit.PM3_WAIT.exit.i_crit_edge
  %69 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %60, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %70, i32 35840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 1024) #8, !srcloc !118
  %71 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %60, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %72, i32 35848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 0) #8, !srcloc !118
  %73 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %60, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %74, i32 37632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 0) #8, !srcloc !118
  %75 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %60, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %76, i32 32928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 0) #8, !srcloc !118
  %77 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %60, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %78, i32 33152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 0) #8, !srcloc !118
  %79 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %60, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %80, i32 33192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 0) #8, !srcloc !118
  %81 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %60, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %82, i32 33184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 0) #8, !srcloc !118
  %83 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %60, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %84, i32 46392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 0) #8, !srcloc !118
  %85 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %60, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %86, i32 35232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 0) #8, !srcloc !118
  %87 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %60, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %88, i32 35208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 0) #8, !srcloc !118
  %89 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %60, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %90, i32 35216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i, i32 0) #8, !srcloc !118
  %91 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %60, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %92, i32 34784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 0) #8, !srcloc !118
  %93 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %60, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %94, i32 33664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 0) #8, !srcloc !118
  %95 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %60, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %96, i32 45880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 0) #8, !srcloc !118
  %97 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %60, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %98, i32 45888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120.i, i32 0) #8, !srcloc !118
  %99 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %60, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %100, i32 34416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 0) #8, !srcloc !118
  %101 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %60, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %102, i32 45944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 0) #8, !srcloc !118
  %103 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %60, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %104, i32 34016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 0) #8, !srcloc !118
  %105 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %60, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %106, i32 45824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i, i32 0) #8, !srcloc !118
  %107 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %60, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %108, i32 34432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 0) #8, !srcloc !118
  %109 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %60, align 4
  %add.ptr.i126.i = getelementptr i8, ptr %110, i32 45848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i, i32 0) #8, !srcloc !118
  %111 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %60, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %112, i32 45856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 0) #8, !srcloc !118
  %113 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %60, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %114, i32 45832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 0) #8, !srcloc !118
  %115 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %60, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %116, i32 45840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 0) #8, !srcloc !118
  %117 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %60, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %118, i32 34448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 0) #8, !srcloc !118
  %119 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %60, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %120, i32 36632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 0) #8, !srcloc !118
  %121 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %60, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %122, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 0) #8, !srcloc !118
  %123 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %60, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %124, i32 34824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 0) #8, !srcloc !118
  %125 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %60, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %126, i32 36608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 0) #8, !srcloc !118
  %127 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %60, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %128, i32 44960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 0) #8, !srcloc !118
  %129 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %60, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %130, i32 44968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 0) #8, !srcloc !118
  %131 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %60, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %132, i32 34840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 0) #8, !srcloc !118
  %133 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %60, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %134, i32 34856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 0) #8, !srcloc !118
  %135 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %60, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %136, i32 34880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 0) #8, !srcloc !118
  %137 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %60, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %138, i32 35200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 0) #8, !srcloc !118
  %139 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %60, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %140, i32 46616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 0) #8, !srcloc !118
  %141 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %60, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %142, i32 33128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142.i, i32 -1) #8, !srcloc !118
  %143 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %60, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %144, i32 38016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 0) #8, !srcloc !118
  %145 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %60, align 4
  %add.ptr.i144.i = getelementptr i8, ptr %146, i32 38024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144.i, i32 0) #8, !srcloc !118
  %147 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %60, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %148, i32 37712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 0) #8, !srcloc !118
  %149 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %60, align 4
  %add.ptr.i146.i = getelementptr i8, ptr %150, i32 32872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146.i, i32 -1) #8, !srcloc !118
  %151 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %60, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %152, i32 44776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 -16711681) #8, !srcloc !118
  %153 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %60, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %154, i32 44672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 0) #8, !srcloc !118
  %155 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %60, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %156, i32 44704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 0) #8, !srcloc !118
  %and2.i = and i32 %add.i, 4088
  %157 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %60, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %158, i32 44736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 %and2.i) #8, !srcloc !118
  %159 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %60, align 4
  %add.ptr.i151.i = getelementptr i8, ptr %160, i32 44768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 257) #8, !srcloc !118
  %161 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %60, align 4
  %add.ptr.i152.i = getelementptr i8, ptr %162, i32 44808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i, i32 0) #8, !srcloc !118
  %163 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %60, align 4
  %add.ptr.i153.i = getelementptr i8, ptr %164, i32 44816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 0) #8, !srcloc !118
  %165 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %60, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %166, i32 44824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 %and2.i) #8, !srcloc !118
  %167 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %60, align 4
  %add.ptr.i155.i = getelementptr i8, ptr %168, i32 44800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155.i, i32 2049) #8, !srcloc !118
  %169 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %60, align 4
  %add.ptr.i5.i156.i = getelementptr i8, ptr %170, i32 24
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i156.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %171)
  %cmp6.i157.i = icmp ult i32 %171, 2
  br i1 %cmp6.i157.i, label %PM3_WAIT.exit.i.do.end.i160.i_crit_edge, label %PM3_WAIT.exit.i.PM3_WAIT.exit161.i_crit_edge

PM3_WAIT.exit.i.PM3_WAIT.exit161.i_crit_edge:     ; preds = %PM3_WAIT.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit161.i

PM3_WAIT.exit.i.do.end.i160.i_crit_edge:          ; preds = %PM3_WAIT.exit.i
  br label %do.end.i160.i

do.end.i160.i:                                    ; preds = %do.end.i160.i.do.end.i160.i_crit_edge, %PM3_WAIT.exit.i.do.end.i160.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %172 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %60, align 4
  %add.ptr.i.i158.i = getelementptr i8, ptr %173, i32 24
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i158.i) #8, !srcloc !115
  %cmp.i159.i = icmp ult i32 %174, 2
  br i1 %cmp.i159.i, label %do.end.i160.i.do.end.i160.i_crit_edge, label %do.end.i160.i.PM3_WAIT.exit161.i_crit_edge

do.end.i160.i.PM3_WAIT.exit161.i_crit_edge:       ; preds = %do.end.i160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit161.i

do.end.i160.i.do.end.i160.i_crit_edge:            ; preds = %do.end.i160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i160.i

PM3_WAIT.exit161.i:                               ; preds = %do.end.i160.i.PM3_WAIT.exit161.i_crit_edge, %PM3_WAIT.exit.i.PM3_WAIT.exit161.i_crit_edge
  %175 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %bits_per_pixel, align 4
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %176, label %PM3_WAIT.exit161.i.sw.epilog.i_crit_edge [
    i32 8, label %sw.bb.i87
    i32 16, label %sw.bb5.i
    i32 32, label %sw.bb7.i
  ]

PM3_WAIT.exit161.i.sw.epilog.i_crit_edge:         ; preds = %PM3_WAIT.exit161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i87:                                        ; preds = %PM3_WAIT.exit161.i
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %60, align 4
  %add.ptr.i162.i = getelementptr i8, ptr %179, i32 32960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162.i, i32 2) #8, !srcloc !118
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %PM3_WAIT.exit161.i
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %60, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %181, i32 32960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 1) #8, !srcloc !118
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %PM3_WAIT.exit161.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %60, align 4
  %add.ptr.i164.i = getelementptr i8, ptr %183, i32 32960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164.i, i32 0) #8, !srcloc !118
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb.i87, %PM3_WAIT.exit161.i.sw.epilog.i_crit_edge
  %rm.0.i = phi i32 [ 385, %sw.bb7.i ], [ 65921, %sw.bb5.i ], [ 98689, %sw.bb.i87 ], [ 385, %PM3_WAIT.exit161.i.sw.epilog.i_crit_edge ]
  %184 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %60, align 4
  %add.ptr.i165.i = getelementptr i8, ptr %185, i32 32928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165.i, i32 %rm.0.i) #8, !srcloc !118
  %186 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %60, align 4
  %add.ptr.i5.i166.i = getelementptr i8, ptr %187, i32 24
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i166.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %188)
  %cmp6.i167.i = icmp ult i32 %188, 20
  br i1 %cmp6.i167.i, label %sw.epilog.i.do.end.i170.i_crit_edge, label %sw.epilog.i.PM3_WAIT.exit171.i_crit_edge

sw.epilog.i.PM3_WAIT.exit171.i_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit171.i

sw.epilog.i.do.end.i170.i_crit_edge:              ; preds = %sw.epilog.i
  br label %do.end.i170.i

do.end.i170.i:                                    ; preds = %do.end.i170.i.do.end.i170.i_crit_edge, %sw.epilog.i.do.end.i170.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %189 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %60, align 4
  %add.ptr.i.i168.i = getelementptr i8, ptr %190, i32 24
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i168.i) #8, !srcloc !115
  %cmp.i169.i = icmp ult i32 %191, 20
  br i1 %cmp.i169.i, label %do.end.i170.i.do.end.i170.i_crit_edge, label %do.end.i170.i.PM3_WAIT.exit171.i_crit_edge

do.end.i170.i.PM3_WAIT.exit171.i_crit_edge:       ; preds = %do.end.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit171.i

do.end.i170.i.do.end.i170.i_crit_edge:            ; preds = %do.end.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i170.i

PM3_WAIT.exit171.i:                               ; preds = %do.end.i170.i.PM3_WAIT.exit171.i_crit_edge, %sw.epilog.i.PM3_WAIT.exit171.i_crit_edge
  %192 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %60, align 4
  %add.ptr.i172.i = getelementptr i8, ptr %193, i32 34848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.i, i32 -1) #8, !srcloc !118
  %194 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %60, align 4
  %add.ptr.i173.i = getelementptr i8, ptr %195, i32 35520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173.i, i32 -1) #8, !srcloc !118
  %196 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %60, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %197, i32 35512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 4129) #8, !srcloc !118
  %198 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %60, align 4
  %add.ptr.i175.i = getelementptr i8, ptr %199, i32 45056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175.i, i32 0) #8, !srcloc !118
  %200 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %60, align 4
  %add.ptr.i176.i = getelementptr i8, ptr %201, i32 45088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176.i, i32 0) #8, !srcloc !118
  %202 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %60, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %203, i32 45120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177.i, i32 %and2.i) #8, !srcloc !118
  %204 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %60, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %205, i32 45224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 0) #8, !srcloc !118
  %screen_size.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 26
  %206 = ptrtoint ptr %screen_size.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %screen_size.i, align 4
  %208 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %line_length, align 4
  %div.i = udiv i32 %207, %209
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 4095
  %210 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %60, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %211, i32 45224
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %PM3_WAIT.exit171.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 4095) #8, !srcloc !118
  br label %if.end.i

if.else.i:                                        ; preds = %PM3_WAIT.exit171.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %div.i) #8, !srcloc !118
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %212 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %bits_per_pixel, align 4
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %213, label %if.end.i.sw.epilog16.i_crit_edge [
    i32 8, label %sw.bb11.i
    i32 16, label %sw.bb12.i
    i32 32, label %sw.bb13.i
  ]

if.end.i.sw.epilog16.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog16.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %215 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %60, align 4
  %add.ptr.i181.i = getelementptr i8, ptr %216, i32 34840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181.i, i32 1040) #8, !srcloc !118
  br label %sw.epilog16.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %60, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %218, i32 34840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 1032) #8, !srcloc !118
  br label %sw.epilog16.i

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %219 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %60, align 4
  %add.ptr.i183.i = getelementptr i8, ptr %220, i32 34840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183.i, i32 1024) #8, !srcloc !118
  br label %sw.epilog16.i

sw.epilog16.i:                                    ; preds = %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %if.end.i.sw.epilog16.i_crit_edge
  %221 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %60, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %222, i32 32776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 0) #8, !srcloc !118
  %223 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %60, align 4
  %add.ptr.i185.i = getelementptr i8, ptr %224, i32 32792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185.i, i32 0) #8, !srcloc !118
  %225 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %60, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %226, i32 32808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 65536) #8, !srcloc !118
  %227 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %60, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %228, i32 32768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187.i, i32 0) #8, !srcloc !118
  %229 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %60, align 4
  %add.ptr.i188.i = getelementptr i8, ptr %230, i32 32784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188.i, i32 0) #8, !srcloc !118
  %231 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %60, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %232, i32 32800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i, i32 0) #8, !srcloc !118
  %233 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %60, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %234, i32 32816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 0) #8, !srcloc !118
  %235 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %60, align 4
  %add.ptr.i191.i = getelementptr i8, ptr %236, i32 46336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191.i, i32 0) #8, !srcloc !118
  %237 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %60, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %238, i32 46344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192.i, i32 0) #8, !srcloc !118
  %239 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %60, align 4
  %add.ptr.i193.i = getelementptr i8, ptr %240, i32 46368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193.i, i32 0) #8, !srcloc !118
  %241 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %60, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %242, i32 35008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 0) #8, !srcloc !118
  %243 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %par1, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  %add.ptr.i5.i.i.i88 = getelementptr i8, ptr %246, i32 24
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i88) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %247)
  %cmp6.i.i.i89 = icmp ult i32 %247, 2
  br i1 %cmp6.i.i.i89, label %sw.epilog16.i.do.end.i.i.i92_crit_edge, label %sw.epilog16.i.PM3_WAIT.exit.i.i_crit_edge

sw.epilog16.i.PM3_WAIT.exit.i.i_crit_edge:        ; preds = %sw.epilog16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i.i

sw.epilog16.i.do.end.i.i.i92_crit_edge:           ; preds = %sw.epilog16.i
  br label %do.end.i.i.i92

do.end.i.i.i92:                                   ; preds = %do.end.i.i.i92.do.end.i.i.i92_crit_edge, %sw.epilog16.i.do.end.i.i.i92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %248 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %244, align 4
  %add.ptr.i.i.i.i90 = getelementptr i8, ptr %249, i32 24
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i90) #8, !srcloc !115
  %cmp.i.i.i91 = icmp ult i32 %250, 2
  br i1 %cmp.i.i.i91, label %do.end.i.i.i92.do.end.i.i.i92_crit_edge, label %do.end.i.i.i92.PM3_WAIT.exit.i.i_crit_edge

do.end.i.i.i92.PM3_WAIT.exit.i.i_crit_edge:       ; preds = %do.end.i.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i.i

do.end.i.i.i92.do.end.i.i.i92_crit_edge:          ; preds = %do.end.i.i.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i92

PM3_WAIT.exit.i.i:                                ; preds = %do.end.i.i.i92.PM3_WAIT.exit.i.i_crit_edge, %sw.epilog16.i.PM3_WAIT.exit.i.i_crit_edge
  %251 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %244, align 4
  %add.ptr.i.i195.i = getelementptr i8, ptr %252, i32 35840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i195.i, i32 1024) #8, !srcloc !118
  %253 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %244, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %254, i32 35904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %do.cond12.i.i.do.body2.i.i_crit_edge, %PM3_WAIT.exit.i.i
  %255 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %244, align 4
  %add.ptr.i2123.i.i = getelementptr i8, ptr %256, i32 32
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2123.i.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %cmp24.i.i = icmp eq i32 %257, 0
  br i1 %cmp24.i.i, label %do.body2.i.i.do.end7.i.i_crit_edge, label %do.body2.i.i.do.cond12.i.i_crit_edge

do.body2.i.i.do.cond12.i.i_crit_edge:             ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond12.i.i

do.body2.i.i.do.end7.i.i_crit_edge:               ; preds = %do.body2.i.i
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %do.end7.i.i.do.end7.i.i_crit_edge, %do.body2.i.i.do.end7.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !132
  %258 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %244, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %259, i32 32
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i.i) #8, !srcloc !115
  %cmp.i196.i = icmp eq i32 %260, 0
  br i1 %cmp.i196.i, label %do.end7.i.i.do.end7.i.i_crit_edge, label %do.end7.i.i.do.cond12.i.i_crit_edge

do.end7.i.i.do.cond12.i.i_crit_edge:              ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond12.i.i

do.end7.i.i.do.end7.i.i_crit_edge:                ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

do.cond12.i.i:                                    ; preds = %do.end7.i.i.do.cond12.i.i_crit_edge, %do.body2.i.i.do.cond12.i.i_crit_edge
  %261 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %244, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %262, i32 8192
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #8, !srcloc !115
  %cmp14.not.i.i = icmp eq i32 %263, 392
  br i1 %cmp14.not.i.i, label %pm3fb_init_engine.exit, label %do.cond12.i.i.do.body2.i.i_crit_edge

do.cond12.i.i.do.body2.i.i_crit_edge:             ; preds = %do.cond12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i

pm3fb_init_engine.exit:                           ; preds = %do.cond12.i.i
  %264 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %par1, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %266 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %right_margin.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %268 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %hsync_len.i, align 4
  %add.i94 = add i32 %269, %267
  %left_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %270 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %left_margin.i, align 4
  %add4.i = add i32 %add.i94, %271
  %272 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %var, align 4
  %add7.i = add i32 %273, 31
  %and.i = and i32 %add7.i, -32
  %lower_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %274 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %lower_margin.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %276 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %vsync_len.i, align 4
  %add11.i = add i32 %277, %275
  %upper_margin.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %278 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %upper_margin.i, align 4
  %add13.i = add i32 %add11.i, %279
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %280 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %yres.i, align 4
  %282 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %xres_virtual, align 4
  %add17.i = add i32 %283, 7
  %284 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %bits_per_pixel, align 4
  %286 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i97 = getelementptr i8, ptr %287, i32 24
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i97) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %288)
  %cmp6.i.i98 = icmp ult i32 %288, 20
  br i1 %cmp6.i.i98, label %pm3fb_init_engine.exit.do.end.i.i101_crit_edge, label %pm3fb_init_engine.exit.PM3_WAIT.exit.i103_crit_edge

pm3fb_init_engine.exit.PM3_WAIT.exit.i103_crit_edge: ; preds = %pm3fb_init_engine.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i103

pm3fb_init_engine.exit.do.end.i.i101_crit_edge:   ; preds = %pm3fb_init_engine.exit
  br label %do.end.i.i101

do.end.i.i101:                                    ; preds = %do.end.i.i101.do.end.i.i101_crit_edge, %pm3fb_init_engine.exit.do.end.i.i101_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %289 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i99 = getelementptr i8, ptr %290, i32 24
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i99) #8, !srcloc !115
  %cmp.i.i100 = icmp ult i32 %291, 20
  br i1 %cmp.i.i100, label %do.end.i.i101.do.end.i.i101_crit_edge, label %do.end.i.i101.PM3_WAIT.exit.i103_crit_edge

do.end.i.i101.PM3_WAIT.exit.i103_crit_edge:       ; preds = %do.end.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit.i103

do.end.i.i101.do.end.i.i101_crit_edge:            ; preds = %do.end.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i101

PM3_WAIT.exit.i103:                               ; preds = %do.end.i.i101.PM3_WAIT.exit.i103_crit_edge, %pm3fb_init_engine.exit.PM3_WAIT.exit.i103_crit_edge
  %292 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %265, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %293, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102, i32 -1) #8, !srcloc !118
  %294 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %265, align 4
  %add.ptr.i156.i = getelementptr i8, ptr %295, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156.i, i32 0) #8, !srcloc !118
  %296 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %265, align 4
  %add.ptr.i157.i = getelementptr i8, ptr %297, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157.i, i32 0) #8, !srcloc !118
  %298 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %265, align 4
  %add.ptr.i158.i = getelementptr i8, ptr %299, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158.i, i32 7) #8, !srcloc !118
  %add8.i = add i32 %add4.i, -1
  %sub.i = add i32 %add8.i, %and.i
  %300 = zext i32 %285 to i64
  call void @__sanitizer_cov_trace_switch(i64 %300, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %285, label %pm3fb_shift_bpp.exit.i [
    i32 8, label %pm3fb_shift_bpp.exit.thread.i
    i32 16, label %pm3fb_shift_bpp.exit.thread367.i
    i32 32, label %pm3fb_shift_bpp.exit.thread370.i
  ]

pm3fb_shift_bpp.exit.thread.i:                    ; preds = %PM3_WAIT.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i = ashr i32 %sub.i, 4
  %301 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %265, align 4
  %add.ptr.i159366.i = getelementptr i8, ptr %302, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159366.i, i32 %shr.i.i) #8, !srcloc !118
  %shr.i160.i = ashr i32 %add.i94, 4
  %303 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %265, align 4
  %add.ptr.i168374.i = getelementptr i8, ptr %304, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168374.i, i32 %shr.i160.i) #8, !srcloc !118
  %shr.i169.i = ashr i32 %267, 4
  %305 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %265, align 4
  %add.ptr.i177382.i = getelementptr i8, ptr %306, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177382.i, i32 %shr.i169.i) #8, !srcloc !118
  %shr.i178.i = ashr i32 %add4.i, 4
  %307 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %265, align 4
  %add.ptr.i186390.i = getelementptr i8, ptr %308, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186390.i, i32 %shr.i178.i) #8, !srcloc !118
  %309 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %265, align 4
  %add.ptr.i195398.i = getelementptr i8, ptr %310, i32 12312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195398.i, i32 %shr.i178.i) #8, !srcloc !118
  %shr.i196.i = ashr i32 %add17.i, 4
  br label %pm3fb_shift_bpp.exit203.i

pm3fb_shift_bpp.exit.thread367.i:                 ; preds = %PM3_WAIT.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  %shr2.i.i = ashr i32 %sub.i, 3
  %311 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %265, align 4
  %add.ptr.i159369.i = getelementptr i8, ptr %312, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159369.i, i32 %shr2.i.i) #8, !srcloc !118
  %shr2.i162.i = ashr i32 %add.i94, 3
  %313 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %265, align 4
  %add.ptr.i168377.i = getelementptr i8, ptr %314, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168377.i, i32 %shr2.i162.i) #8, !srcloc !118
  %shr2.i171.i = ashr i32 %267, 3
  %315 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %265, align 4
  %add.ptr.i177385.i = getelementptr i8, ptr %316, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177385.i, i32 %shr2.i171.i) #8, !srcloc !118
  %shr2.i180.i = ashr i32 %add4.i, 3
  %317 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %265, align 4
  %add.ptr.i186393.i = getelementptr i8, ptr %318, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186393.i, i32 %shr2.i180.i) #8, !srcloc !118
  %319 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %265, align 4
  %add.ptr.i195401.i = getelementptr i8, ptr %320, i32 12312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195401.i, i32 %shr2.i180.i) #8, !srcloc !118
  %shr2.i198.i = ashr i32 %add17.i, 3
  br label %pm3fb_shift_bpp.exit203.i

pm3fb_shift_bpp.exit.thread370.i:                 ; preds = %PM3_WAIT.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  %shr4.i.i = ashr i32 %sub.i, 2
  %321 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %265, align 4
  %add.ptr.i159372.i = getelementptr i8, ptr %322, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159372.i, i32 %shr4.i.i) #8, !srcloc !118
  %shr4.i164.i = ashr i32 %add.i94, 2
  %323 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %265, align 4
  %add.ptr.i168380.i = getelementptr i8, ptr %324, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168380.i, i32 %shr4.i164.i) #8, !srcloc !118
  %shr4.i173.i = ashr i32 %267, 2
  %325 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %265, align 4
  %add.ptr.i177388.i = getelementptr i8, ptr %326, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177388.i, i32 %shr4.i173.i) #8, !srcloc !118
  %shr4.i182.i = ashr i32 %add4.i, 2
  %327 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %265, align 4
  %add.ptr.i186396.i = getelementptr i8, ptr %328, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186396.i, i32 %shr4.i182.i) #8, !srcloc !118
  %329 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %265, align 4
  %add.ptr.i195404.i = getelementptr i8, ptr %330, i32 12312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195404.i, i32 %shr4.i182.i) #8, !srcloc !118
  %and18.i = ashr i32 %add17.i, 2
  %shr4.i200.i = and i32 %and18.i, -2
  br label %pm3fb_shift_bpp.exit203.i

pm3fb_shift_bpp.exit.i:                           ; preds = %PM3_WAIT.exit.i103
  call void @__sanitizer_cov_trace_pc() #10
  %331 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %265, align 4
  %add.ptr.i159.i = getelementptr i8, ptr %332, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159.i, i32 0) #8, !srcloc !118
  %333 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %265, align 4
  %add.ptr.i168.i = getelementptr i8, ptr %334, i32 12336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 0) #8, !srcloc !118
  %335 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %265, align 4
  %add.ptr.i177.i104 = getelementptr i8, ptr %336, i32 12328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177.i104, i32 0) #8, !srcloc !118
  %337 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %265, align 4
  %add.ptr.i186.i105 = getelementptr i8, ptr %338, i32 12320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i105, i32 0) #8, !srcloc !118
  %339 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %265, align 4
  %add.ptr.i195.i = getelementptr i8, ptr %340, i32 12312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195.i, i32 0) #8, !srcloc !118
  br label %pm3fb_shift_bpp.exit203.i

pm3fb_shift_bpp.exit203.i:                        ; preds = %pm3fb_shift_bpp.exit.i, %pm3fb_shift_bpp.exit.thread370.i, %pm3fb_shift_bpp.exit.thread367.i, %pm3fb_shift_bpp.exit.thread.i
  %retval.0.i202.i = phi i32 [ %shr4.i200.i, %pm3fb_shift_bpp.exit.thread370.i ], [ %shr2.i198.i, %pm3fb_shift_bpp.exit.thread367.i ], [ %shr.i196.i, %pm3fb_shift_bpp.exit.thread.i ], [ 0, %pm3fb_shift_bpp.exit.i ]
  %341 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %265, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %342, i32 12296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 %retval.0.i202.i) #8, !srcloc !118
  %add15.i = add i32 %add13.i, -1
  %sub25.i = add i32 %add15.i, %281
  %343 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %265, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %344, i32 12344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205.i, i32 %sub25.i) #8, !srcloc !118
  %sub26.i = add i32 %add11.i, -1
  %345 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %265, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %346, i32 12368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 %sub26.i) #8, !srcloc !118
  %sub27.i = add i32 %275, -1
  %347 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %265, align 4
  %add.ptr.i207.i = getelementptr i8, ptr %348, i32 12360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207.i, i32 %sub27.i) #8, !srcloc !118
  %349 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %265, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %350, i32 12352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 %add13.i) #8, !srcloc !118
  %351 = zext i32 %285 to i64
  call void @__sanitizer_cov_trace_switch(i64 %351, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %285, label %pm3fb_shift_bpp.exit203.i.sw.epilog.i108_crit_edge [
    i32 8, label %sw.bb.i106
    i32 16, label %sw.bb28.i
    i32 32, label %sw.bb29.i
  ]

pm3fb_shift_bpp.exit203.i.sw.epilog.i108_crit_edge: ; preds = %pm3fb_shift_bpp.exit203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i108

sw.bb.i106:                                       ; preds = %pm3fb_shift_bpp.exit203.i
  call void @__sanitizer_cov_trace_pc() #10
  %352 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %265, align 4
  %add.ptr.i209.i = getelementptr i8, ptr %353, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209.i, i32 0) #8, !srcloc !118
  %354 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %265, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %355, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 0) #8, !srcloc !118
  br label %sw.epilog.i108

sw.bb28.i:                                        ; preds = %pm3fb_shift_bpp.exit203.i
  call void @__sanitizer_cov_trace_pc() #10
  %356 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %265, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %357, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 33) #8, !srcloc !118
  %358 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %265, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %359, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 33) #8, !srcloc !118
  br label %sw.epilog.i108

sw.bb29.i:                                        ; preds = %pm3fb_shift_bpp.exit203.i
  call void @__sanitizer_cov_trace_pc() #10
  %360 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %265, align 4
  %add.ptr.i213.i = getelementptr i8, ptr %361, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213.i, i32 67) #8, !srcloc !118
  %362 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %265, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %363, i32 808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 67) #8, !srcloc !118
  br label %sw.epilog.i108

sw.epilog.i108:                                   ; preds = %sw.bb29.i, %sw.bb28.i, %sw.bb.i106, %pm3fb_shift_bpp.exit203.i.sw.epilog.i108_crit_edge
  %video30.i = getelementptr inbounds %struct.pm3_par, ptr %265, i32 0, i32 1
  %364 = ptrtoint ptr %video30.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %video30.i, align 4
  %and31.i = and i32 %365, -121
  %or.i = or i32 %and31.i, 40
  %366 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %265, align 4
  %add.ptr.i215.i = getelementptr i8, ptr %367, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215.i, i32 %or.i) #8, !srcloc !118
  %368 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %265, align 4
  %add.ptr.i216.i = getelementptr i8, ptr %369, i32 64
  %370 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216.i) #8, !srcloc !115
  %and33.i = and i32 %370, -4
  %371 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %265, align 4
  %add.ptr.i217.i = getelementptr i8, ptr %372, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217.i, i32 %and33.i) #8, !srcloc !118
  %base.i = getelementptr inbounds %struct.pm3_par, ptr %265, i32 0, i32 2
  %373 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %base.i, align 4
  %375 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %265, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %376, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218.i, i32 %374) #8, !srcloc !118
  %377 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %265, align 4
  %add.ptr.i219.i = getelementptr i8, ptr %378, i32 112
  %379 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219.i) #8, !srcloc !115
  %and35.i = and i32 %379, -3
  %380 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %265, align 4
  %add.ptr.i220.i = getelementptr i8, ptr %381, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220.i, i32 %and35.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %pixclock37.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %382 = ptrtoint ptr %pixclock37.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %pixclock37.i, align 4
  %div.i107 = udiv i32 1000000000, %383
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge, %sw.epilog.i108
  %m.0.i = phi i8 [ -1, %sw.epilog.i108 ], [ %m.6.i, %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge ]
  %n.0.i = phi i8 [ -1, %sw.epilog.i108 ], [ %n.6.i, %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge ]
  %p.0.i = phi i8 [ -1, %sw.epilog.i108 ], [ %p.6.i, %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge ]
  %freqerr.038.i.i = phi i32 [ 1000, %sw.epilog.i108 ], [ %freqerr.3.4.i.i, %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge ]
  %f.037.i.i = phi i32 [ 1, %sw.epilog.i108 ], [ %inc16.i.i, %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %f.037.i.i, 28636
  %conv.i.i = trunc i32 %f.037.i.i to i8
  %384 = lshr exact i32 %mul.i.i, 1
  %385 = lshr exact i32 %mul.i.i, 2
  %386 = lshr i32 %mul.i.i, 3
  %387 = lshr i32 %mul.i.i, 4
  br label %for.cond4.preheader.i.i

for.cond4.preheader.i.i:                          ; preds = %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge, %for.cond1.preheader.i.i
  %m.1.i = phi i8 [ %m.0.i, %for.cond1.preheader.i.i ], [ %m.6.i, %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge ]
  %n.1.i = phi i8 [ %n.0.i, %for.cond1.preheader.i.i ], [ %n.6.i, %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge ]
  %p.1.i = phi i8 [ %p.0.i, %for.cond1.preheader.i.i ], [ %p.6.i, %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge ]
  %freqerr.136.i.i = phi i32 [ %freqerr.038.i.i, %for.cond1.preheader.i.i ], [ %freqerr.3.4.i.i, %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge ]
  %pre.035.i.i = phi i32 [ 1, %for.cond1.preheader.i.i ], [ %inc13.i.i, %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge ]
  %conv10.i.i = trunc i32 %pre.035.i.i to i8
  %div.udiv.i.i = udiv i32 %mul.i.i, %pre.035.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.udiv.i.i, i32 %div.i107)
  %cmp7.i.i = icmp ult i32 %div.udiv.i.i, %div.i107
  %sub.i.i = sub nsw i32 %div.i107, %div.udiv.i.i
  %sub8.i.i = sub nsw i32 %div.udiv.i.i, %div.i107
  %cond.i.i = select i1 %cmp7.i.i, i32 %sub.i.i, i32 %sub8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %freqerr.136.i.i)
  %cmp9.i.i = icmp slt i32 %cond.i.i, %freqerr.136.i.i
  br i1 %cmp9.i.i, label %if.then.i.i, label %for.cond4.preheader.i.i.for.inc.i.i_crit_edge

for.cond4.preheader.i.i.for.inc.i.i_crit_edge:    ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.cond4.preheader.i.i.for.inc.i.i_crit_edge
  %m.2.i = phi i8 [ %conv10.i.i, %if.then.i.i ], [ %m.1.i, %for.cond4.preheader.i.i.for.inc.i.i_crit_edge ]
  %n.2.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ %n.1.i, %for.cond4.preheader.i.i.for.inc.i.i_crit_edge ]
  %p.2.i = phi i8 [ 0, %if.then.i.i ], [ %p.1.i, %for.cond4.preheader.i.i.for.inc.i.i_crit_edge ]
  %freqerr.3.i.i = phi i32 [ %cond.i.i, %if.then.i.i ], [ %freqerr.136.i.i, %for.cond4.preheader.i.i.for.inc.i.i_crit_edge ]
  %div.1.i.i = udiv i32 %384, %pre.035.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1.i.i, i32 %div.i107)
  %cmp7.1.i.i = icmp ult i32 %div.1.i.i, %div.i107
  %sub.1.i.i = sub nsw i32 %div.i107, %div.1.i.i
  %sub8.1.i.i = sub nsw i32 %div.1.i.i, %div.i107
  %cond.1.i.i = select i1 %cmp7.1.i.i, i32 %sub.1.i.i, i32 %sub8.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1.i.i, i32 %freqerr.3.i.i)
  %cmp9.1.i.i = icmp slt i32 %cond.1.i.i, %freqerr.3.i.i
  br i1 %cmp9.1.i.i, label %if.then.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %m.3.i = phi i8 [ %conv10.i.i, %if.then.1.i.i ], [ %m.2.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %n.3.i = phi i8 [ %conv.i.i, %if.then.1.i.i ], [ %n.2.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %p.3.i = phi i8 [ 1, %if.then.1.i.i ], [ %p.2.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %freqerr.3.1.i.i = phi i32 [ %cond.1.i.i, %if.then.1.i.i ], [ %freqerr.3.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %div.2.i.i = udiv i32 %385, %pre.035.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2.i.i, i32 %div.i107)
  %cmp7.2.i.i = icmp ult i32 %div.2.i.i, %div.i107
  %sub.2.i.i = sub nsw i32 %div.i107, %div.2.i.i
  %sub8.2.i.i = sub nsw i32 %div.2.i.i, %div.i107
  %cond.2.i.i = select i1 %cmp7.2.i.i, i32 %sub.2.i.i, i32 %sub8.2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2.i.i, i32 %freqerr.3.1.i.i)
  %cmp9.2.i.i = icmp slt i32 %cond.2.i.i, %freqerr.3.1.i.i
  br i1 %cmp9.2.i.i, label %if.then.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %m.4.i = phi i8 [ %conv10.i.i, %if.then.2.i.i ], [ %m.3.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %n.4.i = phi i8 [ %conv.i.i, %if.then.2.i.i ], [ %n.3.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %p.4.i = phi i8 [ 2, %if.then.2.i.i ], [ %p.3.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %freqerr.3.2.i.i = phi i32 [ %cond.2.i.i, %if.then.2.i.i ], [ %freqerr.3.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %div.3.i.i = udiv i32 %386, %pre.035.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3.i.i, i32 %div.i107)
  %cmp7.3.i.i = icmp ult i32 %div.3.i.i, %div.i107
  %sub.3.i.i = sub nsw i32 %div.i107, %div.3.i.i
  %sub8.3.i.i = sub nsw i32 %div.3.i.i, %div.i107
  %cond.3.i.i = select i1 %cmp7.3.i.i, i32 %sub.3.i.i, i32 %sub8.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3.i.i, i32 %freqerr.3.2.i.i)
  %cmp9.3.i.i = icmp slt i32 %cond.3.i.i, %freqerr.3.2.i.i
  br i1 %cmp9.3.i.i, label %if.then.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %m.5.i = phi i8 [ %conv10.i.i, %if.then.3.i.i ], [ %m.4.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %n.5.i = phi i8 [ %conv.i.i, %if.then.3.i.i ], [ %n.4.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %p.5.i = phi i8 [ 3, %if.then.3.i.i ], [ %p.4.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %freqerr.3.3.i.i = phi i32 [ %cond.3.i.i, %if.then.3.i.i ], [ %freqerr.3.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %div.4.i.i = udiv i32 %387, %pre.035.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4.i.i, i32 %div.i107)
  %cmp7.4.i.i = icmp ult i32 %div.4.i.i, %div.i107
  %sub.4.i.i = sub nsw i32 %div.i107, %div.4.i.i
  %sub8.4.i.i = sub nsw i32 %div.4.i.i, %div.i107
  %cond.4.i.i = select i1 %cmp7.4.i.i, i32 %sub.4.i.i, i32 %sub8.4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.4.i.i, i32 %freqerr.3.3.i.i)
  %cmp9.4.i.i = icmp slt i32 %cond.4.i.i, %freqerr.3.3.i.i
  br i1 %cmp9.4.i.i, label %if.then.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.then.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %m.6.i = phi i8 [ %conv10.i.i, %if.then.4.i.i ], [ %m.5.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %n.6.i = phi i8 [ %conv.i.i, %if.then.4.i.i ], [ %n.5.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %p.6.i = phi i8 [ 4, %if.then.4.i.i ], [ %p.5.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %freqerr.3.4.i.i = phi i32 [ %cond.4.i.i, %if.then.4.i.i ], [ %freqerr.3.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %inc13.i.i = add nuw nsw i32 %pre.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc13.i.i, 256
  br i1 %exitcond.not.i.i, label %for.inc15.i.i, label %for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge

for.inc.4.i.i.for.cond4.preheader.i.i_crit_edge:  ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond4.preheader.i.i

for.inc15.i.i:                                    ; preds = %for.inc.4.i.i
  %inc16.i.i = add nuw nsw i32 %f.037.i.i, 1
  %exitcond39.not.i.i = icmp eq i32 %inc16.i.i, 256
  br i1 %exitcond39.not.i.i, label %pm3fb_calculate_clock.exit.i, label %for.inc15.i.i.for.cond1.preheader.i.i_crit_edge

for.inc15.i.i.for.cond1.preheader.i.i_crit_edge:  ; preds = %for.inc15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i

pm3fb_calculate_clock.exit.i:                     ; preds = %for.inc15.i.i
  %388 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i.i109 = getelementptr i8, ptr %389, i32 24
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i.i109) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %390)
  %cmp6.i.i.i110 = icmp ult i32 %390, 3
  br i1 %cmp6.i.i.i110, label %pm3fb_calculate_clock.exit.i.do.end.i.i.i113_crit_edge, label %pm3fb_calculate_clock.exit.i.PM3_WRITE_DAC_REG.exit.i_crit_edge

pm3fb_calculate_clock.exit.i.PM3_WRITE_DAC_REG.exit.i_crit_edge: ; preds = %pm3fb_calculate_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit.i

pm3fb_calculate_clock.exit.i.do.end.i.i.i113_crit_edge: ; preds = %pm3fb_calculate_clock.exit.i
  br label %do.end.i.i.i113

do.end.i.i.i113:                                  ; preds = %do.end.i.i.i113.do.end.i.i.i113_crit_edge, %pm3fb_calculate_clock.exit.i.do.end.i.i.i113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %391 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i.i111 = getelementptr i8, ptr %392, i32 24
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i111) #8, !srcloc !115
  %cmp.i.i.i112 = icmp ult i32 %393, 3
  br i1 %cmp.i.i.i112, label %do.end.i.i.i113.do.end.i.i.i113_crit_edge, label %do.end.i.i.i113.PM3_WRITE_DAC_REG.exit.i_crit_edge

do.end.i.i.i113.PM3_WRITE_DAC_REG.exit.i_crit_edge: ; preds = %do.end.i.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit.i

do.end.i.i.i113.do.end.i.i.i113_crit_edge:        ; preds = %do.end.i.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i.i113

PM3_WRITE_DAC_REG.exit.i:                         ; preds = %do.end.i.i.i113.PM3_WRITE_DAC_REG.exit.i_crit_edge, %pm3fb_calculate_clock.exit.i.PM3_WRITE_DAC_REG.exit.i_crit_edge
  %394 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %265, align 4
  %add.ptr.i.i221.i = getelementptr i8, ptr %395, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i221.i, i32 2) #8, !srcloc !118
  %396 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %265, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %397, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 1) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i222.i = zext i8 %m.6.i to i32
  %398 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %265, align 4
  %add.ptr.i9.i.i = getelementptr i8, ptr %399, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i.i, i32 %conv.i222.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %400 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i223.i = getelementptr i8, ptr %401, i32 24
  %402 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i223.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %402)
  %cmp6.i.i224.i = icmp ult i32 %402, 3
  br i1 %cmp6.i.i224.i, label %PM3_WRITE_DAC_REG.exit.i.do.end.i.i227.i_crit_edge, label %PM3_WRITE_DAC_REG.exit.i.PM3_WRITE_DAC_REG.exit232.i_crit_edge

PM3_WRITE_DAC_REG.exit.i.PM3_WRITE_DAC_REG.exit232.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit232.i

PM3_WRITE_DAC_REG.exit.i.do.end.i.i227.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit.i
  br label %do.end.i.i227.i

do.end.i.i227.i:                                  ; preds = %do.end.i.i227.i.do.end.i.i227.i_crit_edge, %PM3_WRITE_DAC_REG.exit.i.do.end.i.i227.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %403 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i225.i = getelementptr i8, ptr %404, i32 24
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i225.i) #8, !srcloc !115
  %cmp.i.i226.i = icmp ult i32 %405, 3
  br i1 %cmp.i.i226.i, label %do.end.i.i227.i.do.end.i.i227.i_crit_edge, label %do.end.i.i227.i.PM3_WRITE_DAC_REG.exit232.i_crit_edge

do.end.i.i227.i.PM3_WRITE_DAC_REG.exit232.i_crit_edge: ; preds = %do.end.i.i227.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit232.i

do.end.i.i227.i.do.end.i.i227.i_crit_edge:        ; preds = %do.end.i.i227.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i227.i

PM3_WRITE_DAC_REG.exit232.i:                      ; preds = %do.end.i.i227.i.PM3_WRITE_DAC_REG.exit232.i_crit_edge, %PM3_WRITE_DAC_REG.exit.i.PM3_WRITE_DAC_REG.exit232.i_crit_edge
  %406 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %265, align 4
  %add.ptr.i.i228.i = getelementptr i8, ptr %407, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i228.i, i32 2) #8, !srcloc !118
  %408 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %265, align 4
  %add.ptr.i8.i229.i = getelementptr i8, ptr %409, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i229.i, i32 2) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i230.i = zext i8 %n.6.i to i32
  %410 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %265, align 4
  %add.ptr.i9.i231.i = getelementptr i8, ptr %411, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i231.i, i32 %conv.i230.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %412 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i233.i = getelementptr i8, ptr %413, i32 24
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i233.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %414)
  %cmp6.i.i234.i = icmp ult i32 %414, 3
  br i1 %cmp6.i.i234.i, label %PM3_WRITE_DAC_REG.exit232.i.do.end.i.i237.i_crit_edge, label %PM3_WRITE_DAC_REG.exit232.i.PM3_WRITE_DAC_REG.exit242.i_crit_edge

PM3_WRITE_DAC_REG.exit232.i.PM3_WRITE_DAC_REG.exit242.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit242.i

PM3_WRITE_DAC_REG.exit232.i.do.end.i.i237.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit232.i
  br label %do.end.i.i237.i

do.end.i.i237.i:                                  ; preds = %do.end.i.i237.i.do.end.i.i237.i_crit_edge, %PM3_WRITE_DAC_REG.exit232.i.do.end.i.i237.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %415 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i235.i = getelementptr i8, ptr %416, i32 24
  %417 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i235.i) #8, !srcloc !115
  %cmp.i.i236.i = icmp ult i32 %417, 3
  br i1 %cmp.i.i236.i, label %do.end.i.i237.i.do.end.i.i237.i_crit_edge, label %do.end.i.i237.i.PM3_WRITE_DAC_REG.exit242.i_crit_edge

do.end.i.i237.i.PM3_WRITE_DAC_REG.exit242.i_crit_edge: ; preds = %do.end.i.i237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit242.i

do.end.i.i237.i.do.end.i.i237.i_crit_edge:        ; preds = %do.end.i.i237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i237.i

PM3_WRITE_DAC_REG.exit242.i:                      ; preds = %do.end.i.i237.i.PM3_WRITE_DAC_REG.exit242.i_crit_edge, %PM3_WRITE_DAC_REG.exit232.i.PM3_WRITE_DAC_REG.exit242.i_crit_edge
  %418 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %265, align 4
  %add.ptr.i.i238.i = getelementptr i8, ptr %419, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i238.i, i32 2) #8, !srcloc !118
  %420 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %265, align 4
  %add.ptr.i8.i239.i = getelementptr i8, ptr %421, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i239.i, i32 3) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i240.i = zext i8 %p.6.i to i32
  %422 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %265, align 4
  %add.ptr.i9.i241.i = getelementptr i8, ptr %423, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i241.i, i32 %conv.i240.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %424 = ptrtoint ptr %video30.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %video30.i, align 4
  %and40.i = and i32 %425, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and40.i)
  %cmp.i114 = icmp eq i32 %and40.i, 8
  %spec.select.i = zext i1 %cmp.i114 to i8
  %and44.i = and i32 %425, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and44.i)
  %cmp45.i = icmp eq i32 %and44.i, 32
  %426 = or i8 %spec.select.i, 8
  %tempsync.1.i = select i1 %cmp45.i, i8 %426, i8 %spec.select.i
  %427 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i243.i = getelementptr i8, ptr %428, i32 24
  %429 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i243.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %429)
  %cmp6.i.i244.i = icmp ult i32 %429, 3
  br i1 %cmp6.i.i244.i, label %PM3_WRITE_DAC_REG.exit242.i.do.end.i.i247.i_crit_edge, label %PM3_WRITE_DAC_REG.exit242.i.PM3_WRITE_DAC_REG.exit252.i_crit_edge

PM3_WRITE_DAC_REG.exit242.i.PM3_WRITE_DAC_REG.exit252.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit252.i

PM3_WRITE_DAC_REG.exit242.i.do.end.i.i247.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit242.i
  br label %do.end.i.i247.i

do.end.i.i247.i:                                  ; preds = %do.end.i.i247.i.do.end.i.i247.i_crit_edge, %PM3_WRITE_DAC_REG.exit242.i.do.end.i.i247.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %430 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i245.i = getelementptr i8, ptr %431, i32 24
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i245.i) #8, !srcloc !115
  %cmp.i.i246.i = icmp ult i32 %432, 3
  br i1 %cmp.i.i246.i, label %do.end.i.i247.i.do.end.i.i247.i_crit_edge, label %do.end.i.i247.i.PM3_WRITE_DAC_REG.exit252.i_crit_edge

do.end.i.i247.i.PM3_WRITE_DAC_REG.exit252.i_crit_edge: ; preds = %do.end.i.i247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit252.i

do.end.i.i247.i.do.end.i.i247.i_crit_edge:        ; preds = %do.end.i.i247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i247.i

PM3_WRITE_DAC_REG.exit252.i:                      ; preds = %do.end.i.i247.i.PM3_WRITE_DAC_REG.exit252.i_crit_edge, %PM3_WRITE_DAC_REG.exit242.i.PM3_WRITE_DAC_REG.exit252.i_crit_edge
  %433 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %265, align 4
  %add.ptr.i.i248.i = getelementptr i8, ptr %434, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i248.i, i32 0) #8, !srcloc !118
  %435 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %265, align 4
  %add.ptr.i8.i249.i = getelementptr i8, ptr %436, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i249.i, i32 1) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i250.i = zext i8 %tempsync.1.i to i32
  %437 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %265, align 4
  %add.ptr.i9.i251.i = getelementptr i8, ptr %438, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i251.i, i32 %conv.i250.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %439 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i253.i = getelementptr i8, ptr %440, i32 24
  %441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i253.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %441)
  %cmp6.i.i254.i = icmp ult i32 %441, 3
  br i1 %cmp6.i.i254.i, label %PM3_WRITE_DAC_REG.exit252.i.do.end.i.i257.i_crit_edge, label %PM3_WRITE_DAC_REG.exit252.i.PM3_WRITE_DAC_REG.exit261.i_crit_edge

PM3_WRITE_DAC_REG.exit252.i.PM3_WRITE_DAC_REG.exit261.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit261.i

PM3_WRITE_DAC_REG.exit252.i.do.end.i.i257.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit252.i
  br label %do.end.i.i257.i

do.end.i.i257.i:                                  ; preds = %do.end.i.i257.i.do.end.i.i257.i_crit_edge, %PM3_WRITE_DAC_REG.exit252.i.do.end.i.i257.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %442 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i255.i = getelementptr i8, ptr %443, i32 24
  %444 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i255.i) #8, !srcloc !115
  %cmp.i.i256.i = icmp ult i32 %444, 3
  br i1 %cmp.i.i256.i, label %do.end.i.i257.i.do.end.i.i257.i_crit_edge, label %do.end.i.i257.i.PM3_WRITE_DAC_REG.exit261.i_crit_edge

do.end.i.i257.i.PM3_WRITE_DAC_REG.exit261.i_crit_edge: ; preds = %do.end.i.i257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit261.i

do.end.i.i257.i.do.end.i.i257.i_crit_edge:        ; preds = %do.end.i.i257.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i257.i

PM3_WRITE_DAC_REG.exit261.i:                      ; preds = %do.end.i.i257.i.PM3_WRITE_DAC_REG.exit261.i_crit_edge, %PM3_WRITE_DAC_REG.exit252.i.PM3_WRITE_DAC_REG.exit261.i_crit_edge
  %445 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %265, align 4
  %add.ptr.i.i258.i = getelementptr i8, ptr %446, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i258.i, i32 0) #8, !srcloc !118
  %447 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %265, align 4
  %add.ptr.i8.i259.i = getelementptr i8, ptr %448, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i259.i, i32 2) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %449 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %265, align 4
  %add.ptr.i9.i260.i = getelementptr i8, ptr %450, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i260.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %451 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %452)
  %cmp.i262.i = icmp eq i32 %452, 16
  br i1 %cmp.i262.i, label %if.then.i263.i, label %PM3_WRITE_DAC_REG.exit261.i.pm3fb_depth.exit.i_crit_edge

PM3_WRITE_DAC_REG.exit261.i.pm3fb_depth.exit.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_depth.exit.i

if.then.i263.i:                                   ; preds = %PM3_WRITE_DAC_REG.exit261.i
  call void @__sanitizer_cov_trace_pc() #10
  %length.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %453 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %length.i.i, align 4
  %length1.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %455 = ptrtoint ptr %length1.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %length1.i.i, align 4
  %add.i.i = add i32 %456, %454
  %length2.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %457 = ptrtoint ptr %length2.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %length2.i.i, align 4
  %add3.i.i = add i32 %add.i.i, %458
  br label %pm3fb_depth.exit.i

pm3fb_depth.exit.i:                               ; preds = %if.then.i263.i, %PM3_WRITE_DAC_REG.exit261.i.pm3fb_depth.exit.i_crit_edge
  %retval.0.i264.i = phi i32 [ %add3.i.i, %if.then.i263.i ], [ %452, %PM3_WRITE_DAC_REG.exit261.i.pm3fb_depth.exit.i_crit_edge ]
  %459 = zext i32 %retval.0.i264.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %459, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %retval.0.i264.i, label %pm3fb_depth.exit.i.sw.epilog75.i_crit_edge [
    i32 8, label %sw.bb55.i
    i32 12, label %sw.bb59.i
    i32 15, label %sw.bb63.i
    i32 16, label %sw.bb67.i
    i32 32, label %sw.bb71.i
  ]

pm3fb_depth.exit.i.sw.epilog75.i_crit_edge:       ; preds = %pm3fb_depth.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog75.i

sw.bb55.i:                                        ; preds = %pm3fb_depth.exit.i
  %460 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i265.i = getelementptr i8, ptr %461, i32 24
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i265.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %462)
  %cmp6.i.i266.i = icmp ult i32 %462, 3
  br i1 %cmp6.i.i266.i, label %sw.bb55.i.do.end.i.i269.i_crit_edge, label %sw.bb55.i.PM3_WRITE_DAC_REG.exit273.i_crit_edge

sw.bb55.i.PM3_WRITE_DAC_REG.exit273.i_crit_edge:  ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit273.i

sw.bb55.i.do.end.i.i269.i_crit_edge:              ; preds = %sw.bb55.i
  br label %do.end.i.i269.i

do.end.i.i269.i:                                  ; preds = %do.end.i.i269.i.do.end.i.i269.i_crit_edge, %sw.bb55.i.do.end.i.i269.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %463 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i267.i = getelementptr i8, ptr %464, i32 24
  %465 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i267.i) #8, !srcloc !115
  %cmp.i.i268.i = icmp ult i32 %465, 3
  br i1 %cmp.i.i268.i, label %do.end.i.i269.i.do.end.i.i269.i_crit_edge, label %do.end.i.i269.i.PM3_WRITE_DAC_REG.exit273.i_crit_edge

do.end.i.i269.i.PM3_WRITE_DAC_REG.exit273.i_crit_edge: ; preds = %do.end.i.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit273.i

do.end.i.i269.i.do.end.i.i269.i_crit_edge:        ; preds = %do.end.i.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i269.i

PM3_WRITE_DAC_REG.exit273.i:                      ; preds = %do.end.i.i269.i.PM3_WRITE_DAC_REG.exit273.i_crit_edge, %sw.bb55.i.PM3_WRITE_DAC_REG.exit273.i_crit_edge
  %466 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %265, align 4
  %add.ptr.i.i270.i = getelementptr i8, ptr %467, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i270.i, i32 0) #8, !srcloc !118
  %468 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %265, align 4
  %add.ptr.i8.i271.i = getelementptr i8, ptr %469, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i271.i, i32 3) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %470 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %265, align 4
  %add.ptr.i9.i272.i = getelementptr i8, ptr %471, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i272.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %472 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i274.i = getelementptr i8, ptr %473, i32 24
  %474 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i274.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %474)
  %cmp6.i.i275.i = icmp ult i32 %474, 3
  br i1 %cmp6.i.i275.i, label %PM3_WRITE_DAC_REG.exit273.i.do.end.i.i278.i_crit_edge, label %PM3_WRITE_DAC_REG.exit273.i.PM3_WRITE_DAC_REG.exit282.i_crit_edge

PM3_WRITE_DAC_REG.exit273.i.PM3_WRITE_DAC_REG.exit282.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit282.i

PM3_WRITE_DAC_REG.exit273.i.do.end.i.i278.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit273.i
  br label %do.end.i.i278.i

do.end.i.i278.i:                                  ; preds = %do.end.i.i278.i.do.end.i.i278.i_crit_edge, %PM3_WRITE_DAC_REG.exit273.i.do.end.i.i278.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %475 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i276.i = getelementptr i8, ptr %476, i32 24
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i276.i) #8, !srcloc !115
  %cmp.i.i277.i = icmp ult i32 %477, 3
  br i1 %cmp.i.i277.i, label %do.end.i.i278.i.do.end.i.i278.i_crit_edge, label %do.end.i.i278.i.PM3_WRITE_DAC_REG.exit282.i_crit_edge

do.end.i.i278.i.PM3_WRITE_DAC_REG.exit282.i_crit_edge: ; preds = %do.end.i.i278.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit282.i

do.end.i.i278.i.do.end.i.i278.i_crit_edge:        ; preds = %do.end.i.i278.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i278.i

PM3_WRITE_DAC_REG.exit282.i:                      ; preds = %do.end.i.i278.i.PM3_WRITE_DAC_REG.exit282.i_crit_edge, %PM3_WRITE_DAC_REG.exit273.i.PM3_WRITE_DAC_REG.exit282.i_crit_edge
  %478 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %265, align 4
  %add.ptr.i.i279.i = getelementptr i8, ptr %479, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i279.i, i32 0) #8, !srcloc !118
  %480 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %265, align 4
  %add.ptr.i8.i280.i = getelementptr i8, ptr %481, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i280.i, i32 4) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %482 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %265, align 4
  %add.ptr.i9.i281.i = getelementptr i8, ptr %483, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i281.i, i32 46) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  br label %sw.epilog75.sink.split.i

sw.bb59.i:                                        ; preds = %pm3fb_depth.exit.i
  %484 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i283.i = getelementptr i8, ptr %485, i32 24
  %486 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i283.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %486)
  %cmp6.i.i284.i = icmp ult i32 %486, 3
  br i1 %cmp6.i.i284.i, label %sw.bb59.i.do.end.i.i287.i_crit_edge, label %sw.bb59.i.PM3_WRITE_DAC_REG.exit291.i_crit_edge

sw.bb59.i.PM3_WRITE_DAC_REG.exit291.i_crit_edge:  ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit291.i

sw.bb59.i.do.end.i.i287.i_crit_edge:              ; preds = %sw.bb59.i
  br label %do.end.i.i287.i

do.end.i.i287.i:                                  ; preds = %do.end.i.i287.i.do.end.i.i287.i_crit_edge, %sw.bb59.i.do.end.i.i287.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %487 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i285.i = getelementptr i8, ptr %488, i32 24
  %489 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i285.i) #8, !srcloc !115
  %cmp.i.i286.i = icmp ult i32 %489, 3
  br i1 %cmp.i.i286.i, label %do.end.i.i287.i.do.end.i.i287.i_crit_edge, label %do.end.i.i287.i.PM3_WRITE_DAC_REG.exit291.i_crit_edge

do.end.i.i287.i.PM3_WRITE_DAC_REG.exit291.i_crit_edge: ; preds = %do.end.i.i287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit291.i

do.end.i.i287.i.do.end.i.i287.i_crit_edge:        ; preds = %do.end.i.i287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i287.i

PM3_WRITE_DAC_REG.exit291.i:                      ; preds = %do.end.i.i287.i.PM3_WRITE_DAC_REG.exit291.i_crit_edge, %sw.bb59.i.PM3_WRITE_DAC_REG.exit291.i_crit_edge
  %490 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %265, align 4
  %add.ptr.i.i288.i = getelementptr i8, ptr %491, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i288.i, i32 0) #8, !srcloc !118
  %492 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %265, align 4
  %add.ptr.i8.i289.i = getelementptr i8, ptr %493, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i289.i, i32 3) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %494 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %265, align 4
  %add.ptr.i9.i290.i = getelementptr i8, ptr %495, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i290.i, i32 1) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %496 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i292.i = getelementptr i8, ptr %497, i32 24
  %498 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i292.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %498)
  %cmp6.i.i293.i = icmp ult i32 %498, 3
  br i1 %cmp6.i.i293.i, label %PM3_WRITE_DAC_REG.exit291.i.do.end.i.i296.i_crit_edge, label %PM3_WRITE_DAC_REG.exit291.i.PM3_WRITE_DAC_REG.exit300.i_crit_edge

PM3_WRITE_DAC_REG.exit291.i.PM3_WRITE_DAC_REG.exit300.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit300.i

PM3_WRITE_DAC_REG.exit291.i.do.end.i.i296.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit291.i
  br label %do.end.i.i296.i

do.end.i.i296.i:                                  ; preds = %do.end.i.i296.i.do.end.i.i296.i_crit_edge, %PM3_WRITE_DAC_REG.exit291.i.do.end.i.i296.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %499 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i294.i = getelementptr i8, ptr %500, i32 24
  %501 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i294.i) #8, !srcloc !115
  %cmp.i.i295.i = icmp ult i32 %501, 3
  br i1 %cmp.i.i295.i, label %do.end.i.i296.i.do.end.i.i296.i_crit_edge, label %do.end.i.i296.i.PM3_WRITE_DAC_REG.exit300.i_crit_edge

do.end.i.i296.i.PM3_WRITE_DAC_REG.exit300.i_crit_edge: ; preds = %do.end.i.i296.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit300.i

do.end.i.i296.i.do.end.i.i296.i_crit_edge:        ; preds = %do.end.i.i296.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i296.i

PM3_WRITE_DAC_REG.exit300.i:                      ; preds = %do.end.i.i296.i.PM3_WRITE_DAC_REG.exit300.i_crit_edge, %PM3_WRITE_DAC_REG.exit291.i.PM3_WRITE_DAC_REG.exit300.i_crit_edge
  %502 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %265, align 4
  %add.ptr.i.i297.i = getelementptr i8, ptr %503, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i297.i, i32 0) #8, !srcloc !118
  %504 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %265, align 4
  %add.ptr.i8.i298.i = getelementptr i8, ptr %505, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i298.i, i32 4) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %506 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %265, align 4
  %add.ptr.i9.i299.i = getelementptr i8, ptr %507, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i299.i, i32 98) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  br label %sw.epilog75.sink.split.i

sw.bb63.i:                                        ; preds = %pm3fb_depth.exit.i
  %508 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i301.i = getelementptr i8, ptr %509, i32 24
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i301.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %510)
  %cmp6.i.i302.i = icmp ult i32 %510, 3
  br i1 %cmp6.i.i302.i, label %sw.bb63.i.do.end.i.i305.i_crit_edge, label %sw.bb63.i.PM3_WRITE_DAC_REG.exit309.i_crit_edge

sw.bb63.i.PM3_WRITE_DAC_REG.exit309.i_crit_edge:  ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit309.i

sw.bb63.i.do.end.i.i305.i_crit_edge:              ; preds = %sw.bb63.i
  br label %do.end.i.i305.i

do.end.i.i305.i:                                  ; preds = %do.end.i.i305.i.do.end.i.i305.i_crit_edge, %sw.bb63.i.do.end.i.i305.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %511 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i303.i = getelementptr i8, ptr %512, i32 24
  %513 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i303.i) #8, !srcloc !115
  %cmp.i.i304.i = icmp ult i32 %513, 3
  br i1 %cmp.i.i304.i, label %do.end.i.i305.i.do.end.i.i305.i_crit_edge, label %do.end.i.i305.i.PM3_WRITE_DAC_REG.exit309.i_crit_edge

do.end.i.i305.i.PM3_WRITE_DAC_REG.exit309.i_crit_edge: ; preds = %do.end.i.i305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit309.i

do.end.i.i305.i.do.end.i.i305.i_crit_edge:        ; preds = %do.end.i.i305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i305.i

PM3_WRITE_DAC_REG.exit309.i:                      ; preds = %do.end.i.i305.i.PM3_WRITE_DAC_REG.exit309.i_crit_edge, %sw.bb63.i.PM3_WRITE_DAC_REG.exit309.i_crit_edge
  %514 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %265, align 4
  %add.ptr.i.i306.i = getelementptr i8, ptr %515, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i306.i, i32 0) #8, !srcloc !118
  %516 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %265, align 4
  %add.ptr.i8.i307.i = getelementptr i8, ptr %517, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i307.i, i32 3) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %518 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %265, align 4
  %add.ptr.i9.i308.i = getelementptr i8, ptr %519, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i308.i, i32 1) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %520 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i310.i = getelementptr i8, ptr %521, i32 24
  %522 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i310.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %522)
  %cmp6.i.i311.i = icmp ult i32 %522, 3
  br i1 %cmp6.i.i311.i, label %PM3_WRITE_DAC_REG.exit309.i.do.end.i.i314.i_crit_edge, label %PM3_WRITE_DAC_REG.exit309.i.PM3_WRITE_DAC_REG.exit318.i_crit_edge

PM3_WRITE_DAC_REG.exit309.i.PM3_WRITE_DAC_REG.exit318.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit309.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit318.i

PM3_WRITE_DAC_REG.exit309.i.do.end.i.i314.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit309.i
  br label %do.end.i.i314.i

do.end.i.i314.i:                                  ; preds = %do.end.i.i314.i.do.end.i.i314.i_crit_edge, %PM3_WRITE_DAC_REG.exit309.i.do.end.i.i314.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %523 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i312.i = getelementptr i8, ptr %524, i32 24
  %525 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i312.i) #8, !srcloc !115
  %cmp.i.i313.i = icmp ult i32 %525, 3
  br i1 %cmp.i.i313.i, label %do.end.i.i314.i.do.end.i.i314.i_crit_edge, label %do.end.i.i314.i.PM3_WRITE_DAC_REG.exit318.i_crit_edge

do.end.i.i314.i.PM3_WRITE_DAC_REG.exit318.i_crit_edge: ; preds = %do.end.i.i314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit318.i

do.end.i.i314.i.do.end.i.i314.i_crit_edge:        ; preds = %do.end.i.i314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i314.i

PM3_WRITE_DAC_REG.exit318.i:                      ; preds = %do.end.i.i314.i.PM3_WRITE_DAC_REG.exit318.i_crit_edge, %PM3_WRITE_DAC_REG.exit309.i.PM3_WRITE_DAC_REG.exit318.i_crit_edge
  %526 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %265, align 4
  %add.ptr.i.i315.i = getelementptr i8, ptr %527, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i315.i, i32 0) #8, !srcloc !118
  %528 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %265, align 4
  %add.ptr.i8.i316.i = getelementptr i8, ptr %529, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i316.i, i32 4) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %530 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %265, align 4
  %add.ptr.i9.i317.i = getelementptr i8, ptr %531, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i317.i, i32 97) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  br label %sw.epilog75.sink.split.i

sw.bb67.i:                                        ; preds = %pm3fb_depth.exit.i
  %532 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i319.i = getelementptr i8, ptr %533, i32 24
  %534 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i319.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %534)
  %cmp6.i.i320.i = icmp ult i32 %534, 3
  br i1 %cmp6.i.i320.i, label %sw.bb67.i.do.end.i.i323.i_crit_edge, label %sw.bb67.i.PM3_WRITE_DAC_REG.exit327.i_crit_edge

sw.bb67.i.PM3_WRITE_DAC_REG.exit327.i_crit_edge:  ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit327.i

sw.bb67.i.do.end.i.i323.i_crit_edge:              ; preds = %sw.bb67.i
  br label %do.end.i.i323.i

do.end.i.i323.i:                                  ; preds = %do.end.i.i323.i.do.end.i.i323.i_crit_edge, %sw.bb67.i.do.end.i.i323.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %535 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i321.i = getelementptr i8, ptr %536, i32 24
  %537 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i321.i) #8, !srcloc !115
  %cmp.i.i322.i = icmp ult i32 %537, 3
  br i1 %cmp.i.i322.i, label %do.end.i.i323.i.do.end.i.i323.i_crit_edge, label %do.end.i.i323.i.PM3_WRITE_DAC_REG.exit327.i_crit_edge

do.end.i.i323.i.PM3_WRITE_DAC_REG.exit327.i_crit_edge: ; preds = %do.end.i.i323.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit327.i

do.end.i.i323.i.do.end.i.i323.i_crit_edge:        ; preds = %do.end.i.i323.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i323.i

PM3_WRITE_DAC_REG.exit327.i:                      ; preds = %do.end.i.i323.i.PM3_WRITE_DAC_REG.exit327.i_crit_edge, %sw.bb67.i.PM3_WRITE_DAC_REG.exit327.i_crit_edge
  %538 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %265, align 4
  %add.ptr.i.i324.i = getelementptr i8, ptr %539, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i324.i, i32 0) #8, !srcloc !118
  %540 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %265, align 4
  %add.ptr.i8.i325.i = getelementptr i8, ptr %541, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i325.i, i32 3) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %542 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %265, align 4
  %add.ptr.i9.i326.i = getelementptr i8, ptr %543, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i326.i, i32 1) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %544 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i328.i = getelementptr i8, ptr %545, i32 24
  %546 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i328.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %546)
  %cmp6.i.i329.i = icmp ult i32 %546, 3
  br i1 %cmp6.i.i329.i, label %PM3_WRITE_DAC_REG.exit327.i.do.end.i.i332.i_crit_edge, label %PM3_WRITE_DAC_REG.exit327.i.PM3_WRITE_DAC_REG.exit336.i_crit_edge

PM3_WRITE_DAC_REG.exit327.i.PM3_WRITE_DAC_REG.exit336.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit327.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit336.i

PM3_WRITE_DAC_REG.exit327.i.do.end.i.i332.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit327.i
  br label %do.end.i.i332.i

do.end.i.i332.i:                                  ; preds = %do.end.i.i332.i.do.end.i.i332.i_crit_edge, %PM3_WRITE_DAC_REG.exit327.i.do.end.i.i332.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %547 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i330.i = getelementptr i8, ptr %548, i32 24
  %549 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i330.i) #8, !srcloc !115
  %cmp.i.i331.i = icmp ult i32 %549, 3
  br i1 %cmp.i.i331.i, label %do.end.i.i332.i.do.end.i.i332.i_crit_edge, label %do.end.i.i332.i.PM3_WRITE_DAC_REG.exit336.i_crit_edge

do.end.i.i332.i.PM3_WRITE_DAC_REG.exit336.i_crit_edge: ; preds = %do.end.i.i332.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit336.i

do.end.i.i332.i.do.end.i.i332.i_crit_edge:        ; preds = %do.end.i.i332.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i332.i

PM3_WRITE_DAC_REG.exit336.i:                      ; preds = %do.end.i.i332.i.PM3_WRITE_DAC_REG.exit336.i_crit_edge, %PM3_WRITE_DAC_REG.exit327.i.PM3_WRITE_DAC_REG.exit336.i_crit_edge
  %550 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %265, align 4
  %add.ptr.i.i333.i = getelementptr i8, ptr %551, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i333.i, i32 0) #8, !srcloc !118
  %552 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %265, align 4
  %add.ptr.i8.i334.i = getelementptr i8, ptr %553, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i334.i, i32 4) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %554 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %265, align 4
  %add.ptr.i9.i335.i = getelementptr i8, ptr %555, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i335.i, i32 112) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  br label %sw.epilog75.sink.split.i

sw.bb71.i:                                        ; preds = %pm3fb_depth.exit.i
  %556 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i337.i = getelementptr i8, ptr %557, i32 24
  %558 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i337.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %558)
  %cmp6.i.i338.i = icmp ult i32 %558, 3
  br i1 %cmp6.i.i338.i, label %sw.bb71.i.do.end.i.i341.i_crit_edge, label %sw.bb71.i.PM3_WRITE_DAC_REG.exit345.i_crit_edge

sw.bb71.i.PM3_WRITE_DAC_REG.exit345.i_crit_edge:  ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit345.i

sw.bb71.i.do.end.i.i341.i_crit_edge:              ; preds = %sw.bb71.i
  br label %do.end.i.i341.i

do.end.i.i341.i:                                  ; preds = %do.end.i.i341.i.do.end.i.i341.i_crit_edge, %sw.bb71.i.do.end.i.i341.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %559 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i339.i = getelementptr i8, ptr %560, i32 24
  %561 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i339.i) #8, !srcloc !115
  %cmp.i.i340.i = icmp ult i32 %561, 3
  br i1 %cmp.i.i340.i, label %do.end.i.i341.i.do.end.i.i341.i_crit_edge, label %do.end.i.i341.i.PM3_WRITE_DAC_REG.exit345.i_crit_edge

do.end.i.i341.i.PM3_WRITE_DAC_REG.exit345.i_crit_edge: ; preds = %do.end.i.i341.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit345.i

do.end.i.i341.i.do.end.i.i341.i_crit_edge:        ; preds = %do.end.i.i341.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i341.i

PM3_WRITE_DAC_REG.exit345.i:                      ; preds = %do.end.i.i341.i.PM3_WRITE_DAC_REG.exit345.i_crit_edge, %sw.bb71.i.PM3_WRITE_DAC_REG.exit345.i_crit_edge
  %562 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %265, align 4
  %add.ptr.i.i342.i = getelementptr i8, ptr %563, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i342.i, i32 0) #8, !srcloc !118
  %564 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %265, align 4
  %add.ptr.i8.i343.i = getelementptr i8, ptr %565, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i343.i, i32 3) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %566 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %265, align 4
  %add.ptr.i9.i344.i = getelementptr i8, ptr %567, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i344.i, i32 2) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %568 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i346.i = getelementptr i8, ptr %569, i32 24
  %570 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i346.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %570)
  %cmp6.i.i347.i = icmp ult i32 %570, 3
  br i1 %cmp6.i.i347.i, label %PM3_WRITE_DAC_REG.exit345.i.do.end.i.i350.i_crit_edge, label %PM3_WRITE_DAC_REG.exit345.i.PM3_WRITE_DAC_REG.exit354.i_crit_edge

PM3_WRITE_DAC_REG.exit345.i.PM3_WRITE_DAC_REG.exit354.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit354.i

PM3_WRITE_DAC_REG.exit345.i.do.end.i.i350.i_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit345.i
  br label %do.end.i.i350.i

do.end.i.i350.i:                                  ; preds = %do.end.i.i350.i.do.end.i.i350.i_crit_edge, %PM3_WRITE_DAC_REG.exit345.i.do.end.i.i350.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %571 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i348.i = getelementptr i8, ptr %572, i32 24
  %573 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i348.i) #8, !srcloc !115
  %cmp.i.i349.i = icmp ult i32 %573, 3
  br i1 %cmp.i.i349.i, label %do.end.i.i350.i.do.end.i.i350.i_crit_edge, label %do.end.i.i350.i.PM3_WRITE_DAC_REG.exit354.i_crit_edge

do.end.i.i350.i.PM3_WRITE_DAC_REG.exit354.i_crit_edge: ; preds = %do.end.i.i350.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit354.i

do.end.i.i350.i.do.end.i.i350.i_crit_edge:        ; preds = %do.end.i.i350.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i350.i

PM3_WRITE_DAC_REG.exit354.i:                      ; preds = %do.end.i.i350.i.PM3_WRITE_DAC_REG.exit354.i_crit_edge, %PM3_WRITE_DAC_REG.exit345.i.PM3_WRITE_DAC_REG.exit354.i_crit_edge
  %574 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %265, align 4
  %add.ptr.i.i351.i = getelementptr i8, ptr %575, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i351.i, i32 0) #8, !srcloc !118
  %576 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %265, align 4
  %add.ptr.i8.i352.i = getelementptr i8, ptr %577, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i352.i, i32 4) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %578 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %265, align 4
  %add.ptr.i9.i353.i = getelementptr i8, ptr %579, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i353.i, i32 32) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  br label %sw.epilog75.sink.split.i

sw.epilog75.sink.split.i:                         ; preds = %PM3_WRITE_DAC_REG.exit354.i, %PM3_WRITE_DAC_REG.exit336.i, %PM3_WRITE_DAC_REG.exit318.i, %PM3_WRITE_DAC_REG.exit300.i, %PM3_WRITE_DAC_REG.exit282.i
  %tempmisc.0.ph.i = phi i32 [ 1, %PM3_WRITE_DAC_REG.exit282.i ], [ 9, %PM3_WRITE_DAC_REG.exit300.i ], [ 9, %PM3_WRITE_DAC_REG.exit318.i ], [ 9, %PM3_WRITE_DAC_REG.exit336.i ], [ 9, %PM3_WRITE_DAC_REG.exit354.i ]
  tail call void @arm_heavy_mb() #8
  br label %sw.epilog75.i

sw.epilog75.i:                                    ; preds = %sw.epilog75.sink.split.i, %pm3fb_depth.exit.i.sw.epilog75.i_crit_edge
  %tempmisc.0.i = phi i32 [ 0, %pm3fb_depth.exit.i.sw.epilog75.i_crit_edge ], [ %tempmisc.0.ph.i, %sw.epilog75.sink.split.i ]
  %580 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %265, align 4
  %add.ptr.i5.i.i355.i = getelementptr i8, ptr %581, i32 24
  %582 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i355.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %582)
  %cmp6.i.i356.i = icmp ult i32 %582, 3
  br i1 %cmp6.i.i356.i, label %sw.epilog75.i.do.end.i.i359.i_crit_edge, label %sw.epilog75.i.pm3fb_write_mode.exit_crit_edge

sw.epilog75.i.pm3fb_write_mode.exit_crit_edge:    ; preds = %sw.epilog75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_write_mode.exit

sw.epilog75.i.do.end.i.i359.i_crit_edge:          ; preds = %sw.epilog75.i
  br label %do.end.i.i359.i

do.end.i.i359.i:                                  ; preds = %do.end.i.i359.i.do.end.i.i359.i_crit_edge, %sw.epilog75.i.do.end.i.i359.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %583 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %265, align 4
  %add.ptr.i.i.i357.i = getelementptr i8, ptr %584, i32 24
  %585 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i357.i) #8, !srcloc !115
  %cmp.i.i358.i = icmp ult i32 %585, 3
  br i1 %cmp.i.i358.i, label %do.end.i.i359.i.do.end.i.i359.i_crit_edge, label %do.end.i.i359.i.pm3fb_write_mode.exit_crit_edge

do.end.i.i359.i.pm3fb_write_mode.exit_crit_edge:  ; preds = %do.end.i.i359.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_write_mode.exit

do.end.i.i359.i.do.end.i.i359.i_crit_edge:        ; preds = %do.end.i.i359.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i359.i

pm3fb_write_mode.exit:                            ; preds = %do.end.i.i359.i.pm3fb_write_mode.exit_crit_edge, %sw.epilog75.i.pm3fb_write_mode.exit_crit_edge
  %586 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %265, align 4
  %add.ptr.i.i360.i = getelementptr i8, ptr %587, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i360.i, i32 0) #8, !srcloc !118
  %588 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %265, align 4
  %add.ptr.i8.i361.i = getelementptr i8, ptr %589, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i361.i, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %590 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %265, align 4
  %add.ptr.i9.i363.i = getelementptr i8, ptr %591, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i363.i, i32 %tempmisc.0.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp = icmp ugt i32 %regno, 255
  br i1 %cmp, label %entry.cleanup67_crit_edge, label %if.end

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %2 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  %red8 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %shl = shl i32 %red.addr.0, %5
  %add9 = sub i32 32767, %red.addr.0
  %sub = add i32 %add9, %shl
  %shr10 = lshr i32 %sub, 16
  %green12 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length13 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length13, align 4
  %shl14 = shl i32 %green.addr.0, %7
  %add15 = sub i32 32767, %green.addr.0
  %sub16 = add i32 %add15, %shl14
  %shr17 = lshr i32 %sub16, 16
  %blue19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %8 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length20, align 4
  %shl21 = shl i32 %blue.addr.0, %9
  %add22 = sub i32 32767, %blue.addr.0
  %sub23 = add i32 %add22, %shl21
  %shr24 = lshr i32 %sub23, 16
  %transp26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length27 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %10 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length27, align 4
  %shl28 = shl i32 %transp, %11
  %add29 = sub i32 32767, %transp
  %sub30 = add i32 %add29, %shl28
  %shr31 = lshr i32 %sub30, 16
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %visual, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %13, label %if.end6.cleanup67_crit_edge [
    i32 2, label %if.end6.if.then36_crit_edge
    i32 4, label %if.end6.if.then36_crit_edge99
    i32 3, label %if.then61
  ]

if.end6.if.then36_crit_edge99:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.end6.if.then36_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.end6.cleanup67_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.then36:                                        ; preds = %if.end6.if.then36_crit_edge, %if.end6.if.then36_crit_edge99
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp37 = icmp ugt i32 %regno, 15
  br i1 %cmp37, label %if.then36.cleanup67_crit_edge, label %if.end39

if.then36.cleanup67_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.end39:                                         ; preds = %if.then36
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %15 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bits_per_pixel, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %16, label %if.end39.cleanup67_crit_edge [
    i32 32, label %if.end39.sw.bb_crit_edge
    i32 16, label %if.end39.sw.bb_crit_edge100
  ]

if.end39.sw.bb_crit_edge100:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.sw.bb_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.cleanup67_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

sw.bb:                                            ; preds = %if.end39.sw.bb_crit_edge, %if.end39.sw.bb_crit_edge100
  %18 = ptrtoint ptr %red8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %red8, align 4
  %shl42 = shl i32 %shr10, %19
  %20 = ptrtoint ptr %green12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %green12, align 4
  %shl46 = shl i32 %shr17, %21
  %or = or i32 %shl46, %shl42
  %22 = ptrtoint ptr %blue19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blue19, align 4
  %shl50 = shl i32 %shr24, %23
  %or51 = or i32 %or, %shl50
  %24 = ptrtoint ptr %transp26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transp26, align 4
  %shl55 = shl i32 %shr31, %25
  %or56 = or i32 %or51, %shl55
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %26 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pseudo_palette, align 4
  %arrayidx = getelementptr i32, ptr %27, i32 %regno
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or56, ptr %arrayidx, align 4
  br label %cleanup67

if.then61:                                        ; preds = %if.end6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp6.i.i = icmp ult i32 %31, 4
  br i1 %cmp6.i.i, label %if.then61.do.end.i.i_crit_edge, label %if.then61.pm3fb_set_color.exit_crit_edge

if.then61.pm3fb_set_color.exit_crit_edge:         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_set_color.exit

if.then61.do.end.i.i_crit_edge:                   ; preds = %if.then61
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.then61.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !115
  %cmp.i.i = icmp ult i32 %34, 4
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.pm3fb_set_color.exit_crit_edge

do.end.i.i.pm3fb_set_color.exit_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_set_color.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

pm3fb_set_color.exit:                             ; preds = %do.end.i.i.pm3fb_set_color.exit_crit_edge, %if.then61.pm3fb_set_color.exit_crit_edge
  %conv.i = and i32 %regno, 255
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %conv1.i = and i32 %shr10, 255
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %38, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %conv1.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %conv4.i = and i32 %shr17, 255
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %40, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %conv4.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %conv7.i = and i32 %shr24, 255
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %42, i32 16392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %conv7.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  br label %cleanup67

cleanup67:                                        ; preds = %pm3fb_set_color.exit, %sw.bb, %if.end39.cleanup67_crit_edge, %if.then36.cleanup67_crit_edge, %if.end6.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup67_crit_edge ], [ -22, %if.then36.cleanup67_crit_edge ], [ 0, %if.end39.cleanup67_crit_edge ], [ 0, %sw.bb ], [ 0, %if.end6.cleanup67_crit_edge ], [ 0, %pm3fb_set_color.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %video2 = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %video2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %video2, align 4
  %and = and i32 %3, -121
  %or = or i32 %and, 40
  %4 = zext i32 %blank_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %blank_mode, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 3, label %sw.bb6
    i32 2, label %sw.bb8
    i32 4, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or3 = or i32 %and, 41
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and5 = and i32 %or, -82
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i32 %or, -91
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %or, -115
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = and i32 %3, -123
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %video.0 = phi i32 [ %and11, %sw.bb10 ], [ %and9, %sw.bb8 ], [ %and7, %sw.bb6 ], [ %and5, %sw.bb4 ], [ %or3, %sw.bb ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i = icmp eq i32 %7, 0
  br i1 %cmp6.i, label %sw.epilog.do.end.i_crit_edge, label %sw.epilog.PM3_WAIT.exit_crit_edge

sw.epilog.PM3_WAIT.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

sw.epilog.do.end.i_crit_edge:                     ; preds = %sw.epilog
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %sw.epilog.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.PM3_WAIT.exit_crit_edge

do.end.i.PM3_WAIT.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

PM3_WAIT.exit:                                    ; preds = %do.end.i.PM3_WAIT.exit_crit_edge, %sw.epilog.PM3_WAIT.exit_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %video.0) #8, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %PM3_WAIT.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %PM3_WAIT.exit ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var2, align 4
  %add = add i32 %3, 31
  %and = and i32 %add, -32
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %mul = mul i32 %7, %and
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %8 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xoffset, align 4
  %add5 = add i32 %mul, %9
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %5, label %entry.pm3fb_shift_bpp.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 16, label %sw.bb1.i
    i32 32, label %sw.bb3.i
  ]

entry.pm3fb_shift_bpp.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm3fb_shift_bpp.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = ashr i32 %add5, 4
  br label %pm3fb_shift_bpp.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr2.i = ashr i32 %add5, 3
  br label %pm3fb_shift_bpp.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr4.i = ashr i32 %add5, 2
  br label %pm3fb_shift_bpp.exit

pm3fb_shift_bpp.exit:                             ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %entry.pm3fb_shift_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %shr4.i, %sw.bb3.i ], [ %shr2.i, %sw.bb1.i ], [ %shr.i, %sw.bb.i ], [ 0, %entry.pm3fb_shift_bpp.exit_crit_edge ]
  %base = getelementptr inbounds %struct.pm3_par, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %base, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6.i = icmp eq i32 %14, 0
  br i1 %cmp6.i, label %pm3fb_shift_bpp.exit.do.end.i_crit_edge, label %pm3fb_shift_bpp.exit.PM3_WAIT.exit_crit_edge

pm3fb_shift_bpp.exit.PM3_WAIT.exit_crit_edge:     ; preds = %pm3fb_shift_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

pm3fb_shift_bpp.exit.do.end.i_crit_edge:          ; preds = %pm3fb_shift_bpp.exit
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %pm3fb_shift_bpp.exit.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.PM3_WAIT.exit_crit_edge

do.end.i.PM3_WAIT.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

PM3_WAIT.exit:                                    ; preds = %do.end.i.PM3_WAIT.exit_crit_edge, %pm3fb_shift_bpp.exit.PM3_WAIT.exit_crit_edge
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #8, !srcloc !118
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm3fb_fillrect(ptr noundef %info, ptr noundef %region) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %region) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rop7 = getelementptr inbounds %struct.fb_fillrect, ptr %region, i32 0, i32 5
  %13 = ptrtoint ptr %rop7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rop7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp eq i32 %14, 0
  %. = select i1 %cmp8, i32 197056, i32 197448
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
  %tobool12.not = icmp ne i32 %modded.sroa.13.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.18.0.copyload)
  %tobool13.not = icmp ne i32 %modded.sroa.18.0.copyload, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool13.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %modded.sroa.0.0.copyload)
  %cmp15.not = icmp ugt i32 %16, %modded.sroa.0.0.copyload
  %or.cond103 = select i1 %or.cond, i1 %cmp15.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %modded.sroa.8.0.copyload)
  %cmp17.not = icmp ugt i32 %18, %modded.sroa.8.0.copyload
  %or.cond104 = select i1 %or.cond103, i1 %cmp17.not, i1 false
  br i1 %or.cond104, label %if.end19, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %add = add i32 %modded.sroa.13.0.copyload, %modded.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp22 = icmp ugt i32 %add, %16
  %sub = sub i32 %16, %modded.sroa.0.0.copyload
  %spec.select = select i1 %cmp22, i32 %sub, i32 %modded.sroa.13.0.copyload
  %add29 = add i32 %modded.sroa.18.0.copyload, %modded.sroa.8.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %18)
  %cmp30 = icmp ugt i32 %add29, %18
  %sub33 = sub i32 %18, %modded.sroa.8.0.copyload
  %modded.sroa.18.0 = select i1 %cmp30, i32 %sub33, i32 %modded.sroa.18.0.copyload
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %23 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp37 = icmp eq i32 %24, 8
  %shl = shl i32 %cond, 8
  %or = select i1 %cmp37, i32 %shl, i32 0
  %color.0 = or i32 %or, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %24)
  %cmp42 = icmp ult i32 %24, 17
  %shl44 = shl i32 %color.0, 16
  %or45 = select i1 %cmp42, i32 %shl44, i32 0
  %color.1 = or i32 %or45, %color.0
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp6.i = icmp ult i32 %27, 4
  br i1 %cmp6.i, label %if.end19.do.end.i_crit_edge, label %if.end19.PM3_WAIT.exit_crit_edge

if.end19.PM3_WAIT.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

if.end19.do.end.i_crit_edge:                      ; preds = %if.end19
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end19.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %cmp.i = icmp ult i32 %30, 4
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.PM3_WAIT.exit_crit_edge

do.end.i.PM3_WAIT.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

PM3_WAIT.exit:                                    ; preds = %do.end.i.PM3_WAIT.exit_crit_edge, %if.end19.PM3_WAIT.exit_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 46616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %.) #8, !srcloc !118
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i105 = getelementptr i8, ptr %34, i32 45248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %color.1) #8, !srcloc !118
  %and50 = and i32 %modded.sroa.0.0.copyload, 65535
  %shl53 = shl i32 %modded.sroa.8.0.copyload, 16
  %or54 = or i32 %shl53, %and50
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr.i106 = getelementptr i8, ptr %36, i32 46592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %or54) #8, !srcloc !118
  %and56 = and i32 %spec.select, 4095
  %and59 = shl i32 %modded.sroa.18.0, 16
  %shl60 = and i32 %and59, 268369920
  %or57 = or i32 %and56, %shl60
  %or61 = or i32 %or57, 805339136
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i107 = getelementptr i8, ptr %38, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %or61) #8, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %PM3_WAIT.exit, %if.end6.cleanup_crit_edge, %if.then5, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm3fb_copyarea(ptr noundef %info, ptr noundef %area) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %area) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %modded.sroa.0.0.copyload = load i32, ptr %area, align 4
  %modded.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 4
  %7 = ptrtoint ptr %modded.sroa.12.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %modded.sroa.12.0.copyload = load i32, ptr %modded.sroa.12.0..sroa_idx, align 4
  %modded.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 8
  %8 = ptrtoint ptr %modded.sroa.21.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %modded.sroa.21.0.copyload = load i32, ptr %modded.sroa.21.0..sroa_idx, align 4
  %modded.sroa.29.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 12
  %9 = ptrtoint ptr %modded.sroa.29.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %modded.sroa.29.0.copyload = load i32, ptr %modded.sroa.29.0..sroa_idx, align 4
  %modded.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 16
  %10 = ptrtoint ptr %modded.sroa.37.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %modded.sroa.37.0.copyload = load i32, ptr %modded.sroa.37.0..sroa_idx, align 4
  %modded.sroa.44.0..sroa_idx = getelementptr inbounds i8, ptr %area, i32 20
  %11 = ptrtoint ptr %modded.sroa.44.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %modded.sroa.44.0.copyload = load i32, ptr %modded.sroa.44.0..sroa_idx, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.21.0.copyload)
  %tobool5.not = icmp ne i32 %modded.sroa.21.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modded.sroa.29.0.copyload)
  %tobool6.not = icmp ne i32 %modded.sroa.29.0.copyload, 0
  %or.cond = select i1 %tobool5.not, i1 %tobool6.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %modded.sroa.37.0.copyload)
  %cmp8.not = icmp ugt i32 %13, %modded.sroa.37.0.copyload
  %or.cond164 = select i1 %or.cond, i1 %cmp8.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %modded.sroa.44.0.copyload)
  %cmp10.not = icmp ugt i32 %15, %modded.sroa.44.0.copyload
  %or.cond165 = select i1 %or.cond164, i1 %cmp10.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %modded.sroa.0.0.copyload)
  %cmp12.not = icmp ugt i32 %13, %modded.sroa.0.0.copyload
  %or.cond166 = select i1 %or.cond165, i1 %cmp12.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %modded.sroa.12.0.copyload)
  %cmp14.not = icmp ugt i32 %15, %modded.sroa.12.0.copyload
  %or.cond167 = select i1 %or.cond166, i1 %cmp14.not, i1 false
  br i1 %or.cond167, label %if.end16, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  %add = add i32 %modded.sroa.37.0.copyload, %modded.sroa.21.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %13)
  %cmp19 = icmp ugt i32 %add, %13
  %sub = sub i32 %13, %modded.sroa.37.0.copyload
  %spec.select = select i1 %cmp19, i32 %sub, i32 %modded.sroa.21.0.copyload
  %add26 = add i32 %spec.select, %modded.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %13)
  %cmp27 = icmp ugt i32 %add26, %13
  %sub30 = sub i32 %13, %modded.sroa.0.0.copyload
  %modded.sroa.21.1 = select i1 %cmp27, i32 %sub30, i32 %spec.select
  %add35 = add i32 %modded.sroa.44.0.copyload, %modded.sroa.29.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %15)
  %cmp36 = icmp ugt i32 %add35, %15
  %sub39 = sub i32 %15, %modded.sroa.44.0.copyload
  %modded.sroa.29.0 = select i1 %cmp36, i32 %sub39, i32 %modded.sroa.29.0.copyload
  %add44 = add i32 %modded.sroa.29.0, %modded.sroa.12.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %15)
  %cmp45 = icmp ugt i32 %add44, %15
  %sub48 = sub i32 %15, %modded.sroa.12.0.copyload
  %modded.sroa.29.1 = select i1 %cmp45, i32 %sub48, i32 %modded.sroa.29.0
  %sub53 = sub i32 %modded.sroa.37.0.copyload, %modded.sroa.0.0.copyload
  %sub56 = sub i32 %modded.sroa.44.0.copyload, %modded.sroa.12.0.copyload
  %and58 = and i32 %modded.sroa.37.0.copyload, 31
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %cmp6.i = icmp ult i32 %18, 6
  br i1 %cmp6.i, label %if.end16.do.end.i_crit_edge, label %if.end16.PM3_WAIT.exit_crit_edge

if.end16.PM3_WAIT.exit_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

if.end16.do.end.i_crit_edge:                      ; preds = %if.end16
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end16.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %cmp.i = icmp ult i32 %21, 6
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.PM3_WAIT.exit_crit_edge

do.end.i.PM3_WAIT.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

PM3_WAIT.exit:                                    ; preds = %do.end.i.PM3_WAIT.exit_crit_edge, %if.end16.PM3_WAIT.exit_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 46616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 393668) #8, !srcloc !118
  %and60 = shl i32 %modded.sroa.12.0.copyload, 16
  %shl = and i32 %and60, 268369920
  %and62 = and i32 %modded.sroa.0.0.copyload, 4095
  %or = or i32 %shl, %and62
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr.i168 = getelementptr i8, ptr %25, i32 33160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 %or) #8, !srcloc !118
  %add65 = add i32 %modded.sroa.29.1, %modded.sroa.12.0.copyload
  %and66 = shl i32 %add65, 16
  %shl67 = and i32 %and66, 268369920
  %add70 = add i32 %modded.sroa.21.1, %modded.sroa.0.0.copyload
  %and71 = and i32 %add70, 4095
  %or72 = or i32 %shl67, %and71
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i169 = getelementptr i8, ptr %27, i32 33168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %or72) #8, !srcloc !118
  %and73 = and i32 %sub53, 65535
  %shl75 = shl i32 %sub56, 16
  %or76 = or i32 %shl75, %and73
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i170 = getelementptr i8, ptr %29, i32 44816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %or76) #8, !srcloc !118
  %sub78 = sub i32 %modded.sroa.0.0.copyload, %and58
  %and79 = and i32 %sub78, 65535
  %or83 = or i32 %and79, %and60
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i171 = getelementptr i8, ptr %31, i32 46592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %or83) #8, !srcloc !118
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.37.0.copyload, i32 %modded.sroa.0.0.copyload)
  %cmp86 = icmp ugt i32 %modded.sroa.37.0.copyload, %modded.sroa.0.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %modded.sroa.44.0.copyload, i32 %modded.sroa.12.0.copyload)
  %cmp89 = icmp ugt i32 %modded.sroa.44.0.copyload, %modded.sroa.12.0.copyload
  %cond90 = select i1 %cmp89, i32 536870912, i32 0
  %add96 = add i32 %modded.sroa.21.1, %and58
  %and97 = and i32 %add96, 4095
  %and100 = shl i32 %modded.sroa.29.1, 16
  %shl101 = and i32 %and100, 268369920
  %or91 = select i1 %cmp86, i32 268484608, i32 49152
  %or94 = or i32 %or91, %cond90
  %or98 = or i32 %or94, %and97
  %or102 = or i32 %or98, %shl101
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i172 = getelementptr i8, ptr %33, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %or102) #8, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %PM3_WAIT.exit, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm3fb_imageblit(ptr noundef %info, ptr noundef %image) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cond = icmp eq i32 %11, 3
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr %struct.pm3_par, ptr %1, i32 0, i32 3, i32 %13
  %bg_color8 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %14 = ptrtoint ptr %bg_color8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bg_color8, align 4
  %arrayidx9 = getelementptr %struct.pm3_par, ptr %1, i32 0, i32 3, i32 %15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %fgx.0.in = phi ptr [ %fg_color, %sw.bb ], [ %arrayidx, %sw.default ]
  %bgx.0.in = phi ptr [ %bg_color, %sw.bb ], [ %arrayidx9, %sw.default ]
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp10.not = icmp eq i8 %17, 1
  br i1 %cmp10.not, label %if.end13, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end13:                                         ; preds = %sw.epilog
  %18 = ptrtoint ptr %fgx.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %fgx.0 = load i32, ptr %fgx.0.in, align 4
  %19 = ptrtoint ptr %bgx.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %bgx.0 = load i32, ptr %bgx.0.in, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp14 = icmp eq i32 %21, 8
  %shl = shl i32 %fgx.0, 8
  %shl17 = shl i32 %bgx.0, 8
  %or = select i1 %cmp14, i32 %shl, i32 0
  %fgx.1 = or i32 %or, %fgx.0
  %or18 = select i1 %cmp14, i32 %shl17, i32 0
  %bgx.1 = or i32 %or18, %bgx.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %21)
  %cmp22 = icmp ult i32 %21, 17
  %shl25 = shl i32 %fgx.1, 16
  %shl27 = shl i32 %bgx.1, 16
  %or26 = select i1 %cmp22, i32 %shl25, i32 0
  %fgx.2 = or i32 %or26, %fgx.1
  %or28 = select i1 %cmp22, i32 %shl27, i32 0
  %bgx.2 = or i32 %or28, %bgx.1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp6.i = icmp ult i32 %24, 7
  br i1 %cmp6.i, label %if.end13.do.end.i_crit_edge, label %if.end13.PM3_WAIT.exit_crit_edge

if.end13.PM3_WAIT.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

if.end13.do.end.i_crit_edge:                      ; preds = %if.end13
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end13.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %cmp.i = icmp ult i32 %27, 7
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.PM3_WAIT.exit_crit_edge

do.end.i.PM3_WAIT.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

PM3_WAIT.exit:                                    ; preds = %do.end.i.PM3_WAIT.exit_crit_edge, %if.end13.PM3_WAIT.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 45248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %fgx.2) #8, !srcloc !118
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr.i138 = getelementptr i8, ptr %31, i32 45256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %bgx.2) #8, !srcloc !118
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i139 = getelementptr i8, ptr %33, i32 46616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 197061) #8, !srcloc !118
  %dy = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %34 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dy, align 4
  %and30 = shl i32 %35, 16
  %shl31 = and i32 %and30, 268369920
  %36 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %image, align 4
  %and32 = and i32 %37, 4095
  %or33 = or i32 %shl31, %and32
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr.i140 = getelementptr i8, ptr %39, i32 33160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %or33) #8, !srcloc !118
  %40 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dy, align 4
  %42 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height2, align 4
  %add = add i32 %43, %41
  %and36 = shl i32 %add, 16
  %shl37 = and i32 %and36, 268369920
  %44 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %image, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %46 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width, align 4
  %add39 = add i32 %47, %45
  %and40 = and i32 %add39, 4095
  %or41 = or i32 %and40, %shl37
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %add.ptr.i141 = getelementptr i8, ptr %49, i32 33168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %or41) #8, !srcloc !118
  %50 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %image, align 4
  %and43 = and i32 %51, 65535
  %52 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dy, align 4
  %shl46 = shl i32 %53, 16
  %or47 = or i32 %shl46, %and43
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %add.ptr.i142 = getelementptr i8, ptr %55, i32 46592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %or47) #8, !srcloc !118
  %56 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width, align 4
  %and49 = and i32 %57, 4095
  %58 = ptrtoint ptr %height2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height2, align 4
  %and52 = shl i32 %59, 16
  %shl53 = and i32 %and52, 268369920
  %or50 = or i32 %and49, %shl53
  %or54 = or i32 %or50, 805347328
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %add.ptr.i143 = getelementptr i8, ptr %61, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %or54) #8, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool55.not169 = icmp eq i32 %3, 0
  br i1 %tobool55.not169, label %PM3_WAIT.exit.cleanup_crit_edge, label %while.body.lr.ph

PM3_WAIT.exit.cleanup_crit_edge:                  ; preds = %PM3_WAIT.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %PM3_WAIT.exit
  %scan_align = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  br label %while.body

while.cond.loopexit:                              ; preds = %while.body75.while.cond.loopexit_crit_edge, %PM3_WAIT.exit156.while.cond.loopexit_crit_edge
  %src.3.lcssa = phi ptr [ %src.1.lcssa, %PM3_WAIT.exit156.while.cond.loopexit_crit_edge ], [ %incdec.ptr76, %while.body75.while.cond.loopexit_crit_edge ]
  %tobool55.not = icmp eq i32 %dec171, 0
  br i1 %tobool55.not, label %while.cond.loopexit.cleanup_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %dec171.in = phi i32 [ %3, %while.body.lr.ph ], [ %dec171, %while.cond.loopexit.while.body_crit_edge ]
  %src.0170 = phi ptr [ %5, %while.body.lr.ph ], [ %src.3.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %dec171 = add i32 %dec171.in, -1
  %62 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %width, align 4
  %add58 = add i32 %63, 7
  %shr = lshr i32 %add58, 3
  %64 = ptrtoint ptr %scan_align to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %scan_align, align 4
  %add59 = add i32 %65, -1
  %sub = add i32 %add59, %shr
  %shr60 = ashr i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 479, i32 %sub)
  %cmp62160 = icmp sgt i32 %sub, 479
  br i1 %cmp62160, label %while.body.while.body64_crit_edge, label %while.body.while.end70_crit_edge

while.body.while.end70_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end70

while.body.while.body64_crit_edge:                ; preds = %while.body
  br label %while.body64

while.body64:                                     ; preds = %while.end.while.body64_crit_edge, %while.body.while.body64_crit_edge
  %width56.0162 = phi i32 [ %sub69, %while.end.while.body64_crit_edge ], [ %shr60, %while.body.while.body64_crit_edge ]
  %src.1161 = phi ptr [ %incdec.ptr, %while.end.while.body64_crit_edge ], [ %src.0170, %while.body.while.body64_crit_edge ]
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %add.ptr.i5.i144 = getelementptr i8, ptr %67, i32 24
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i144) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %68)
  %cmp6.i145 = icmp ult i32 %68, 120
  br i1 %cmp6.i145, label %while.body64.do.end.i148_crit_edge, label %while.body64.while.body68.preheader_crit_edge

while.body64.while.body68.preheader_crit_edge:    ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body68.preheader

while.body64.do.end.i148_crit_edge:               ; preds = %while.body64
  br label %do.end.i148

do.end.i148:                                      ; preds = %do.end.i148.do.end.i148_crit_edge, %while.body64.do.end.i148_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %70, i32 24
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i146) #8, !srcloc !115
  %cmp.i147 = icmp ult i32 %71, 120
  br i1 %cmp.i147, label %do.end.i148.do.end.i148_crit_edge, label %do.end.i148.while.body68.preheader_crit_edge

do.end.i148.while.body68.preheader_crit_edge:     ; preds = %do.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body68.preheader

do.end.i148.do.end.i148_crit_edge:                ; preds = %do.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i148

while.body68.preheader:                           ; preds = %do.end.i148.while.body68.preheader_crit_edge, %while.body64.while.body68.preheader_crit_edge
  br label %while.body68

while.body68:                                     ; preds = %while.body68.while.body68_crit_edge, %while.body68.preheader
  %i.0159 = phi i32 [ %dec66, %while.body68.while.body68_crit_edge ], [ 119, %while.body68.preheader ]
  %src.2158 = phi ptr [ %incdec.ptr, %while.body68.while.body68_crit_edge ], [ %src.1161, %while.body68.preheader ]
  %dec66 = add nsw i32 %i.0159, -1
  %72 = ptrtoint ptr %src.2158 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src.2158, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %add.ptr.i150 = getelementptr i8, ptr %75, i32 32872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %73) #8, !srcloc !118
  %incdec.ptr = getelementptr i32, ptr %src.2158, i32 1
  %tobool67.not = icmp eq i32 %dec66, 0
  br i1 %tobool67.not, label %while.end, label %while.body68.while.body68_crit_edge

while.body68.while.body68_crit_edge:              ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body68

while.end:                                        ; preds = %while.body68
  %sub69 = add nsw i32 %width56.0162, -119
  %cmp62 = icmp sgt i32 %width56.0162, 238
  br i1 %cmp62, label %while.end.while.body64_crit_edge, label %while.end.while.end70_crit_edge

while.end.while.end70_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end70

while.end.while.body64_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body64

while.end70:                                      ; preds = %while.end.while.end70_crit_edge, %while.body.while.end70_crit_edge
  %src.1.lcssa = phi ptr [ %src.0170, %while.body.while.end70_crit_edge ], [ %incdec.ptr, %while.end.while.end70_crit_edge ]
  %width56.0.lcssa = phi i32 [ %shr60, %while.body.while.end70_crit_edge ], [ %sub69, %while.end.while.end70_crit_edge ]
  %add71 = add nsw i32 %width56.0.lcssa, 1
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %add.ptr.i5.i151 = getelementptr i8, ptr %77, i32 24
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i151) #8, !srcloc !115
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add71)
  %cmp6.i152 = icmp ult i32 %78, %add71
  br i1 %cmp6.i152, label %while.end70.do.end.i155_crit_edge, label %while.end70.PM3_WAIT.exit156_crit_edge

while.end70.PM3_WAIT.exit156_crit_edge:           ; preds = %while.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit156

while.end70.do.end.i155_crit_edge:                ; preds = %while.end70
  br label %do.end.i155

do.end.i155:                                      ; preds = %do.end.i155.do.end.i155_crit_edge, %while.end70.do.end.i155_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %add.ptr.i.i153 = getelementptr i8, ptr %80, i32 24
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i153) #8, !srcloc !115
  %cmp.i154 = icmp ult i32 %81, %add71
  br i1 %cmp.i154, label %do.end.i155.do.end.i155_crit_edge, label %do.end.i155.PM3_WAIT.exit156_crit_edge

do.end.i155.PM3_WAIT.exit156_crit_edge:           ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit156

do.end.i155.do.end.i155_crit_edge:                ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i155

PM3_WAIT.exit156:                                 ; preds = %do.end.i155.PM3_WAIT.exit156_crit_edge, %while.end70.PM3_WAIT.exit156_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width56.0.lcssa)
  %tobool74.not164 = icmp eq i32 %width56.0.lcssa, 0
  br i1 %tobool74.not164, label %PM3_WAIT.exit156.while.cond.loopexit_crit_edge, label %PM3_WAIT.exit156.while.body75_crit_edge

PM3_WAIT.exit156.while.body75_crit_edge:          ; preds = %PM3_WAIT.exit156
  br label %while.body75

PM3_WAIT.exit156.while.cond.loopexit_crit_edge:   ; preds = %PM3_WAIT.exit156
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

while.body75:                                     ; preds = %while.body75.while.body75_crit_edge, %PM3_WAIT.exit156.while.body75_crit_edge
  %width56.1166 = phi i32 [ %dec73, %while.body75.while.body75_crit_edge ], [ %width56.0.lcssa, %PM3_WAIT.exit156.while.body75_crit_edge ]
  %src.3165 = phi ptr [ %incdec.ptr76, %while.body75.while.body75_crit_edge ], [ %src.1.lcssa, %PM3_WAIT.exit156.while.body75_crit_edge ]
  %dec73 = add i32 %width56.1166, -1
  %82 = ptrtoint ptr %src.3165 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %src.3165, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %add.ptr.i157 = getelementptr i8, ptr %85, i32 32872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 %83) #8, !srcloc !118
  %incdec.ptr76 = getelementptr i32, ptr %src.3165, i32 1
  %tobool74.not = icmp eq i32 %dec73, 0
  br i1 %tobool74.not, label %while.body75.while.cond.loopexit_crit_edge, label %while.body75.while.body75_crit_edge

while.body75.while.body75_crit_edge:              ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body75

while.body75.while.cond.loopexit_crit_edge:       ; preds = %while.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.loopexit

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.loopexit.cleanup_crit_edge, %PM3_WAIT.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_cursor(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cursor) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false4
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool10.not = icmp eq i16 %10, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp6.i.i = icmp ult i32 %13, 3
  br i1 %cmp6.i.i, label %if.end9.do.end.i.i_crit_edge, label %if.end9.PM3_WRITE_DAC_REG.exit_crit_edge

if.end9.PM3_WRITE_DAC_REG.exit_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit

if.end9.do.end.i.i_crit_edge:                     ; preds = %if.end9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %if.end9.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !115
  %cmp.i.i = icmp ult i32 %16, 3
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.PM3_WRITE_DAC_REG.exit_crit_edge

do.end.i.i.PM3_WRITE_DAC_REG.exit_crit_edge:      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

PM3_WRITE_DAC_REG.exit:                           ; preds = %do.end.i.i.PM3_WRITE_DAC_REG.exit_crit_edge, %if.end9.PM3_WRITE_DAC_REG.exit_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !118
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %20, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 5) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i = select i1 %tobool10.not, i32 16, i32 17
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %22, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %conv.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool15.not = icmp eq i16 %24, 0
  br i1 %tobool15.not, label %PM3_WRITE_DAC_REG.exit.cleanup_crit_edge, label %if.end17

PM3_WRITE_DAC_REG.exit.cleanup_crit_edge:         ; preds = %PM3_WRITE_DAC_REG.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %PM3_WRITE_DAC_REG.exit
  %25 = and i16 %24, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool20.not = icmp eq i16 %25, 0
  br i1 %tobool20.not, label %if.end17.if.end35_crit_edge, label %if.then21

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then21:                                        ; preds = %if.end17
  %26 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %image, align 4
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %xoffset, align 4
  %sub = sub i32 %27, %29
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %32 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yoffset, align 4
  %sub25 = sub i32 %31, %33
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i226 = getelementptr i8, ptr %35, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i226) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp6.i.i227 = icmp ult i32 %36, 3
  br i1 %cmp6.i.i227, label %if.then21.do.end.i.i230_crit_edge, label %if.then21.PM3_WRITE_DAC_REG.exit235_crit_edge

if.then21.PM3_WRITE_DAC_REG.exit235_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit235

if.then21.do.end.i.i230_crit_edge:                ; preds = %if.then21
  br label %do.end.i.i230

do.end.i.i230:                                    ; preds = %do.end.i.i230.do.end.i.i230_crit_edge, %if.then21.do.end.i.i230_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i228 = getelementptr i8, ptr %38, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i228) #8, !srcloc !115
  %cmp.i.i229 = icmp ult i32 %39, 3
  br i1 %cmp.i.i229, label %do.end.i.i230.do.end.i.i230_crit_edge, label %do.end.i.i230.PM3_WRITE_DAC_REG.exit235_crit_edge

do.end.i.i230.PM3_WRITE_DAC_REG.exit235_crit_edge: ; preds = %do.end.i.i230
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit235

do.end.i.i230.do.end.i.i230_crit_edge:            ; preds = %do.end.i.i230
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i230

PM3_WRITE_DAC_REG.exit235:                        ; preds = %do.end.i.i230.PM3_WRITE_DAC_REG.exit235_crit_edge, %if.then21.PM3_WRITE_DAC_REG.exit235_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr.i.i231 = getelementptr i8, ptr %41, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i231, i32 0) #8, !srcloc !118
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr.i8.i232 = getelementptr i8, ptr %43, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i232, i32 7) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i233 = and i32 %sub, 255
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr.i9.i234 = getelementptr i8, ptr %45, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i234, i32 %conv.i233) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %46 = lshr i32 %sub, 8
  %conv29 = and i32 %46, 15
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i236 = getelementptr i8, ptr %48, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i236) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp6.i.i237 = icmp ult i32 %49, 3
  br i1 %cmp6.i.i237, label %PM3_WRITE_DAC_REG.exit235.do.end.i.i240_crit_edge, label %PM3_WRITE_DAC_REG.exit235.PM3_WRITE_DAC_REG.exit245_crit_edge

PM3_WRITE_DAC_REG.exit235.PM3_WRITE_DAC_REG.exit245_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit235
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit245

PM3_WRITE_DAC_REG.exit235.do.end.i.i240_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit235
  br label %do.end.i.i240

do.end.i.i240:                                    ; preds = %do.end.i.i240.do.end.i.i240_crit_edge, %PM3_WRITE_DAC_REG.exit235.do.end.i.i240_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i238 = getelementptr i8, ptr %51, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i238) #8, !srcloc !115
  %cmp.i.i239 = icmp ult i32 %52, 3
  br i1 %cmp.i.i239, label %do.end.i.i240.do.end.i.i240_crit_edge, label %do.end.i.i240.PM3_WRITE_DAC_REG.exit245_crit_edge

do.end.i.i240.PM3_WRITE_DAC_REG.exit245_crit_edge: ; preds = %do.end.i.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit245

do.end.i.i240.do.end.i.i240_crit_edge:            ; preds = %do.end.i.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i240

PM3_WRITE_DAC_REG.exit245:                        ; preds = %do.end.i.i240.PM3_WRITE_DAC_REG.exit245_crit_edge, %PM3_WRITE_DAC_REG.exit235.PM3_WRITE_DAC_REG.exit245_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %54, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i241, i32 0) #8, !srcloc !118
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr.i8.i242 = getelementptr i8, ptr %56, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i242, i32 8) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr.i9.i244 = getelementptr i8, ptr %58, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i244, i32 %conv29) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i246 = getelementptr i8, ptr %60, i32 24
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i246) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp6.i.i247 = icmp ult i32 %61, 3
  br i1 %cmp6.i.i247, label %PM3_WRITE_DAC_REG.exit245.do.end.i.i250_crit_edge, label %PM3_WRITE_DAC_REG.exit245.PM3_WRITE_DAC_REG.exit255_crit_edge

PM3_WRITE_DAC_REG.exit245.PM3_WRITE_DAC_REG.exit255_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit245
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit255

PM3_WRITE_DAC_REG.exit245.do.end.i.i250_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit245
  br label %do.end.i.i250

do.end.i.i250:                                    ; preds = %do.end.i.i250.do.end.i.i250_crit_edge, %PM3_WRITE_DAC_REG.exit245.do.end.i.i250_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i248 = getelementptr i8, ptr %63, i32 24
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i248) #8, !srcloc !115
  %cmp.i.i249 = icmp ult i32 %64, 3
  br i1 %cmp.i.i249, label %do.end.i.i250.do.end.i.i250_crit_edge, label %do.end.i.i250.PM3_WRITE_DAC_REG.exit255_crit_edge

do.end.i.i250.PM3_WRITE_DAC_REG.exit255_crit_edge: ; preds = %do.end.i.i250
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit255

do.end.i.i250.do.end.i.i250_crit_edge:            ; preds = %do.end.i.i250
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i250

PM3_WRITE_DAC_REG.exit255:                        ; preds = %do.end.i.i250.PM3_WRITE_DAC_REG.exit255_crit_edge, %PM3_WRITE_DAC_REG.exit245.PM3_WRITE_DAC_REG.exit255_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %66, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i251, i32 0) #8, !srcloc !118
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %add.ptr.i8.i252 = getelementptr i8, ptr %68, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i252, i32 9) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i253 = and i32 %sub25, 255
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %add.ptr.i9.i254 = getelementptr i8, ptr %70, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i254, i32 %conv.i253) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %71 = lshr i32 %sub25, 8
  %conv34 = and i32 %71, 15
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i256 = getelementptr i8, ptr %73, i32 24
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i256) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp6.i.i257 = icmp ult i32 %74, 3
  br i1 %cmp6.i.i257, label %PM3_WRITE_DAC_REG.exit255.do.end.i.i260_crit_edge, label %PM3_WRITE_DAC_REG.exit255.PM3_WRITE_DAC_REG.exit265_crit_edge

PM3_WRITE_DAC_REG.exit255.PM3_WRITE_DAC_REG.exit265_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit255
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit265

PM3_WRITE_DAC_REG.exit255.do.end.i.i260_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit255
  br label %do.end.i.i260

do.end.i.i260:                                    ; preds = %do.end.i.i260.do.end.i.i260_crit_edge, %PM3_WRITE_DAC_REG.exit255.do.end.i.i260_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i258 = getelementptr i8, ptr %76, i32 24
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i258) #8, !srcloc !115
  %cmp.i.i259 = icmp ult i32 %77, 3
  br i1 %cmp.i.i259, label %do.end.i.i260.do.end.i.i260_crit_edge, label %do.end.i.i260.PM3_WRITE_DAC_REG.exit265_crit_edge

do.end.i.i260.PM3_WRITE_DAC_REG.exit265_crit_edge: ; preds = %do.end.i.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit265

do.end.i.i260.do.end.i.i260_crit_edge:            ; preds = %do.end.i.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i260

PM3_WRITE_DAC_REG.exit265:                        ; preds = %do.end.i.i260.PM3_WRITE_DAC_REG.exit265_crit_edge, %PM3_WRITE_DAC_REG.exit255.PM3_WRITE_DAC_REG.exit265_crit_edge
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %add.ptr.i.i261 = getelementptr i8, ptr %79, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i261, i32 0) #8, !srcloc !118
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %add.ptr.i8.i262 = getelementptr i8, ptr %81, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i262, i32 10) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %add.ptr.i9.i264 = getelementptr i8, ptr %83, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i264, i32 %conv34) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  br label %if.end35

if.end35:                                         ; preds = %PM3_WRITE_DAC_REG.exit265, %if.end17.if.end35_crit_edge
  %84 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %cursor, align 4
  %86 = and i16 %85, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool39.not = icmp eq i16 %86, 0
  br i1 %tobool39.not, label %if.end35.if.end50_crit_edge, label %if.then40

if.end35.if.end50_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then40:                                        ; preds = %if.end35
  %hot = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4
  %87 = ptrtoint ptr %hot to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %hot, align 4
  %89 = and i16 %88, 63
  %conv44 = zext i16 %89 to i32
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i266 = getelementptr i8, ptr %91, i32 24
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i266) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %92)
  %cmp6.i.i267 = icmp ult i32 %92, 3
  br i1 %cmp6.i.i267, label %if.then40.do.end.i.i270_crit_edge, label %if.then40.PM3_WRITE_DAC_REG.exit275_crit_edge

if.then40.PM3_WRITE_DAC_REG.exit275_crit_edge:    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit275

if.then40.do.end.i.i270_crit_edge:                ; preds = %if.then40
  br label %do.end.i.i270

do.end.i.i270:                                    ; preds = %do.end.i.i270.do.end.i.i270_crit_edge, %if.then40.do.end.i.i270_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i268 = getelementptr i8, ptr %94, i32 24
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i268) #8, !srcloc !115
  %cmp.i.i269 = icmp ult i32 %95, 3
  br i1 %cmp.i.i269, label %do.end.i.i270.do.end.i.i270_crit_edge, label %do.end.i.i270.PM3_WRITE_DAC_REG.exit275_crit_edge

do.end.i.i270.PM3_WRITE_DAC_REG.exit275_crit_edge: ; preds = %do.end.i.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit275

do.end.i.i270.do.end.i.i270_crit_edge:            ; preds = %do.end.i.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i270

PM3_WRITE_DAC_REG.exit275:                        ; preds = %do.end.i.i270.PM3_WRITE_DAC_REG.exit275_crit_edge, %if.then40.PM3_WRITE_DAC_REG.exit275_crit_edge
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %add.ptr.i.i271 = getelementptr i8, ptr %97, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i271, i32 0) #8, !srcloc !118
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %add.ptr.i8.i272 = getelementptr i8, ptr %99, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i272, i32 11) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %add.ptr.i9.i274 = getelementptr i8, ptr %101, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i274, i32 %conv44) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %y46 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %y46 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %y46, align 2
  %104 = and i16 %103, 63
  %conv49 = zext i16 %104 to i32
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i276 = getelementptr i8, ptr %106, i32 24
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i276) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp6.i.i277 = icmp ult i32 %107, 3
  br i1 %cmp6.i.i277, label %PM3_WRITE_DAC_REG.exit275.do.end.i.i280_crit_edge, label %PM3_WRITE_DAC_REG.exit275.PM3_WRITE_DAC_REG.exit285_crit_edge

PM3_WRITE_DAC_REG.exit275.PM3_WRITE_DAC_REG.exit285_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit275
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit285

PM3_WRITE_DAC_REG.exit275.do.end.i.i280_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit275
  br label %do.end.i.i280

do.end.i.i280:                                    ; preds = %do.end.i.i280.do.end.i.i280_crit_edge, %PM3_WRITE_DAC_REG.exit275.do.end.i.i280_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i278 = getelementptr i8, ptr %109, i32 24
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i278) #8, !srcloc !115
  %cmp.i.i279 = icmp ult i32 %110, 3
  br i1 %cmp.i.i279, label %do.end.i.i280.do.end.i.i280_crit_edge, label %do.end.i.i280.PM3_WRITE_DAC_REG.exit285_crit_edge

do.end.i.i280.PM3_WRITE_DAC_REG.exit285_crit_edge: ; preds = %do.end.i.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit285

do.end.i.i280.do.end.i.i280_crit_edge:            ; preds = %do.end.i.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i280

PM3_WRITE_DAC_REG.exit285:                        ; preds = %do.end.i.i280.PM3_WRITE_DAC_REG.exit285_crit_edge, %PM3_WRITE_DAC_REG.exit275.PM3_WRITE_DAC_REG.exit285_crit_edge
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %add.ptr.i.i281 = getelementptr i8, ptr %112, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i281, i32 0) #8, !srcloc !118
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %add.ptr.i8.i282 = getelementptr i8, ptr %114, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i282, i32 12) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %add.ptr.i9.i284 = getelementptr i8, ptr %116, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i284, i32 %conv49) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  br label %if.end50

if.end50:                                         ; preds = %PM3_WRITE_DAC_REG.exit285, %if.end35.if.end50_crit_edge
  %117 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %cursor, align 4
  %119 = and i16 %118, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool54.not = icmp eq i16 %119, 0
  br i1 %tobool54.not, label %if.end50.if.end85_crit_edge, label %if.then55

if.end50.if.end85_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then55:                                        ; preds = %if.end50
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %120 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fg_color, align 4
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %122 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bg_color, align 4
  %cmap.sroa.5.0.cmap58.sroa_idx = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %124 = ptrtoint ptr %cmap.sroa.5.0.cmap58.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %124)
  %cmap.sroa.5.0.copyload = load ptr, ptr %cmap.sroa.5.0.cmap58.sroa_idx, align 4
  %cmap.sroa.8.0.cmap58.sroa_idx = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %125 = ptrtoint ptr %cmap.sroa.8.0.cmap58.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %125)
  %cmap.sroa.8.0.copyload = load ptr, ptr %cmap.sroa.8.0.cmap58.sroa_idx, align 4
  %cmap.sroa.11.0.cmap58.sroa_idx = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %126 = ptrtoint ptr %cmap.sroa.11.0.cmap58.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %126)
  %cmap.sroa.11.0.copyload = load ptr, ptr %cmap.sroa.11.0.cmap58.sroa_idx, align 4
  %arrayidx = getelementptr i16, ptr %cmap.sroa.5.0.copyload, i32 %121
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx, align 2
  %129 = lshr i16 %128, 8
  %conv61 = zext i16 %129 to i32
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i286 = getelementptr i8, ptr %131, i32 24
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i286) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %132)
  %cmp6.i.i287 = icmp ult i32 %132, 3
  br i1 %cmp6.i.i287, label %if.then55.do.end.i.i290_crit_edge, label %if.then55.PM3_WRITE_DAC_REG.exit295_crit_edge

if.then55.PM3_WRITE_DAC_REG.exit295_crit_edge:    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit295

if.then55.do.end.i.i290_crit_edge:                ; preds = %if.then55
  br label %do.end.i.i290

do.end.i.i290:                                    ; preds = %do.end.i.i290.do.end.i.i290_crit_edge, %if.then55.do.end.i.i290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i288 = getelementptr i8, ptr %134, i32 24
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i288) #8, !srcloc !115
  %cmp.i.i289 = icmp ult i32 %135, 3
  br i1 %cmp.i.i289, label %do.end.i.i290.do.end.i.i290_crit_edge, label %do.end.i.i290.PM3_WRITE_DAC_REG.exit295_crit_edge

do.end.i.i290.PM3_WRITE_DAC_REG.exit295_crit_edge: ; preds = %do.end.i.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit295

do.end.i.i290.do.end.i.i290_crit_edge:            ; preds = %do.end.i.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i290

PM3_WRITE_DAC_REG.exit295:                        ; preds = %do.end.i.i290.PM3_WRITE_DAC_REG.exit295_crit_edge, %if.then55.PM3_WRITE_DAC_REG.exit295_crit_edge
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %add.ptr.i.i291 = getelementptr i8, ptr %137, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i291, i32 3) #8, !srcloc !118
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %add.ptr.i8.i292 = getelementptr i8, ptr %139, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i292, i32 42) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %add.ptr.i9.i294 = getelementptr i8, ptr %141, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i294, i32 %conv61) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %arrayidx62 = getelementptr i16, ptr %cmap.sroa.8.0.copyload, i32 %121
  %142 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx62, align 2
  %144 = lshr i16 %143, 8
  %conv65 = zext i16 %144 to i32
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i296 = getelementptr i8, ptr %146, i32 24
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i296) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %147)
  %cmp6.i.i297 = icmp ult i32 %147, 3
  br i1 %cmp6.i.i297, label %PM3_WRITE_DAC_REG.exit295.do.end.i.i300_crit_edge, label %PM3_WRITE_DAC_REG.exit295.PM3_WRITE_DAC_REG.exit305_crit_edge

PM3_WRITE_DAC_REG.exit295.PM3_WRITE_DAC_REG.exit305_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit295
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit305

PM3_WRITE_DAC_REG.exit295.do.end.i.i300_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit295
  br label %do.end.i.i300

do.end.i.i300:                                    ; preds = %do.end.i.i300.do.end.i.i300_crit_edge, %PM3_WRITE_DAC_REG.exit295.do.end.i.i300_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i298 = getelementptr i8, ptr %149, i32 24
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i298) #8, !srcloc !115
  %cmp.i.i299 = icmp ult i32 %150, 3
  br i1 %cmp.i.i299, label %do.end.i.i300.do.end.i.i300_crit_edge, label %do.end.i.i300.PM3_WRITE_DAC_REG.exit305_crit_edge

do.end.i.i300.PM3_WRITE_DAC_REG.exit305_crit_edge: ; preds = %do.end.i.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit305

do.end.i.i300.do.end.i.i300_crit_edge:            ; preds = %do.end.i.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i300

PM3_WRITE_DAC_REG.exit305:                        ; preds = %do.end.i.i300.PM3_WRITE_DAC_REG.exit305_crit_edge, %PM3_WRITE_DAC_REG.exit295.PM3_WRITE_DAC_REG.exit305_crit_edge
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %add.ptr.i.i301 = getelementptr i8, ptr %152, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i301, i32 3) #8, !srcloc !118
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %add.ptr.i8.i302 = getelementptr i8, ptr %154, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i302, i32 43) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %add.ptr.i9.i304 = getelementptr i8, ptr %156, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i304, i32 %conv65) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %arrayidx66 = getelementptr i16, ptr %cmap.sroa.11.0.copyload, i32 %121
  %157 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %arrayidx66, align 2
  %159 = lshr i16 %158, 8
  %conv69 = zext i16 %159 to i32
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i306 = getelementptr i8, ptr %161, i32 24
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i306) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %162)
  %cmp6.i.i307 = icmp ult i32 %162, 3
  br i1 %cmp6.i.i307, label %PM3_WRITE_DAC_REG.exit305.do.end.i.i310_crit_edge, label %PM3_WRITE_DAC_REG.exit305.PM3_WRITE_DAC_REG.exit315_crit_edge

PM3_WRITE_DAC_REG.exit305.PM3_WRITE_DAC_REG.exit315_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit305
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit315

PM3_WRITE_DAC_REG.exit305.do.end.i.i310_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit305
  br label %do.end.i.i310

do.end.i.i310:                                    ; preds = %do.end.i.i310.do.end.i.i310_crit_edge, %PM3_WRITE_DAC_REG.exit305.do.end.i.i310_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i308 = getelementptr i8, ptr %164, i32 24
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i308) #8, !srcloc !115
  %cmp.i.i309 = icmp ult i32 %165, 3
  br i1 %cmp.i.i309, label %do.end.i.i310.do.end.i.i310_crit_edge, label %do.end.i.i310.PM3_WRITE_DAC_REG.exit315_crit_edge

do.end.i.i310.PM3_WRITE_DAC_REG.exit315_crit_edge: ; preds = %do.end.i.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit315

do.end.i.i310.do.end.i.i310_crit_edge:            ; preds = %do.end.i.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i310

PM3_WRITE_DAC_REG.exit315:                        ; preds = %do.end.i.i310.PM3_WRITE_DAC_REG.exit315_crit_edge, %PM3_WRITE_DAC_REG.exit305.PM3_WRITE_DAC_REG.exit315_crit_edge
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %add.ptr.i.i311 = getelementptr i8, ptr %167, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i311, i32 3) #8, !srcloc !118
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %add.ptr.i8.i312 = getelementptr i8, ptr %169, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i312, i32 44) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %add.ptr.i9.i314 = getelementptr i8, ptr %171, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i314, i32 %conv69) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %arrayidx71 = getelementptr i16, ptr %cmap.sroa.5.0.copyload, i32 %123
  %172 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx71, align 2
  %174 = lshr i16 %173, 8
  %conv74 = zext i16 %174 to i32
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i316 = getelementptr i8, ptr %176, i32 24
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i316) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %177)
  %cmp6.i.i317 = icmp ult i32 %177, 3
  br i1 %cmp6.i.i317, label %PM3_WRITE_DAC_REG.exit315.do.end.i.i320_crit_edge, label %PM3_WRITE_DAC_REG.exit315.PM3_WRITE_DAC_REG.exit325_crit_edge

PM3_WRITE_DAC_REG.exit315.PM3_WRITE_DAC_REG.exit325_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit315
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit325

PM3_WRITE_DAC_REG.exit315.do.end.i.i320_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit315
  br label %do.end.i.i320

do.end.i.i320:                                    ; preds = %do.end.i.i320.do.end.i.i320_crit_edge, %PM3_WRITE_DAC_REG.exit315.do.end.i.i320_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i318 = getelementptr i8, ptr %179, i32 24
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i318) #8, !srcloc !115
  %cmp.i.i319 = icmp ult i32 %180, 3
  br i1 %cmp.i.i319, label %do.end.i.i320.do.end.i.i320_crit_edge, label %do.end.i.i320.PM3_WRITE_DAC_REG.exit325_crit_edge

do.end.i.i320.PM3_WRITE_DAC_REG.exit325_crit_edge: ; preds = %do.end.i.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit325

do.end.i.i320.do.end.i.i320_crit_edge:            ; preds = %do.end.i.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i320

PM3_WRITE_DAC_REG.exit325:                        ; preds = %do.end.i.i320.PM3_WRITE_DAC_REG.exit325_crit_edge, %PM3_WRITE_DAC_REG.exit315.PM3_WRITE_DAC_REG.exit325_crit_edge
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %add.ptr.i.i321 = getelementptr i8, ptr %182, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i321, i32 3) #8, !srcloc !118
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %add.ptr.i8.i322 = getelementptr i8, ptr %184, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i322, i32 45) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %add.ptr.i9.i324 = getelementptr i8, ptr %186, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i324, i32 %conv74) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %arrayidx76 = getelementptr i16, ptr %cmap.sroa.8.0.copyload, i32 %123
  %187 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx76, align 2
  %189 = lshr i16 %188, 8
  %conv79 = zext i16 %189 to i32
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i326 = getelementptr i8, ptr %191, i32 24
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i326) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %192)
  %cmp6.i.i327 = icmp ult i32 %192, 3
  br i1 %cmp6.i.i327, label %PM3_WRITE_DAC_REG.exit325.do.end.i.i330_crit_edge, label %PM3_WRITE_DAC_REG.exit325.PM3_WRITE_DAC_REG.exit335_crit_edge

PM3_WRITE_DAC_REG.exit325.PM3_WRITE_DAC_REG.exit335_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit325
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit335

PM3_WRITE_DAC_REG.exit325.do.end.i.i330_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit325
  br label %do.end.i.i330

do.end.i.i330:                                    ; preds = %do.end.i.i330.do.end.i.i330_crit_edge, %PM3_WRITE_DAC_REG.exit325.do.end.i.i330_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i328 = getelementptr i8, ptr %194, i32 24
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i328) #8, !srcloc !115
  %cmp.i.i329 = icmp ult i32 %195, 3
  br i1 %cmp.i.i329, label %do.end.i.i330.do.end.i.i330_crit_edge, label %do.end.i.i330.PM3_WRITE_DAC_REG.exit335_crit_edge

do.end.i.i330.PM3_WRITE_DAC_REG.exit335_crit_edge: ; preds = %do.end.i.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit335

do.end.i.i330.do.end.i.i330_crit_edge:            ; preds = %do.end.i.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i330

PM3_WRITE_DAC_REG.exit335:                        ; preds = %do.end.i.i330.PM3_WRITE_DAC_REG.exit335_crit_edge, %PM3_WRITE_DAC_REG.exit325.PM3_WRITE_DAC_REG.exit335_crit_edge
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 4
  %add.ptr.i.i331 = getelementptr i8, ptr %197, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i331, i32 3) #8, !srcloc !118
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %1, align 4
  %add.ptr.i8.i332 = getelementptr i8, ptr %199, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i332, i32 46) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %add.ptr.i9.i334 = getelementptr i8, ptr %201, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i334, i32 %conv79) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %arrayidx81 = getelementptr i16, ptr %cmap.sroa.11.0.copyload, i32 %123
  %202 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %arrayidx81, align 2
  %204 = lshr i16 %203, 8
  %conv84 = zext i16 %204 to i32
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i336 = getelementptr i8, ptr %206, i32 24
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i336) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %207)
  %cmp6.i.i337 = icmp ult i32 %207, 3
  br i1 %cmp6.i.i337, label %PM3_WRITE_DAC_REG.exit335.do.end.i.i340_crit_edge, label %PM3_WRITE_DAC_REG.exit335.PM3_WRITE_DAC_REG.exit345_crit_edge

PM3_WRITE_DAC_REG.exit335.PM3_WRITE_DAC_REG.exit345_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit335
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit345

PM3_WRITE_DAC_REG.exit335.do.end.i.i340_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit335
  br label %do.end.i.i340

do.end.i.i340:                                    ; preds = %do.end.i.i340.do.end.i.i340_crit_edge, %PM3_WRITE_DAC_REG.exit335.do.end.i.i340_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i338 = getelementptr i8, ptr %209, i32 24
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i338) #8, !srcloc !115
  %cmp.i.i339 = icmp ult i32 %210, 3
  br i1 %cmp.i.i339, label %do.end.i.i340.do.end.i.i340_crit_edge, label %do.end.i.i340.PM3_WRITE_DAC_REG.exit345_crit_edge

do.end.i.i340.PM3_WRITE_DAC_REG.exit345_crit_edge: ; preds = %do.end.i.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit345

do.end.i.i340.do.end.i.i340_crit_edge:            ; preds = %do.end.i.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i340

PM3_WRITE_DAC_REG.exit345:                        ; preds = %do.end.i.i340.PM3_WRITE_DAC_REG.exit345_crit_edge, %PM3_WRITE_DAC_REG.exit335.PM3_WRITE_DAC_REG.exit345_crit_edge
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 4
  %add.ptr.i.i341 = getelementptr i8, ptr %212, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i341, i32 3) #8, !srcloc !118
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %add.ptr.i8.i342 = getelementptr i8, ptr %214, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i342, i32 47) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 4
  %add.ptr.i9.i344 = getelementptr i8, ptr %216, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i344, i32 %conv84) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  br label %if.end85

if.end85:                                         ; preds = %PM3_WRITE_DAC_REG.exit345, %if.end50.if.end85_crit_edge
  %217 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %cursor, align 4
  %219 = and i16 %218, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool89.not = icmp eq i16 %219, 0
  br i1 %tobool89.not, label %if.end85.cleanup_crit_edge, label %if.then90

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then90:                                        ; preds = %if.end85
  %220 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp95416.not = icmp eq i32 %221, 0
  br i1 %cmp95416.not, label %if.then90.while.body.preheader_crit_edge, label %for.body.lr.ph

if.then90.while.body.preheader_crit_edge:         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

for.body.lr.ph:                                   ; preds = %if.then90
  %mask92 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %222 = ptrtoint ptr %mask92 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mask92, align 4
  %data = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %224 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %data, align 4
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  br label %for.body

while.cond.preheader:                             ; preds = %for.end149
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %pos.2.lcssa)
  %cmp153422 = icmp slt i32 %pos.2.lcssa, 2048
  br i1 %cmp153422, label %while.cond.preheader.while.body.preheader_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader.while.body.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader.while.body.preheader_crit_edge, %if.then90.while.body.preheader_crit_edge
  %pos.3423.ph = phi i32 [ 1024, %if.then90.while.body.preheader_crit_edge ], [ %pos.2.lcssa, %while.cond.preheader.while.body.preheader_crit_edge ]
  br label %while.body

for.body:                                         ; preds = %for.end149.for.body_crit_edge, %for.body.lr.ph
  %pos.0420 = phi i32 [ 1024, %for.body.lr.ph ], [ %pos.2.lcssa, %for.end149.for.body_crit_edge ]
  %i.0419 = phi i32 [ 0, %for.body.lr.ph ], [ %inc151, %for.end149.for.body_crit_edge ]
  %mask.0418 = phi ptr [ %223, %for.body.lr.ph ], [ %mask.1.lcssa433, %for.end149.for.body_crit_edge ]
  %bitmap.0417 = phi ptr [ %225, %for.body.lr.ph ], [ %bitmap.1.lcssa431, %for.end149.for.body_crit_edge ]
  %226 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %width, align 4
  %add = add i32 %227, 7
  %shr99 = lshr i32 %add, 3
  %sub100 = sub nsw i32 8, %shr99
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp102405.not = icmp ult i32 %add, 8
  br i1 %cmp102405.not, label %for.body.for.body144.preheader_crit_edge, label %for.body.for.body104_crit_edge

for.body.for.body104_crit_edge:                   ; preds = %for.body
  br label %for.body104

for.body.for.body144.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body144.preheader

for.cond141.preheader:                            ; preds = %PM3_WRITE_DAC_REG.exit368
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp142412 = icmp ult i32 %add, 64
  br i1 %cmp142412, label %for.cond141.preheader.for.body144.preheader_crit_edge, label %for.cond141.preheader.for.end149_crit_edge

for.cond141.preheader.for.end149_crit_edge:       ; preds = %for.cond141.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end149

for.cond141.preheader.for.body144.preheader_crit_edge: ; preds = %for.cond141.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body144.preheader

for.body144.preheader:                            ; preds = %for.cond141.preheader.for.body144.preheader_crit_edge, %for.body.for.body144.preheader_crit_edge
  %pos.1.lcssa435 = phi i32 [ %inc128, %for.cond141.preheader.for.body144.preheader_crit_edge ], [ %pos.0420, %for.body.for.body144.preheader_crit_edge ]
  %mask.1.lcssa434 = phi ptr [ %incdec.ptr140, %for.cond141.preheader.for.body144.preheader_crit_edge ], [ %mask.0418, %for.body.for.body144.preheader_crit_edge ]
  %bitmap.1.lcssa432 = phi ptr [ %incdec.ptr, %for.cond141.preheader.for.body144.preheader_crit_edge ], [ %bitmap.0417, %for.body.for.body144.preheader_crit_edge ]
  br label %for.body144

for.body104:                                      ; preds = %PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge, %for.body.for.body104_crit_edge
  %j.0409 = phi i32 [ %dec, %PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge ], [ %shr99, %for.body.for.body104_crit_edge ]
  %pos.1408 = phi i32 [ %inc128, %PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge ], [ %pos.0420, %for.body.for.body104_crit_edge ]
  %mask.1407 = phi ptr [ %incdec.ptr140, %PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge ], [ %mask.0418, %for.body.for.body104_crit_edge ]
  %bitmap.1406 = phi ptr [ %incdec.ptr, %PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge ], [ %bitmap.0417, %for.body.for.body104_crit_edge ]
  %228 = ptrtoint ptr %bitmap.1406 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %bitmap.1406, align 1
  %230 = ptrtoint ptr %mask.1407 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %mask.1407, align 1
  %xor223 = xor i8 %231, %229
  %232 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %cmp110 = icmp eq i16 %233, 0
  %and115224 = and i8 %231, %229
  %spec.select225 = select i1 %cmp110, i8 %and115224, i8 %xor223
  %inc = add i32 %pos.1408, 1
  %conv118 = zext i8 %spec.select225 to i32
  %234 = lshr i32 %conv118, 4
  %arrayidx120 = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %234
  %235 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx120, align 1
  %237 = lshr i8 %231, 4
  %238 = zext i8 %237 to i32
  %arrayidx124 = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %238
  %239 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx124, align 1
  %shl = shl i8 %240, 1
  %or126 = or i8 %shl, %236
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i346 = getelementptr i8, ptr %242, i32 24
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i346) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %243)
  %cmp6.i.i347 = icmp ult i32 %243, 3
  br i1 %cmp6.i.i347, label %for.body104.do.end.i.i350_crit_edge, label %for.body104.PM3_WRITE_DAC_REG.exit355_crit_edge

for.body104.PM3_WRITE_DAC_REG.exit355_crit_edge:  ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit355

for.body104.do.end.i.i350_crit_edge:              ; preds = %for.body104
  br label %do.end.i.i350

do.end.i.i350:                                    ; preds = %do.end.i.i350.do.end.i.i350_crit_edge, %for.body104.do.end.i.i350_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i348 = getelementptr i8, ptr %245, i32 24
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i348) #8, !srcloc !115
  %cmp.i.i349 = icmp ult i32 %246, 3
  br i1 %cmp.i.i349, label %do.end.i.i350.do.end.i.i350_crit_edge, label %do.end.i.i350.PM3_WRITE_DAC_REG.exit355_crit_edge

do.end.i.i350.PM3_WRITE_DAC_REG.exit355_crit_edge: ; preds = %do.end.i.i350
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit355

do.end.i.i350.do.end.i.i350_crit_edge:            ; preds = %do.end.i.i350
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i350

PM3_WRITE_DAC_REG.exit355:                        ; preds = %do.end.i.i350.PM3_WRITE_DAC_REG.exit355_crit_edge, %for.body104.PM3_WRITE_DAC_REG.exit355_crit_edge
  %shr.i = lshr i32 %pos.1408, 8
  %and.i = and i32 %shr.i, 255
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %1, align 4
  %add.ptr.i.i351 = getelementptr i8, ptr %248, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i351, i32 %and.i) #8, !srcloc !118
  %and1.i = and i32 %pos.1408, 255
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %1, align 4
  %add.ptr.i8.i352 = getelementptr i8, ptr %250, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i352, i32 %and1.i) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i353 = zext i8 %or126 to i32
  %251 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %1, align 4
  %add.ptr.i9.i354 = getelementptr i8, ptr %252, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i354, i32 %conv.i353) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %inc128 = add i32 %pos.1408, 2
  %and130 = and i32 %conv118, 15
  %arrayidx131 = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %and130
  %253 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx131, align 1
  %255 = ptrtoint ptr %mask.1407 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %mask.1407, align 1
  %257 = and i8 %256, 15
  %and134 = zext i8 %257 to i32
  %arrayidx135 = getelementptr [16 x i8], ptr @cursor_bits_lookup, i32 0, i32 %and134
  %258 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %arrayidx135, align 1
  %shl137 = shl i8 %259, 1
  %or138 = or i8 %shl137, %254
  %260 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i356 = getelementptr i8, ptr %261, i32 24
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i356) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %262)
  %cmp6.i.i357 = icmp ult i32 %262, 3
  br i1 %cmp6.i.i357, label %PM3_WRITE_DAC_REG.exit355.do.end.i.i360_crit_edge, label %PM3_WRITE_DAC_REG.exit355.PM3_WRITE_DAC_REG.exit368_crit_edge

PM3_WRITE_DAC_REG.exit355.PM3_WRITE_DAC_REG.exit368_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit355
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit368

PM3_WRITE_DAC_REG.exit355.do.end.i.i360_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit355
  br label %do.end.i.i360

do.end.i.i360:                                    ; preds = %do.end.i.i360.do.end.i.i360_crit_edge, %PM3_WRITE_DAC_REG.exit355.do.end.i.i360_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i358 = getelementptr i8, ptr %264, i32 24
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i358) #8, !srcloc !115
  %cmp.i.i359 = icmp ult i32 %265, 3
  br i1 %cmp.i.i359, label %do.end.i.i360.do.end.i.i360_crit_edge, label %do.end.i.i360.PM3_WRITE_DAC_REG.exit368_crit_edge

do.end.i.i360.PM3_WRITE_DAC_REG.exit368_crit_edge: ; preds = %do.end.i.i360
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit368

do.end.i.i360.do.end.i.i360_crit_edge:            ; preds = %do.end.i.i360
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i360

PM3_WRITE_DAC_REG.exit368:                        ; preds = %do.end.i.i360.PM3_WRITE_DAC_REG.exit368_crit_edge, %PM3_WRITE_DAC_REG.exit355.PM3_WRITE_DAC_REG.exit368_crit_edge
  %shr.i361 = lshr i32 %inc, 8
  %and.i362 = and i32 %shr.i361, 255
  %266 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %1, align 4
  %add.ptr.i.i363 = getelementptr i8, ptr %267, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i363, i32 %and.i362) #8, !srcloc !118
  %and1.i364 = and i32 %inc, 255
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %add.ptr.i8.i365 = getelementptr i8, ptr %269, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i365, i32 %and1.i364) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv.i366 = zext i8 %or138 to i32
  %270 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %1, align 4
  %add.ptr.i9.i367 = getelementptr i8, ptr %271, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i367, i32 %conv.i366) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %incdec.ptr = getelementptr i8, ptr %bitmap.1406, i32 1
  %incdec.ptr140 = getelementptr i8, ptr %mask.1407, i32 1
  %dec = add nsw i32 %j.0409, -1
  %cmp102 = icmp sgt i32 %j.0409, 1
  br i1 %cmp102, label %PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge, label %for.cond141.preheader

PM3_WRITE_DAC_REG.exit368.for.body104_crit_edge:  ; preds = %PM3_WRITE_DAC_REG.exit368
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body104

for.body144:                                      ; preds = %PM3_WRITE_DAC_REG.exit392.for.body144_crit_edge, %for.body144.preheader
  %k.0414 = phi i32 [ %dec148, %PM3_WRITE_DAC_REG.exit392.for.body144_crit_edge ], [ %sub100, %for.body144.preheader ]
  %pos.2413 = phi i32 [ %inc146, %PM3_WRITE_DAC_REG.exit392.for.body144_crit_edge ], [ %pos.1.lcssa435, %for.body144.preheader ]
  %inc145 = add i32 %pos.2413, 1
  %272 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i369 = getelementptr i8, ptr %273, i32 24
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i369) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %274)
  %cmp6.i.i370 = icmp ult i32 %274, 3
  br i1 %cmp6.i.i370, label %for.body144.do.end.i.i373_crit_edge, label %for.body144.PM3_WRITE_DAC_REG.exit380_crit_edge

for.body144.PM3_WRITE_DAC_REG.exit380_crit_edge:  ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit380

for.body144.do.end.i.i373_crit_edge:              ; preds = %for.body144
  br label %do.end.i.i373

do.end.i.i373:                                    ; preds = %do.end.i.i373.do.end.i.i373_crit_edge, %for.body144.do.end.i.i373_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i371 = getelementptr i8, ptr %276, i32 24
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i371) #8, !srcloc !115
  %cmp.i.i372 = icmp ult i32 %277, 3
  br i1 %cmp.i.i372, label %do.end.i.i373.do.end.i.i373_crit_edge, label %do.end.i.i373.PM3_WRITE_DAC_REG.exit380_crit_edge

do.end.i.i373.PM3_WRITE_DAC_REG.exit380_crit_edge: ; preds = %do.end.i.i373
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit380

do.end.i.i373.do.end.i.i373_crit_edge:            ; preds = %do.end.i.i373
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i373

PM3_WRITE_DAC_REG.exit380:                        ; preds = %do.end.i.i373.PM3_WRITE_DAC_REG.exit380_crit_edge, %for.body144.PM3_WRITE_DAC_REG.exit380_crit_edge
  %shr.i374 = lshr i32 %pos.2413, 8
  %and.i375 = and i32 %shr.i374, 255
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 4
  %add.ptr.i.i376 = getelementptr i8, ptr %279, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i376, i32 %and.i375) #8, !srcloc !118
  %and1.i377 = and i32 %pos.2413, 255
  %280 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %1, align 4
  %add.ptr.i8.i378 = getelementptr i8, ptr %281, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i378, i32 %and1.i377) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %282 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %1, align 4
  %add.ptr.i9.i379 = getelementptr i8, ptr %283, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i379, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %inc146 = add i32 %pos.2413, 2
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i381 = getelementptr i8, ptr %285, i32 24
  %286 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i381) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %286)
  %cmp6.i.i382 = icmp ult i32 %286, 3
  br i1 %cmp6.i.i382, label %PM3_WRITE_DAC_REG.exit380.do.end.i.i385_crit_edge, label %PM3_WRITE_DAC_REG.exit380.PM3_WRITE_DAC_REG.exit392_crit_edge

PM3_WRITE_DAC_REG.exit380.PM3_WRITE_DAC_REG.exit392_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit380
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit392

PM3_WRITE_DAC_REG.exit380.do.end.i.i385_crit_edge: ; preds = %PM3_WRITE_DAC_REG.exit380
  br label %do.end.i.i385

do.end.i.i385:                                    ; preds = %do.end.i.i385.do.end.i.i385_crit_edge, %PM3_WRITE_DAC_REG.exit380.do.end.i.i385_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %287 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i383 = getelementptr i8, ptr %288, i32 24
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i383) #8, !srcloc !115
  %cmp.i.i384 = icmp ult i32 %289, 3
  br i1 %cmp.i.i384, label %do.end.i.i385.do.end.i.i385_crit_edge, label %do.end.i.i385.PM3_WRITE_DAC_REG.exit392_crit_edge

do.end.i.i385.PM3_WRITE_DAC_REG.exit392_crit_edge: ; preds = %do.end.i.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit392

do.end.i.i385.do.end.i.i385_crit_edge:            ; preds = %do.end.i.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i385

PM3_WRITE_DAC_REG.exit392:                        ; preds = %do.end.i.i385.PM3_WRITE_DAC_REG.exit392_crit_edge, %PM3_WRITE_DAC_REG.exit380.PM3_WRITE_DAC_REG.exit392_crit_edge
  %shr.i386 = lshr i32 %inc145, 8
  %and.i387 = and i32 %shr.i386, 255
  %290 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %1, align 4
  %add.ptr.i.i388 = getelementptr i8, ptr %291, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i388, i32 %and.i387) #8, !srcloc !118
  %and1.i389 = and i32 %inc145, 255
  %292 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %1, align 4
  %add.ptr.i8.i390 = getelementptr i8, ptr %293, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i390, i32 %and1.i389) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %294 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %1, align 4
  %add.ptr.i9.i391 = getelementptr i8, ptr %295, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i391, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %dec148 = add nsw i32 %k.0414, -1
  %cmp142 = icmp sgt i32 %k.0414, 1
  br i1 %cmp142, label %PM3_WRITE_DAC_REG.exit392.for.body144_crit_edge, label %PM3_WRITE_DAC_REG.exit392.for.end149_crit_edge

PM3_WRITE_DAC_REG.exit392.for.end149_crit_edge:   ; preds = %PM3_WRITE_DAC_REG.exit392
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end149

PM3_WRITE_DAC_REG.exit392.for.body144_crit_edge:  ; preds = %PM3_WRITE_DAC_REG.exit392
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body144

for.end149:                                       ; preds = %PM3_WRITE_DAC_REG.exit392.for.end149_crit_edge, %for.cond141.preheader.for.end149_crit_edge
  %mask.1.lcssa433 = phi ptr [ %incdec.ptr140, %for.cond141.preheader.for.end149_crit_edge ], [ %mask.1.lcssa434, %PM3_WRITE_DAC_REG.exit392.for.end149_crit_edge ]
  %bitmap.1.lcssa431 = phi ptr [ %incdec.ptr, %for.cond141.preheader.for.end149_crit_edge ], [ %bitmap.1.lcssa432, %PM3_WRITE_DAC_REG.exit392.for.end149_crit_edge ]
  %pos.2.lcssa = phi i32 [ %inc128, %for.cond141.preheader.for.end149_crit_edge ], [ %inc146, %PM3_WRITE_DAC_REG.exit392.for.end149_crit_edge ]
  %inc151 = add nuw i32 %i.0419, 1
  %296 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %height, align 4
  %cmp95 = icmp ult i32 %inc151, %297
  br i1 %cmp95, label %for.end149.for.body_crit_edge, label %while.cond.preheader

for.end149.for.body_crit_edge:                    ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.body:                                       ; preds = %PM3_WRITE_DAC_REG.exit404.while.body_crit_edge, %while.body.preheader
  %pos.3423 = phi i32 [ %inc155, %PM3_WRITE_DAC_REG.exit404.while.body_crit_edge ], [ %pos.3423.ph, %while.body.preheader ]
  %inc155 = add i32 %pos.3423, 1
  %298 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %1, align 4
  %add.ptr.i5.i.i393 = getelementptr i8, ptr %299, i32 24
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i393) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %300)
  %cmp6.i.i394 = icmp ult i32 %300, 3
  br i1 %cmp6.i.i394, label %while.body.do.end.i.i397_crit_edge, label %while.body.PM3_WRITE_DAC_REG.exit404_crit_edge

while.body.PM3_WRITE_DAC_REG.exit404_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit404

while.body.do.end.i.i397_crit_edge:               ; preds = %while.body
  br label %do.end.i.i397

do.end.i.i397:                                    ; preds = %do.end.i.i397.do.end.i.i397_crit_edge, %while.body.do.end.i.i397_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i395 = getelementptr i8, ptr %302, i32 24
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i395) #8, !srcloc !115
  %cmp.i.i396 = icmp ult i32 %303, 3
  br i1 %cmp.i.i396, label %do.end.i.i397.do.end.i.i397_crit_edge, label %do.end.i.i397.PM3_WRITE_DAC_REG.exit404_crit_edge

do.end.i.i397.PM3_WRITE_DAC_REG.exit404_crit_edge: ; preds = %do.end.i.i397
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WRITE_DAC_REG.exit404

do.end.i.i397.do.end.i.i397_crit_edge:            ; preds = %do.end.i.i397
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i397

PM3_WRITE_DAC_REG.exit404:                        ; preds = %do.end.i.i397.PM3_WRITE_DAC_REG.exit404_crit_edge, %while.body.PM3_WRITE_DAC_REG.exit404_crit_edge
  %shr.i398 = lshr i32 %pos.3423, 8
  %and.i399 = and i32 %shr.i398, 255
  %304 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %1, align 4
  %add.ptr.i.i400 = getelementptr i8, ptr %305, i32 16424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i400, i32 %and.i399) #8, !srcloc !118
  %and1.i401 = and i32 %pos.3423, 255
  %306 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %1, align 4
  %add.ptr.i8.i402 = getelementptr i8, ptr %307, i32 16416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i402, i32 %and1.i401) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %308 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %1, align 4
  %add.ptr.i9.i403 = getelementptr i8, ptr %309, i32 16432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i403, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %exitcond.not = icmp eq i32 %inc155, 2048
  br i1 %exitcond.not, label %PM3_WRITE_DAC_REG.exit404.cleanup_crit_edge, label %PM3_WRITE_DAC_REG.exit404.while.body_crit_edge

PM3_WRITE_DAC_REG.exit404.while.body_crit_edge:   ; preds = %PM3_WRITE_DAC_REG.exit404
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

PM3_WRITE_DAC_REG.exit404.cleanup_crit_edge:      ; preds = %PM3_WRITE_DAC_REG.exit404
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %PM3_WRITE_DAC_REG.exit404.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %PM3_WRITE_DAC_REG.exit.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %PM3_WRITE_DAC_REG.exit.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %PM3_WRITE_DAC_REG.exit404.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm3fb_sync(ptr nocapture noundef readonly %info) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp6.i = icmp ult i32 %4, 2
  br i1 %cmp6.i, label %entry.do.end.i_crit_edge, label %entry.PM3_WAIT.exit_crit_edge

entry.PM3_WAIT.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !117
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !115
  %cmp.i = icmp ult i32 %7, 2
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.PM3_WAIT.exit_crit_edge

do.end.i.PM3_WAIT.exit_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PM3_WAIT.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

PM3_WAIT.exit:                                    ; preds = %do.end.i.PM3_WAIT.exit_crit_edge, %entry.PM3_WAIT.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 35840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1024) #8, !srcloc !118
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i20 = getelementptr i8, ptr %11, i32 35904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  br label %do.body2

do.body2:                                         ; preds = %do.cond12.do.body2_crit_edge, %PM3_WAIT.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i2123 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2123) #8, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %do.body2.do.end7_crit_edge, label %do.body2.do.cond12_crit_edge

do.body2.do.cond12_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond12

do.body2.do.end7_crit_edge:                       ; preds = %do.body2
  br label %do.end7

do.end7:                                          ; preds = %do.end7.do.end7_crit_edge, %do.body2.do.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !132
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i21 = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #8, !srcloc !115
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %do.end7.do.end7_crit_edge, label %do.end7.do.cond12_crit_edge

do.end7.do.cond12_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond12

do.end7.do.end7_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.cond12:                                        ; preds = %do.end7.do.cond12_crit_edge, %do.body2.do.cond12_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr.i22 = getelementptr i8, ptr %19, i32 8192
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !115
  %cmp14.not = icmp eq i32 %20, 392
  br i1 %cmp14.not, label %do.end15, label %do.cond12.do.body2_crit_edge

do.cond12.do.body2_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.end15:                                         ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !98, !100, !101, !102, !103, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_pm3fb__305_1555_pm3fb_init6, !1, !"__initcall__kmod_pm3fb__305_1555_pm3fb_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1555, i32 1}
!2 = !{ptr @__param_mode_option, !3, !"__param_mode_option", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1557, i32 1}
!4 = !{ptr @__UNIQUE_ID_mode_optiontype306, !3, !"__UNIQUE_ID_mode_optiontype306", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_mode_option307, !6, !"__UNIQUE_ID_mode_option307", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1558, i32 1}
!7 = !{ptr @__param_noaccel, !8, !"__param_noaccel", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1559, i32 1}
!9 = !{ptr @__UNIQUE_ID_noacceltype308, !8, !"__UNIQUE_ID_noacceltype308", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_noaccel309, !11, !"__UNIQUE_ID_noaccel309", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1560, i32 1}
!12 = !{ptr @__param_hwcursor, !13, !"__param_hwcursor", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1561, i32 1}
!14 = !{ptr @__UNIQUE_ID_hwcursortype310, !13, !"__UNIQUE_ID_hwcursortype310", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_hwcursor311, !16, !"__UNIQUE_ID_hwcursor311", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1562, i32 1}
!17 = !{ptr @__param_nomtrr, !18, !"__param_nomtrr", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1564, i32 1}
!19 = !{ptr @__UNIQUE_ID_nomtrrtype312, !18, !"__UNIQUE_ID_nomtrrtype312", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_nomtrr313, !21, !"__UNIQUE_ID_nomtrr313", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1565, i32 1}
!22 = !{ptr @__UNIQUE_ID_description314, !23, !"__UNIQUE_ID_description314", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1567, i32 1}
!24 = !{ptr @__UNIQUE_ID_file315, !25, !"__UNIQUE_ID_file315", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1568, i32 1}
!26 = !{ptr @__UNIQUE_ID_license316, !25, !"__UNIQUE_ID_license316", i1 false, i1 false}
!27 = !{ptr @mode_option, !28, !"mode_option", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/pm3fb.c", i32 56, i32 14}
!29 = !{ptr @noaccel, !30, !"noaccel", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/pm3fb.c", i32 57, i32 13}
!31 = !{ptr @nomtrr, !32, !"nomtrr", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/pm3fb.c", i32 58, i32 13}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1539, i32 21}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1515, i32 38}
!37 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1518, i32 31}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1520, i32 31}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1522, i32 31}
!43 = !{ptr @pm3fb_driver, !44, !"pm3fb_driver", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1489, i32 26}
!45 = !{ptr @pm3fb_id_table, !46, !"pm3fb_id_table", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1482, i32 35}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1320, i32 3}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pm3fb_probe._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @pm3fb_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1344, i32 7}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1346, i32 3}
!57 = !{ptr @pm3fb_probe._entry.9, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @pm3fb_probe._entry_ptr.11, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1352, i32 3}
!61 = !{ptr @pm3fb_probe._entry.12, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pm3fb_probe._entry_ptr.14, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1362, i32 3}
!65 = !{ptr @pm3fb_probe._entry.15, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pm3fb_probe._entry_ptr.17, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1365, i32 7}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1367, i32 3}
!71 = !{ptr @pm3fb_probe._entry.19, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pm3fb_probe._entry_ptr.21, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1373, i32 3}
!75 = !{ptr @pm3fb_probe._entry.22, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pm3fb_probe._entry_ptr.24, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1396, i32 3}
!79 = !{ptr @pm3fb_probe._entry.25, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @pm3fb_probe._entry_ptr.27, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1415, i32 17}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1438, i32 2}
!85 = !{ptr @pm3fb_probe._entry.29, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pm3fb_probe._entry_ptr.31, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @pm3fb_fix, !88, !"pm3fb_fix", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/pm3fb.c", i32 80, i32 33}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1235, i32 3}
!91 = !{ptr @pm3fb_size_memory._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @pm3fb_size_memory._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @pm3fb_size_memory._entry.33, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1241, i32 3}
!95 = !{ptr @pm3fb_size_memory._entry_ptr.34, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @pm3fb_ops, !97, !"pm3fb_ops", i1 false, i1 false}
!97 = !{!"../drivers/video/fbdev/pm3fb.c", i32 1203, i32 28}
!98 = !{ptr @cursor_bits_lookup, !99, !"cursor_bits_lookup", i1 false, i1 false}
!99 = !{!"../drivers/video/fbdev/pm3fb.c", i32 607, i32 17}
!100 = !{ptr @__param_str_mode_option, !3, !"__param_str_mode_option", i1 false, i1 false}
!101 = !{ptr @__param_str_noaccel, !8, !"__param_str_noaccel", i1 false, i1 false}
!102 = !{ptr @__param_str_hwcursor, !13, !"__param_str_hwcursor", i1 false, i1 false}
!103 = !{ptr @hwcursor, !104, !"hwcursor", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/pm3fb.c", i32 55, i32 12}
!105 = !{ptr @__param_str_nomtrr, !18, !"__param_str_nomtrr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 6254434}
!116 = !{i64 2156281846}
!117 = !{i64 2156281688}
!118 = !{i64 6254016}
!119 = !{i64 2156322465}
!120 = !{i64 2156324354}
!121 = !{i64 2156324706}
!122 = !{i64 2156324875}
!123 = !{i8 0, i8 2}
!124 = !{i64 2156282656}
!125 = !{i64 2156282811}
!126 = !{i64 2156282966}
!127 = !{i64 2156283121}
!128 = !{i64 2156282177}
!129 = !{i64 2156282332}
!130 = !{i64 2156285101}
!131 = !{i64 2156285383}
!132 = !{i64 2156285225}
!133 = !{i64 2156292410}
