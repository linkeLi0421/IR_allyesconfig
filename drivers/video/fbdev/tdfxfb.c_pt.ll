; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/tdfxfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/tdfxfb.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.tdfx_par = type { i32, [16 x i32], ptr, i32, i32, [2 x %struct.tdfxfb_i2c_chan] }
%struct.tdfxfb_i2c_chan = type { ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.banshee_reg = type { [21 x i8], [25 x i8], [9 x i8], [1 x i8], [5 x i8], [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }

@tdfxfb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @tdfxfb_id_table, ptr @tdfxfb_probe, ptr @tdfxfb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author324 = internal constant [47 x i8] c"tdfxfb.author=Hannu Mallat <hmallat@cc.hut.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [50 x i8] c"tdfxfb.description=3Dfx framebuffer device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [39 x i8] c"tdfxfb.file=drivers/video/fbdev/tdfxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [19 x i8] c"tdfxfb.license=GPL\00", section ".modinfo", align 1
@__param_str_hwcursor = internal constant [16 x i8] c"tdfxfb.hwcursor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@hwcursor = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_hwcursor = internal constant %struct.kernel_param { ptr @__param_str_hwcursor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @hwcursor } }, section "__param", align 4
@__UNIQUE_ID_hwcursortype328 = internal constant [29 x i8] c"tdfxfb.parmtype=hwcursor:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hwcursor329 = internal constant [77 x i8] c"tdfxfb.parm=hwcursor:Enable hardware cursor (1=enable, 0=disable, default=1)\00", section ".modinfo", align 1
@__param_str_mode_option = internal constant [19 x i8] c"tdfxfb.mode_option\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mode_option = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mode_option = internal constant %struct.kernel_param { ptr @__param_str_mode_option, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mode_option } }, section "__param", align 4
@__UNIQUE_ID_mode_optiontype330 = internal constant [34 x i8] c"tdfxfb.parmtype=mode_option:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mode_option331 = internal constant [63 x i8] c"tdfxfb.parm=mode_option:Initial video mode e.g. '648x480-8@60'\00", section ".modinfo", align 1
@__param_str_nomtrr = internal constant [14 x i8] c"tdfxfb.nomtrr\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nomtrr = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nomtrr = internal constant %struct.kernel_param { ptr @__param_str_nomtrr, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nomtrr } }, section "__param", align 4
@__UNIQUE_ID_nomtrrtype332 = internal constant [28 x i8] c"tdfxfb.parmtype=nomtrr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nomtrr333 = internal constant [59 x i8] c"tdfxfb.parm=nomtrr:Disable MTRR support (default: enabled)\00", section ".modinfo", align 1
@__initcall__kmod_tdfxfb__334_1656_tdfxfb_init6 = internal global ptr @tdfxfb_init, section ".initcall6.init", align 4
@__exitcall_tdfxfb_exit = internal global ptr @tdfxfb_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tdfxfb\00", [25 x i8] zeroinitializer }, align 32
@tdfxfb_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4634, i32 3, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id { i32 4634, i32 5, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id { i32 4634, i32 9, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013tdfxfb: Can't enable pdev: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tdfxfb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/tdfxfb.c\00", [35 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr = internal global ptr @tdfxfb_probe._entry, section ".printk_index", align 4
@tdfx_fix = internal constant { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 3, i16 0, i16 1, i16 1, i32 0, i32 0, i32 0, i32 31, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"3Dfx Banshee\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"3Dfx Voodoo3\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"3Dfx Voodoo5\00", [19 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tdfx regbase\00", [19 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013tdfxfb: Can't reserve regbase\0A\00", [63 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.10 = internal global ptr @tdfxfb_probe._entry.8, section ".printk_index", align 4
@tdfxfb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013fb: Can't remap %s register area.\0A\00", [59 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.13 = internal global ptr @tdfxfb_probe._entry.11, section ".printk_index", align 4
@tdfxfb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013fb: Can't count %s memory.\0A\00", [34 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.16 = internal global ptr @tdfxfb_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tdfx smem\00", [22 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013tdfxfb: Can't reserve smem\0A\00", [34 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.20 = internal global ptr @tdfxfb_probe._entry.18, section ".printk_index", align 4
@tdfxfb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013fb: Can't remap %s framebuffer.\0A\00", [61 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.23 = internal global ptr @tdfxfb_probe._entry.21, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tdfx iobase\00", [20 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013tdfxfb: Can't reserve iobase\0A\00", [32 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.27 = internal global ptr @tdfxfb_probe._entry.25, section ".printk_index", align 4
@tdfxfb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016fb: %s memory = %dK\0A\00", [41 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.30 = internal global ptr @tdfxfb_probe._entry.28, section ".printk_index", align 4
@nopan = internal global { i1, [31 x i8] } zeroinitializer, align 32
@tdfxfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tdfxfb_check_var, ptr @tdfxfb_set_par, ptr @tdfxfb_setcolreg, ptr null, ptr @tdfxfb_blank, ptr @tdfxfb_pan_display, ptr @tdfxfb_fillrect, ptr @tdfxfb_copyarea, ptr @tdfxfb_imageblit, ptr @tdfxfb_cursor, ptr @banshee_wait_idle, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tdfxfb_probe.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.31, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fb: %s: Unable to get Mode Database\0A\00", [59 x i8] zeroinitializer }, align 32
@tdfx_var = internal constant { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 1024, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 1, i32 39722, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"640x480@60\00", [21 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013tdfxfb: Can't allocate color map\0A\00", [60 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.35 = internal global ptr @tdfxfb_probe._entry.33, section ".printk_index", align 4
@tdfxfb_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tdfxfb: can't register framebuffer\0A\00", [58 x i8] zeroinitializer }, align 32
@tdfxfb_probe._entry_ptr.38 = internal global ptr @tdfxfb_probe._entry.36, section ".printk_index", align 4
@tdfxfb_set_par.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tdfxfb_set_par\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fb: %s: Graphics mode is now set at %dx%d depth %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tdfxfb_setcolreg.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tdfxfb_setcolreg\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fb: %s: bad depth %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Voodoo3-DDC\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Voodoo3-I2C\00", [20 x i8] zeroinitializer }, align 32
@tdfxfb_setup_ddc_bus.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tdfxfb_setup_ddc_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fb: %s: I2C bus %s registered.\0A\00", [32 x i8] zeroinitializer }, align 32
@tdfxfb_setup_i2c_bus.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.46, i8 1, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tdfxfb_setup_i2c_bus\00", [43 x i8] zeroinitializer }, align 32
@tdfxfb_probe_i2c_connector.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 1, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tdfxfb_probe_i2c_connector\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fb: %s: Probe DDC Bus\0A\00", [41 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tdfxfb_check_var\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb: %s: depth not supported: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fb: %s: xoffset not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb: %s: interlace not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fb: %s: mode outside monitor's specs\0A\00", [58 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.55, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fb: %s: width not supported: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.56, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fb: %s: height not supported: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.57, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"fb: %s: no memory for screen (%ux%ux%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.58, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fb: %s: pixclock too high (%ldKHz)\0A\00", [60 x i8] zeroinitializer }, align 32
@tdfxfb_check_var.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.59, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fb: %s: Checking graphics mode at %dx%d depth %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nopan\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nowrap\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hwcursor=\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nomtrr\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"tdfxfb_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 137, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"hwcursor\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 151, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"mode_option\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 152, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"nomtrr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 153, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 138, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"tdfxfb_id_table\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 124, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1381, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"tdfx_fix\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 86, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1396, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1400, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1404, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1411, i32 7 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1413, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1420, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1428, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1432, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1434, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1441, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1448, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1450, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1454, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"nopan\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [11 x i8] c"tdfxfb_ops\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1142, i32 28 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1487, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [9 x i8] c"tdfx_var\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 94, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1507, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1529, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1534, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 730, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 779, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1329, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1330, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1284, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1312, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1349, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 441, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 452, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 465, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 471, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 479, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 484, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 491, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 499, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 537, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1575, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1578, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1580, i32 32 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1582, i32 33 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [32 x i8] c"../drivers/video/fbdev/tdfxfb.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1584, i32 33 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_hwcursor329, ptr @__UNIQUE_ID_hwcursortype328, ptr @__UNIQUE_ID_license327, ptr @__UNIQUE_ID_mode_option331, ptr @__UNIQUE_ID_mode_optiontype330, ptr @__UNIQUE_ID_nomtrr333, ptr @__UNIQUE_ID_nomtrrtype332, ptr @__exitcall_tdfxfb_exit, ptr @__initcall__kmod_tdfxfb__334_1656_tdfxfb_init6, ptr @__param_hwcursor, ptr @__param_mode_option, ptr @__param_nomtrr, ptr @tdfxfb_exit, ptr @tdfxfb_probe._entry, ptr @tdfxfb_probe._entry.11, ptr @tdfxfb_probe._entry.14, ptr @tdfxfb_probe._entry.18, ptr @tdfxfb_probe._entry.21, ptr @tdfxfb_probe._entry.25, ptr @tdfxfb_probe._entry.28, ptr @tdfxfb_probe._entry.33, ptr @tdfxfb_probe._entry.36, ptr @tdfxfb_probe._entry.8, ptr @tdfxfb_probe._entry_ptr, ptr @tdfxfb_probe._entry_ptr.10, ptr @tdfxfb_probe._entry_ptr.13, ptr @tdfxfb_probe._entry_ptr.16, ptr @tdfxfb_probe._entry_ptr.20, ptr @tdfxfb_probe._entry_ptr.23, ptr @tdfxfb_probe._entry_ptr.27, ptr @tdfxfb_probe._entry_ptr.30, ptr @tdfxfb_probe._entry_ptr.35, ptr @tdfxfb_probe._entry_ptr.38, ptr @tdfxfb_driver, ptr @hwcursor, ptr @mode_option, ptr @nomtrr, ptr @.str, ptr @tdfxfb_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tdfx_fix, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @nopan, ptr @tdfxfb_ops, ptr @.str.31, ptr @tdfx_var, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwcursor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_option to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nomtrr to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfx_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nopan to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfx_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdfxfb_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @tdfxfb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_init() #0 section ".init.text" align 64 {
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
  call fastcc void @tdfxfb_setup(ptr noundef %2) #12
  %call1 = call i32 @__pci_register_driver(ptr noundef nonnull @tdfxfb_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call ptr @framebuffer_alloc(i32 noundef 2896, ptr noundef %dev) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %fix, ptr @tdfx_fix, i32 68)
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %if.end5.sw.epilog_crit_edge [
    i16 3, label %sw.bb
    i16 5, label %sw.bb9
    i16 9, label %sw.bb15
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr %fix, ptr @.str.4, i32 13)
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %fix, ptr @.str.5, i32 13)
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %fix, ptr @.str.6, i32 13)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb15, %sw.bb9, %sw.bb
  %.sink = phi i32 [ 350000, %sw.bb15 ], [ 300000, %sw.bb9 ], [ 270000, %sw.bb ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %1, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end5.sw.epilog_crit_edge
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %mmio_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 10
  %12 = ptrtoint ptr %mmio_start to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mmio_start, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %sw.epilog.cond.end_crit_edge, label %cond.false

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %sub = add i32 %14, 1
  %add = sub i32 %sub, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.epilog.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %sw.epilog.cond.end_crit_edge ]
  %mmio_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 11
  %17 = ptrtoint ptr %mmio_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %mmio_len, align 4
  %call36 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %11, i32 noundef %cond, ptr noundef nonnull @.str.7, i32 noundef 0) #9
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %out_err

if.end44:                                         ; preds = %cond.end
  %18 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mmio_start, align 4
  %20 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mmio_len, align 4
  %call49 = tail call ptr @ioremap(i32 noundef %19, i32 noundef %21) #9
  %regbase_virt = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %regbase_virt to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call49, ptr %regbase_virt, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.end61

do.end55:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %fix) #13
  br label %out_err_regbase

if.end61:                                         ; preds = %if.end44
  %arrayidx63 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %23 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx63, align 8
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %smem_start, align 4
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device, align 2
  %call67 = tail call fastcc i32 @do_lfb_size(ptr noundef %1, i16 noundef zeroext %27)
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call67, ptr %smem_len, align 4
  %29 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smem_start, align 4
  %end86 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %31 = ptrtoint ptr %end86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp87 = icmp eq i32 %32, 0
  br i1 %cmp87, label %if.end61.cond.end99_crit_edge, label %cond.false90

if.end61.cond.end99_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end99

cond.false90:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx63, align 8
  %sub97 = add i32 %32, 1
  %add98 = sub i32 %sub97, %34
  br label %cond.end99

cond.end99:                                       ; preds = %cond.false90, %if.end61.cond.end99_crit_edge
  %cond100 = phi i32 [ %add98, %cond.false90 ], [ 0, %if.end61.cond.end99_crit_edge ]
  %call101 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %30, i32 noundef %cond100, ptr noundef nonnull @.str.17, i32 noundef 0) #9
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %do.end106, label %if.end109

do.end106:                                        ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #11
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %out_err_regbase

if.end109:                                        ; preds = %cond.end99
  %35 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %smem_start, align 4
  %37 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %smem_len, align 4
  %call114 = tail call ptr @ioremap_wc(i32 noundef %36, i32 noundef %38) #9
  %39 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 25
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call114, ptr %39, align 4
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %do.end119, label %if.end125

do.end119:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %fix) #13
  br label %out_err_screenbase

if.end125:                                        ; preds = %if.end109
  %arrayidx127 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %41 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx127, align 8
  %iobase = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %iobase, align 8
  %44 = load i32, ptr %arrayidx127, align 8
  %end134 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %45 = ptrtoint ptr %end134 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %end134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp135 = icmp eq i32 %46, 0
  %sub145 = sub i32 1, %44
  %add146 = add i32 %sub145, %46
  %cond148 = select i1 %cmp135, i32 0, i32 %add146
  %call149 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %44, i32 noundef %cond148, ptr noundef nonnull @.str.24, i32 noundef 0) #9
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %do.end154, label %do.end160

do.end154:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %out_err_screenbase

do.end160:                                        ; preds = %if.end125
  %47 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %smem_len, align 4
  %shr = lshr i32 %48, 10
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %fix, i32 noundef %shr) #13
  %49 = load i8, ptr @nomtrr, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool168.not = icmp eq i8 %49, 0
  br i1 %tobool168.not, label %if.then169, label %do.end160.if.end175_crit_edge

do.end160.if.end175_crit_edge:                    ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then169:                                       ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #11
  %wc_cookie = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %wc_cookie to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %wc_cookie, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then169, %do.end160.if.end175_crit_edge
  %.b = load i1, ptr @nopan, align 4
  %not..b = xor i1 %.b, true
  %conv178 = zext i1 %not..b to i16
  %ypanstep = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 7
  %51 = ptrtoint ptr %ypanstep to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv178, ptr %ypanstep, align 2
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 7, i32 8
  %52 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %ywrapstep, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 20
  %53 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @tdfxfb_ops, ptr %fbops, align 4
  %palette = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 1
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 27
  %54 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %palette, ptr %pseudo_palette, align 4
  %flags = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 2
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 10112, ptr %flags, align 4
  %56 = load i32, ptr @hwcursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool186.not = icmp eq i32 %56, 0
  br i1 %tobool186.not, label %if.end175.if.end193_crit_edge, label %if.then187

if.end175.if.end193_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.then187:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %smem_len, align 4
  %sub190 = add i32 %58, -1024
  %and = and i32 %sub190, -8192
  store i32 %and, ptr %smem_len, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then187, %if.end175.if.end193_crit_edge
  %monspecs = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8
  %var = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 6
  %59 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %bits_per_pixel, align 4
  tail call fastcc void @tdfxfb_create_i2c_busses(ptr noundef nonnull %call2)
  %call194 = tail call fastcc i32 @tdfxfb_probe_i2c_connector(ptr noundef %1, ptr noundef %monspecs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.then196, label %if.end193.if.end226_crit_edge

if.end193.if.end226_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.then196:                                       ; preds = %if.end193
  %modedb = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %modedb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %modedb, align 4
  %cmp197 = icmp eq ptr %61, null
  br i1 %cmp197, label %do.body200, label %if.else

do.body200:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_probe.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_probe, %if.then206)) #9
          to label %if.end226 [label %if.then206], !srcloc !181

if.then206:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_probe.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2) #9
  br label %if.end226

if.else:                                          ; preds = %if.then196
  %modedb_len = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 6
  %62 = ptrtoint ptr %modedb_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %modedb_len, align 4
  %modelist = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef nonnull %61, i32 noundef %63, ptr noundef %modelist) #9
  %call212 = tail call ptr @fb_find_best_display(ptr noundef %monspecs, ptr noundef %modelist) #9
  %tobool213.not = icmp eq ptr %call212, null
  br i1 %tobool213.not, label %if.else.if.end226_crit_edge, label %if.then214

if.else.if.end226_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end226

if.then214:                                       ; preds = %if.else
  tail call void @fb_videomode_to_var(ptr noundef %var, ptr noundef nonnull %call212) #9
  %call217 = tail call i32 @tdfxfb_check_var(ptr noundef %var, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.end230

if.then220:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #11
  %64 = call ptr @memcpy(ptr %var, ptr @tdfx_var, i32 160)
  br label %if.end226

if.end226:                                        ; preds = %if.then220, %if.else.if.end226_crit_edge, %if.then206, %do.body200, %if.end193.if.end226_crit_edge
  %65 = load ptr, ptr @mode_option, align 4
  %tobool227.not.not = icmp eq ptr %65, null
  br i1 %tobool227.not.not, label %if.end230.thread, label %if.end226.if.then232_crit_edge

if.end226.if.then232_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then232

if.end230.thread:                                 ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @.str.32, ptr @mode_option, align 4
  br label %if.then232

if.end230:                                        ; preds = %if.then214
  %.pr = load ptr, ptr @mode_option, align 4
  %tobool231.not = icmp eq ptr %.pr, null
  br i1 %tobool231.not, label %if.end230.if.then247_crit_edge, label %if.end230.if.then232_crit_edge

if.end230.if.then232_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then232

if.end230.if.then247_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then247

if.then232:                                       ; preds = %if.end230.if.then232_crit_edge, %if.end230.thread, %if.end226.if.then232_crit_edge
  %found.1.off0472475 = phi i1 [ false, %if.end230.thread ], [ true, %if.end230.if.then232_crit_edge ], [ false, %if.end226.if.then232_crit_edge ]
  %66 = phi ptr [ @.str.32, %if.end230.thread ], [ %.pr, %if.end230.if.then232_crit_edge ], [ %65, %if.end226.if.then232_crit_edge ]
  %modedb234 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %modedb234 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %modedb234, align 4
  %modedb_len235 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 6
  %69 = ptrtoint ptr %modedb_len235 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %modedb_len235, align 4
  %71 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bits_per_pixel, align 4
  %call238 = tail call i32 @fb_find_mode(ptr noundef %var, ptr noundef nonnull %call2, ptr noundef nonnull %66, ptr noundef %68, i32 noundef %70, ptr noundef null, i32 noundef %72) #9
  %73 = zext i32 %call238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call238, label %if.end245 [
    i32 0, label %if.then232.if.then242_crit_edge
    i32 4, label %if.then232.if.then242_crit_edge485
  ]

if.then232.if.then242_crit_edge485:               ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

if.then232.if.then242_crit_edge:                  ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then242

if.then242:                                       ; preds = %if.then232.if.then242_crit_edge, %if.then232.if.then242_crit_edge485
  %74 = call ptr @memcpy(ptr %var, ptr @tdfx_var, i32 160)
  br i1 %found.1.off0472475, label %if.then242.if.then247_crit_edge, label %if.then242.if.end250_crit_edge

if.then242.if.end250_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

if.then242.if.then247_crit_edge:                  ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then247

if.end245:                                        ; preds = %if.then232
  br i1 %found.1.off0472475, label %if.end245.if.then247_crit_edge, label %if.end245.if.end250_crit_edge

if.end245.if.end250_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

if.end245.if.then247_crit_edge:                   ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then247

if.then247:                                       ; preds = %if.end245.if.then247_crit_edge, %if.then242.if.then247_crit_edge, %if.end230.if.then247_crit_edge
  %modedb248 = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 8, i32 1
  %75 = ptrtoint ptr %modedb248 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %modedb248, align 4
  tail call void @fb_destroy_modedb(ptr noundef %76) #9
  %77 = ptrtoint ptr %modedb248 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %modedb248, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then247, %if.end245.if.end250_crit_edge, %if.then242.if.end250_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 2
  %78 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xres_virtual, align 4
  %80 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bits_per_pixel, align 4
  %add254 = add i32 %81, 7
  %shr255 = lshr i32 %add254, 3
  %mul = mul i32 %shr255, %79
  %82 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %smem_len, align 4
  %div = udiv i32 %83, %mul
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 3
  %84 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 6, i32 1
  %85 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %86)
  %cmp262 = icmp ult i32 %div, %86
  br i1 %cmp262, label %if.end250.out_err_iobase_crit_edge, label %if.end265

if.end250.out_err_iobase_crit_edge:               ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err_iobase

if.end265:                                        ; preds = %if.end250
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call2, i32 0, i32 12
  %call266 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 256, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %cmp267 = icmp slt i32 %call266, 0
  br i1 %cmp267, label %do.end272, label %if.end275

do.end272:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #11
  %call274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %out_err_iobase

if.end275:                                        ; preds = %if.end265
  %call276 = tail call i32 @register_framebuffer(ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %cmp277 = icmp slt i32 %call276, 0
  br i1 %cmp277, label %do.end282, label %if.end286

do.end282:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  %call284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %out_err_iobase

if.end286:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %87 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call2, ptr %driver_data.i.i, align 4
  br label %cleanup

out_err_iobase:                                   ; preds = %do.end282, %do.end272, %if.end250.out_err_iobase_crit_edge
  tail call fastcc void @tdfxfb_delete_i2c_busses(ptr noundef %1)
  %88 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx127, align 8
  %90 = ptrtoint ptr %end134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %end134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp294 = icmp eq i32 %91, 0
  %sub304 = sub i32 1, %89
  %add305 = add i32 %sub304, %91
  %cond307 = select i1 %cmp294, i32 0, i32 %add305
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %89, i32 noundef %cond307) #9
  br label %out_err_screenbase

out_err_screenbase:                               ; preds = %out_err_iobase, %do.end154, %do.end119
  %92 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %39, align 4
  %tobool308.not = icmp eq ptr %93, null
  br i1 %tobool308.not, label %out_err_screenbase.if.end310_crit_edge, label %if.then309

out_err_screenbase.if.end310_crit_edge:           ; preds = %out_err_screenbase
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end310

if.then309:                                       ; preds = %out_err_screenbase
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %93) #9
  br label %if.end310

if.end310:                                        ; preds = %if.then309, %out_err_screenbase.if.end310_crit_edge
  %94 = ptrtoint ptr %smem_start to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %smem_start, align 4
  %96 = ptrtoint ptr %end86 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %end86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp316 = icmp eq i32 %97, 0
  br i1 %cmp316, label %if.end310.cond.end328_crit_edge, label %cond.false319

if.end310.cond.end328_crit_edge:                  ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end328

cond.false319:                                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx63, align 8
  %sub326 = add i32 %97, 1
  %add327 = sub i32 %sub326, %99
  br label %cond.end328

cond.end328:                                      ; preds = %cond.false319, %if.end310.cond.end328_crit_edge
  %cond329 = phi i32 [ %add327, %cond.false319 ], [ 0, %if.end310.cond.end328_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %95, i32 noundef %cond329) #9
  br label %out_err_regbase

out_err_regbase:                                  ; preds = %cond.end328, %do.end106, %do.end55
  %100 = ptrtoint ptr %regbase_virt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regbase_virt, align 4
  %tobool331.not = icmp eq ptr %101, null
  br i1 %tobool331.not, label %out_err_regbase.if.end334_crit_edge, label %if.then332

out_err_regbase.if.end334_crit_edge:              ; preds = %out_err_regbase
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end334

if.then332:                                       ; preds = %out_err_regbase
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %101) #9
  br label %if.end334

if.end334:                                        ; preds = %if.then332, %out_err_regbase.if.end334_crit_edge
  %102 = ptrtoint ptr %mmio_start to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mmio_start, align 4
  %104 = ptrtoint ptr %mmio_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mmio_len, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %103, i32 noundef %105) #9
  br label %out_err

out_err:                                          ; preds = %if.end334, %do.end41
  tail call void @framebuffer_release(ptr noundef nonnull %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end286, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -6, %out_err ], [ 0, %if.end286 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  tail call void @unregister_framebuffer(ptr noundef %1) #9
  %chan.i = getelementptr inbounds %struct.tdfx_par, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %adapter.i = getelementptr inbounds %struct.tdfx_par, ptr %3, i32 0, i32 5, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chan.i, align 8
  %arrayidx8.i = getelementptr %struct.tdfx_par, ptr %3, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8.i, align 8
  %tobool10.not.i = icmp eq ptr %8, null
  br i1 %tobool10.not.i, label %if.end.i.tdfxfb_delete_i2c_busses.exit_crit_edge, label %if.then11.i

if.end.i.tdfxfb_delete_i2c_busses.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tdfxfb_delete_i2c_busses.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %adapter14.i = getelementptr %struct.tdfx_par, ptr %3, i32 0, i32 5, i32 1, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter14.i) #9
  br label %tdfxfb_delete_i2c_busses.exit

tdfxfb_delete_i2c_busses.exit:                    ; preds = %if.then11.i, %if.end.i.tdfxfb_delete_i2c_busses.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx8.i, align 8
  %regbase_virt = getelementptr inbounds %struct.tdfx_par, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regbase_virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase_virt, align 4
  tail call void @iounmap(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @iounmap(ptr noundef %14) #9
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %17 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  %sub = sub i32 1, %16
  %add = add i32 %sub, %18
  %cond = select i1 %cmp, i32 0, i32 %add
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %16, i32 noundef %cond) #9
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 8
  %end15 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %21 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16 = icmp eq i32 %22, 0
  %sub25 = sub i32 1, %20
  %add26 = add i32 %sub25, %22
  %cond28 = select i1 %cmp16, i32 0, i32 %add26
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %20, i32 noundef %cond28) #9
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resource, align 8
  %end34 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %25 = ptrtoint ptr %end34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp35 = icmp eq i32 %26, 0
  %sub44 = sub i32 1, %24
  %add45 = add i32 %sub44, %26
  %cond47 = select i1 %cmp35, i32 0, i32 %add45
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %cond47) #9
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  tail call void @framebuffer_release(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_lfb_size(ptr nocapture noundef readonly %par, i16 noundef zeroext %dev_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %4 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %dev_id)
  %cmp = icmp ult i16 %dev_id, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then.if.end9_crit_edge, label %land.lhs.true

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and5 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %spec.select = select i1 %tobool6.not, i32 1, i32 2
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and8 = lshr i32 %3, 27
  %8 = and i32 %and8, 7
  %shl = shl nuw nsw i32 1, %8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %land.lhs.true, %if.then.if.end9_crit_edge
  %chip_size.0 = phi i32 [ 2, %if.then.if.end9_crit_edge ], [ %shl, %if.else ], [ %spec.select, %land.lhs.true ]
  %tobool11.not = phi i32 [ 32769, %if.then.if.end9_crit_edge ], [ 32769, %if.else ], [ 1, %land.lhs.true ]
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #9, !srcloc !182
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %or13 = or i32 %tobool11.not, %12
  %13 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase_virt.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or13) #9
  %17 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %16) #9, !srcloc !185
  %mul = select i1 %tobool.not, i32 4194304, i32 8388608
  %mul15 = mul nuw nsw i32 %mul, %chip_size.0
  ret i32 %mul15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tdfxfb_create_i2c_busses(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1619066880) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 536935631) #9, !srcloc !185
  %chan = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %chan, align 8
  %arrayidx4 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %arrayidx4, align 8
  %dev = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 22
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %adapter.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 1
  %name1.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 12
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.43, i32 noundef 48) #9
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %adapter.i, align 8
  %class.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %class.i, align 4
  %algo.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2
  %algo_data.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %algo.i, ptr %algo_data.i, align 4
  %parent.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 9, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %parent.i, align 8
  %setsda.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %setsda.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tdfxfb_ddc_setsda, ptr %setsda.i, align 4
  %setscl.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %setscl.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tdfxfb_ddc_setscl, ptr %setscl.i, align 8
  %getsda.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %getsda.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tdfxfb_ddc_getsda, ptr %getsda.i, align 4
  %getscl.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %getscl.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tdfxfb_ddc_getscl, ptr %getscl.i, align 8
  %udelay.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %udelay.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10, ptr %udelay.i, align 4
  %timeout.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 50, ptr %timeout.i, align 8
  %20 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %chan, ptr %algo.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 9, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %chan, ptr %driver_data.i.i.i, align 4
  %call17.i = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.i = icmp eq i32 %call17.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_setup_ddc_bus.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_create_i2c_busses, %if.then21.i)) #9
          to label %tdfxfb_setup_ddc_bus.exit [label %if.then21.i], !srcloc !181

if.then21.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_setup_ddc_bus.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #9
  br label %tdfxfb_setup_ddc_bus.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %chan, align 8
  br label %tdfxfb_setup_ddc_bus.exit

tdfxfb_setup_ddc_bus.exit:                        ; preds = %if.else.i, %if.then21.i, %do.body.i
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %adapter.i23 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 1
  %name1.i24 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 12
  %call.i25 = tail call i32 @strlcpy(ptr noundef %name1.i24, ptr noundef nonnull @.str.44, i32 noundef 48) #9
  %25 = ptrtoint ptr %adapter.i23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %adapter.i23, align 8
  %algo.i26 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2
  %algo_data.i27 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 3
  %26 = ptrtoint ptr %algo_data.i27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %algo.i26, ptr %algo_data.i27, align 4
  %parent.i28 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 9, i32 1
  %27 = ptrtoint ptr %parent.i28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %parent.i28, align 8
  %setsda.i29 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 1
  %28 = ptrtoint ptr %setsda.i29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tdfxfb_i2c_setsda, ptr %setsda.i29, align 4
  %setscl.i30 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 2
  %29 = ptrtoint ptr %setscl.i30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tdfxfb_i2c_setscl, ptr %setscl.i30, align 8
  %getsda.i31 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 3
  %30 = ptrtoint ptr %getsda.i31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tdfxfb_i2c_getsda, ptr %getsda.i31, align 4
  %getscl.i32 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 4
  %31 = ptrtoint ptr %getscl.i32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tdfxfb_i2c_getscl, ptr %getscl.i32, align 8
  %udelay.i33 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 7
  %32 = ptrtoint ptr %udelay.i33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %udelay.i33, align 4
  %timeout.i34 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 2, i32 8
  %33 = ptrtoint ptr %timeout.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 50, ptr %timeout.i34, align 8
  %34 = ptrtoint ptr %algo.i26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx4, ptr %algo.i26, align 8
  %driver_data.i.i.i35 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 5, i32 1, i32 1, i32 9, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx4, ptr %driver_data.i.i.i35, align 4
  %call16.i = tail call i32 @i2c_bit_add_bus(ptr noundef %adapter.i23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i36 = icmp eq i32 %call16.i, 0
  br i1 %cmp.i36, label %do.body.i37, label %if.else.i38

do.body.i37:                                      ; preds = %tdfxfb_setup_ddc_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_setup_i2c_bus.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_create_i2c_busses, %if.then20.i)) #9
          to label %tdfxfb_setup_i2c_bus.exit [label %if.then20.i], !srcloc !181

if.then20.i:                                      ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_setup_i2c_bus.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.44) #9
  br label %tdfxfb_setup_i2c_bus.exit

if.else.i38:                                      ; preds = %tdfxfb_setup_ddc_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx4, align 8
  br label %tdfxfb_setup_i2c_bus.exit

tdfxfb_setup_i2c_bus.exit:                        ; preds = %if.else.i38, %if.then20.i, %do.body.i37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tdfxfb_probe_i2c_connector(ptr noundef %par, ptr noundef %specs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_probe_i2c_connector.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_probe_i2c_connector, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !181

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_probe_i2c_connector.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chan = getelementptr inbounds %struct.tdfx_par, ptr %par, i32 0, i32 5
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %adapter = getelementptr inbounds %struct.tdfx_par, ptr %par, i32 0, i32 5, i32 0, i32 1
  %call8 = tail call ptr @fb_ddc_read(ptr noundef %adapter) #9
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fb_edid_to_monspecs(ptr noundef nonnull %call8, ptr noundef %specs) #9
  tail call void @kfree(ptr noundef nonnull %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end9.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_display(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_check_var(ptr noundef %var, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %4 = add i32 %3, -8
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !181

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %7) #9
  br label %cleanup

if.end14:                                         ; preds = %entry
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %10 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15.not = icmp eq i32 %9, %11
  br i1 %cmp15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %xres_virtual, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %13 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %15 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp20 = icmp ugt i32 %14, %16
  br i1 %cmp20, label %if.then21, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %yres_virtual, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %18 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %if.end43, label %do.body27

do.body27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then39)) #9
          to label %cleanup [label %if.then39], !srcloc !181

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end24
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %20 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %yoffset, align 4
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %21 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vmode, align 4
  %and = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp44 = icmp eq i32 %and, 1
  br i1 %cmp44, label %land.lhs.true45, label %if.end43.if.end64_crit_edge

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true45:                                  ; preds = %if.end43
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %24)
  %cmp46 = icmp ult i32 %24, 300000
  br i1 %cmp46, label %do.body48, label %land.lhs.true45.if.end64_crit_edge

land.lhs.true45.if.end64_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.body48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then60)) #9
          to label %cleanup [label %if.then60], !srcloc !181

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true45.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  %hfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 12
  %25 = ptrtoint ptr %hfmax to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool65.not = icmp eq i32 %26, 0
  br i1 %tobool65.not, label %if.end64.if.end93_crit_edge, label %land.lhs.true66

if.end64.if.end93_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true66:                                  ; preds = %if.end64
  %vfmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 19
  %27 = ptrtoint ptr %vfmax to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vfmax, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool68.not = icmp eq i16 %28, 0
  br i1 %tobool68.not, label %land.lhs.true66.if.end93_crit_edge, label %land.lhs.true69

land.lhs.true66.if.end93_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %dclkmax = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 8, i32 14
  %29 = ptrtoint ptr %dclkmax to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dclkmax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool71.not = icmp eq i32 %30, 0
  br i1 %tobool71.not, label %land.lhs.true69.if.end93_crit_edge, label %land.lhs.true72

land.lhs.true69.if.end93_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %call73 = tail call i32 @fb_validate_mode(ptr noundef %var, ptr noundef %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.body77, label %land.lhs.true72.if.end93_crit_edge

land.lhs.true72.if.end93_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.body77:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then89)) #9
          to label %cleanup [label %if.then89], !srcloc !181

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end93:                                         ; preds = %land.lhs.true72.if.end93_crit_edge, %land.lhs.true69.if.end93_crit_edge, %land.lhs.true66.if.end93_crit_edge, %if.end64.if.end93_crit_edge
  %31 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %var, align 4
  %add = add i32 %32, 15
  %and95 = and i32 %add, -16
  store i32 %and95, ptr %var, align 4
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 4
  %add99 = add i32 %34, 7
  %shr = lshr i32 %add99, 3
  %mul = mul i32 %shr, %and95
  %35 = add i32 %and95, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1729, i32 %35)
  %36 = icmp ult i32 %35, -1729
  br i1 %36, label %do.body107, label %if.end124

do.body107:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then119)) #9
          to label %cleanup [label %if.then119], !srcloc !181

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %var, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.50, i32 noundef %38) #9
  br label %cleanup

if.end124:                                        ; preds = %if.end93
  %39 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %yres, align 4
  %41 = add i32 %40, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1849, i32 %41)
  %42 = icmp ult i32 %41, -1849
  br i1 %42, label %do.body133, label %if.end150

do.body133:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then145)) #9
          to label %cleanup [label %if.then145], !srcloc !181

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %yres, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.50, i32 noundef %44) #9
  br label %cleanup

if.end150:                                        ; preds = %if.end124
  %45 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %yres_virtual, align 4
  %mul152 = mul i32 %46, %mul
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul152, i32 %48)
  %cmp153 = icmp ugt i32 %mul152, %48
  br i1 %cmp153, label %if.then155, label %if.end150.if.end184_crit_edge

if.end150.if.end184_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

if.then155:                                       ; preds = %if.end150
  %div = udiv i32 %48, %mul
  %49 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %40)
  %cmp161 = icmp ult i32 %div, %40
  br i1 %cmp161, label %do.body164, label %if.then155.if.end184_crit_edge

if.then155.if.end184_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end184

do.body164:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then176)) #9
          to label %cleanup [label %if.then176], !srcloc !181

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %var, align 4
  %52 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %yres_virtual, align 4
  %54 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.50, i32 noundef %51, i32 noundef %53, i32 noundef %55) #9
  br label %cleanup

if.end184:                                        ; preds = %if.then155.if.end184_crit_edge, %if.end150.if.end184_crit_edge
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %56 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pixclock, align 4
  %div185 = udiv i32 1000000000, %57
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div185, i32 %59)
  %cmp187 = icmp ugt i32 %div185, %59
  br i1 %cmp187, label %do.body190, label %if.end208

do.body190:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then202)) #9
          to label %cleanup [label %if.then202], !srcloc !181

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pixclock, align 4
  %div204 = udiv i32 1000000000, %61
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.50, i32 noundef %div204) #9
  br label %cleanup

if.end208:                                        ; preds = %if.end184
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %62 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %transp, align 4
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %63 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %length, align 4
  %64 = add i32 %34, -8
  %65 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 29)
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %65, label %if.end208.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb216
    i32 3, label %sw.bb229
    i32 2, label %if.end208.sw.bb234_crit_edge
  ]

if.end208.sw.bb234_crit_edge:                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb234

if.end208.sw.epilog_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %length211 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %length211 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %length211, align 4
  %68 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %red, align 4
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %69 = call ptr @memcpy(ptr %green, ptr %red, i32 12)
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %70 = call ptr @memcpy(ptr %blue, ptr %red, i32 12)
  br label %sw.epilog

sw.bb216:                                         ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %red217 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %71 = ptrtoint ptr %red217 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 11, ptr %red217, align 4
  %length220 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %72 = ptrtoint ptr %length220 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 5, ptr %length220, align 4
  %green221 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %73 = ptrtoint ptr %green221 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 5, ptr %green221, align 4
  %length224 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %74 = ptrtoint ptr %length224 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 6, ptr %length224, align 4
  %blue225 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %75 = ptrtoint ptr %blue225 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %blue225, align 4
  %length228 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %76 = ptrtoint ptr %length228 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 5, ptr %length228, align 4
  br label %sw.epilog

sw.bb229:                                         ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 24, ptr %transp, align 4
  %78 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %length, align 4
  br label %sw.bb234

sw.bb234:                                         ; preds = %sw.bb229, %if.end208.sw.bb234_crit_edge
  %red235 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %79 = ptrtoint ptr %red235 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 16, ptr %red235, align 4
  %green237 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %80 = ptrtoint ptr %green237 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 8, ptr %green237, align 4
  %blue239 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %81 = ptrtoint ptr %blue239 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %blue239, align 4
  %length242 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %82 = ptrtoint ptr %length242 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8, ptr %length242, align 4
  %length244 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %83 = ptrtoint ptr %length244 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %length244, align 4
  %length246 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %84 = ptrtoint ptr %length246 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %length246, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb234, %sw.bb216, %sw.bb, %if.end208.sw.epilog_crit_edge
  %width = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 15
  %85 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %width, align 4
  %height = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 14
  %86 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %height, align 4
  %accel_flags = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 16
  %87 = ptrtoint ptr %accel_flags to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %accel_flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_check_var, %if.then259)) #9
          to label %cleanup [label %if.then259], !srcloc !181

if.then259:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %var, align 4
  %90 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %yres, align 4
  %92 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_check_var.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef %89, i32 noundef %91, i32 noundef %93) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then259, %sw.epilog, %if.then202, %do.body190, %if.then176, %do.body164, %if.then145, %do.body133, %if.then119, %do.body107, %if.then89, %do.body77, %if.then60, %do.body48, %if.then39, %do.body27, %if.then12, %do.body
  %retval.0 = phi i32 [ -22, %if.then12 ], [ -22, %if.then39 ], [ -22, %if.then60 ], [ -22, %if.then89 ], [ -22, %if.then119 ], [ -22, %if.then145 ], [ -22, %if.then176 ], [ -22, %if.then202 ], [ 0, %if.then259 ], [ -22, %do.body ], [ -22, %do.body27 ], [ -22, %do.body48 ], [ -22, %do.body77 ], [ -22, %do.body107 ], [ -22, %do.body133 ], [ -22, %do.body164 ], [ -22, %do.body190 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modedb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tdfxfb_delete_i2c_busses(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.tdfx_par, ptr %par, i32 0, i32 5
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %adapter = getelementptr inbounds %struct.tdfx_par, ptr %par, i32 0, i32 5, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %chan, align 8
  %arrayidx8 = getelementptr %struct.tdfx_par, ptr %par, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx8, align 8
  %tobool10.not = icmp eq ptr %4, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %adapter14 = getelementptr %struct.tdfx_par, ptr %par, i32 0, i32 5, i32 1, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter14) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx8, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_set_par(ptr noundef %info) #2 align 64 {
entry:
  %reg = alloca %struct.banshee_reg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %right_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 19
  %4 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %right_margin, align 4
  %add = add i32 %5, %3
  %hsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 22
  %6 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hsync_len, align 4
  %add4 = add i32 %add, %7
  %left_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 18
  %8 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %left_margin, align 4
  %add6 = add i32 %add4, %9
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %reg) #9
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %add8 = add i32 %11, 7
  %shr = lshr i32 %add8, 3
  %12 = call ptr @memset(ptr %reg, i32 0, i32 140)
  %sub = shl i32 %shr, 18
  %shl = add i32 %sub, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 1
  %cond = select i1 %cmp.not, i32 1, i32 1024
  %or = or i32 %shl, %cond
  %vidcfg = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 6
  %pixclock = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 17
  %13 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixclock, align 4
  %div = udiv i32 1000000000, %14
  %or9 = and i32 %or, -67369984
  %and = or i32 %or9, 131
  %15 = ptrtoint ptr %vidcfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %vidcfg, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 8
  %div12411 = lshr i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div12411)
  %cmp13 = icmp ugt i32 %div, %div12411
  br i1 %cmp13, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.umin.i32(i32 %div, i32 %17)
  %dacmode = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 10
  %19 = ptrtoint ptr %dacmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dacmode, align 4
  %or18 = or i32 %20, 1
  store i32 %or18, ptr %dacmode, align 4
  %or20 = or i32 %or, 67108995
  %21 = ptrtoint ptr %vidcfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or20, ptr %vidcfg, align 4
  %shr21 = lshr i32 %3, 1
  %shr22 = lshr i32 %add, 1
  %shr23 = lshr i32 %add4, 1
  %shr24 = lshr i32 %add6, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hsyncsta.0 = phi i32 [ %shr22, %if.then ], [ %add, %entry.if.end_crit_edge ]
  %hsyncend.0 = phi i32 [ %shr23, %if.then ], [ %add4, %entry.if.end_crit_edge ]
  %htotal.0 = phi i32 [ %shr24, %if.then ], [ %add6, %entry.if.end_crit_edge ]
  %freq.0 = phi i32 [ %18, %if.then ], [ %div, %entry.if.end_crit_edge ]
  %hdispend.0 = phi i32 [ %shr21, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %shr25 = lshr i32 %hdispend.0, 3
  %sub26 = add nsw i32 %shr25, -1
  %shr27 = lshr i32 %hsyncsta.0, 3
  %sub28 = add nsw i32 %shr27, -1
  %shr29 = lshr i32 %hsyncend.0, 3
  %sub30 = add nsw i32 %shr29, -1
  %shr31 = lshr i32 %htotal.0, 3
  %sub32 = add nsw i32 %shr31, -1
  %vmode = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 25
  %22 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vmode, align 4
  %and34 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 2
  %yres = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %yres, align 4
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl38 = shl i32 %25, 1
  %sub39 = add i32 %shl38, -1
  %lower_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %26 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lower_margin, align 4
  %shl41 = shl i32 %27, 1
  %add42 = add i32 %sub39, %shl41
  %vsync_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %28 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vsync_len, align 4
  %shl44 = shl i32 %29, 1
  %add45 = add i32 %add42, %shl44
  %upper_margin = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %30 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %upper_margin, align 4
  %shl47 = shl i32 %31, 1
  %add48 = add i32 %add45, %shl47
  %shl54 = shl i32 %25, 13
  %or55 = or i32 %shl54, %3
  %screensize = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 13
  %32 = ptrtoint ptr %screensize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or55, ptr %screensize, align 4
  %33 = ptrtoint ptr %vidcfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vidcfg, align 4
  %or57 = or i32 %34, 16
  store i32 %or57, ptr %vidcfg, align 4
  %arrayidx = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -128, ptr %arrayidx, align 2
  br label %if.end80

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub60 = add i32 %25, -1
  %lower_margin62 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 21
  %36 = ptrtoint ptr %lower_margin62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lower_margin62, align 4
  %add63 = add i32 %sub60, %37
  %vsync_len65 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 23
  %38 = ptrtoint ptr %vsync_len65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vsync_len65, align 4
  %add66 = add i32 %add63, %39
  %upper_margin68 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 20
  %40 = ptrtoint ptr %upper_margin68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %upper_margin68, align 4
  %add69 = add i32 %add66, %41
  %shl75 = shl i32 %25, 12
  %or76 = or i32 %shl75, %3
  %screensize77 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 13
  %42 = ptrtoint ptr %screensize77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or76, ptr %screensize77, align 4
  %43 = ptrtoint ptr %vidcfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vidcfg, align 4
  %and79 = and i32 %44, -17
  store i32 %and79, ptr %vidcfg, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then36
  %vd.0 = phi i32 [ %sub39, %if.then36 ], [ %sub60, %if.else ]
  %vs.0 = phi i32 [ %add42, %if.then36 ], [ %add63, %if.else ]
  %ve.0 = phi i32 [ %add45, %if.then36 ], [ %add66, %if.else ]
  %vt.0.in = phi i32 [ %add48, %if.then36 ], [ %add69, %if.else ]
  %vt.0 = add i32 %vt.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %3)
  %cmp83 = icmp ult i32 %3, 400
  br i1 %cmp83, label %if.end80.cond.end97_crit_edge, label %cond.false85

if.end80.cond.end97_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end97

cond.false85:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %3)
  %cmp88 = icmp ult i32 %3, 480
  br i1 %cmp88, label %cond.false85.cond.end97_crit_edge, label %cond.false90

cond.false85.cond.end97_crit_edge:                ; preds = %cond.false85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end97

cond.false90:                                     ; preds = %cond.false85
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %3)
  %cmp93 = icmp ult i32 %3, 768
  %phi.cast = select i1 %cmp93, i8 -17, i8 47
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false90, %cond.false85.cond.end97_crit_edge, %if.end80.cond.end97_crit_edge
  %cond98 = phi i8 [ -81, %if.end80.cond.end97_crit_edge ], [ %phi.cast, %cond.false90 ], [ 111, %cond.false85.cond.end97_crit_edge ]
  %misc = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 3
  %45 = ptrtoint ptr %misc to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %cond98, ptr %misc, align 1
  %arrayidx101 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 64, ptr %arrayidx101, align 1
  %arrayidx103 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 2, i32 6
  %47 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %arrayidx103, align 4
  %arrayidx105 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 2, i32 7
  %48 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 15, ptr %arrayidx105, align 1
  %arrayidx107 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 2, i32 8
  %49 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %arrayidx107, align 2
  %50 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %reg, align 4
  %arrayidx110 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %arrayidx110, align 1
  %arrayidx112 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %arrayidx112, align 2
  %arrayidx114 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %arrayidx114, align 1
  %arrayidx116 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 4
  %54 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %arrayidx116, align 4
  %arrayidx118 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 5, ptr %arrayidx118, align 1
  %arrayidx120 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 6
  %56 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 6, ptr %arrayidx120, align 2
  %arrayidx122 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 7
  %57 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 7, ptr %arrayidx122, align 1
  %arrayidx124 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 8
  %58 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 8, ptr %arrayidx124, align 4
  %arrayidx126 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 9
  %59 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 9, ptr %arrayidx126, align 1
  %arrayidx128 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 10
  %60 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 10, ptr %arrayidx128, align 2
  %arrayidx130 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 11
  %61 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 11, ptr %arrayidx130, align 1
  %arrayidx132 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 12
  %62 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 12, ptr %arrayidx132, align 4
  %arrayidx134 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 13
  %63 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 13, ptr %arrayidx134, align 1
  %arrayidx136 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 14
  %64 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 14, ptr %arrayidx136, align 2
  %arrayidx138 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 15
  %65 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 15, ptr %arrayidx138, align 1
  %arrayidx140 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 16
  %66 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 65, ptr %arrayidx140, align 4
  %arrayidx142 = getelementptr inbounds [21 x i8], ptr %reg, i32 0, i32 18
  %67 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 15, ptr %arrayidx142, align 2
  %seq = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 4
  %68 = ptrtoint ptr %seq to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %seq, align 4
  %arrayidx145 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %arrayidx145, align 1
  %arrayidx147 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 4, i32 2
  %70 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 15, ptr %arrayidx147, align 2
  %arrayidx149 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 4, i32 3
  %71 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx149, align 1
  %arrayidx151 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 4, i32 4
  %72 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 14, ptr %arrayidx151, align 4
  %73 = trunc i32 %shr31 to i8
  %conv153 = add i8 %73, -5
  %crt154 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1
  %74 = ptrtoint ptr %crt154 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv153, ptr %crt154, align 1
  %conv156 = trunc i32 %sub26 to i8
  %arrayidx158 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv156, ptr %arrayidx158, align 2
  %arrayidx161 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv156, ptr %arrayidx161, align 1
  %77 = trunc i32 %sub32 to i8
  %78 = and i8 %77, 31
  %conv164 = or i8 %78, -128
  %arrayidx166 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 3
  %79 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv164, ptr %arrayidx166, align 4
  %conv167 = trunc i32 %sub28 to i8
  %arrayidx169 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv167, ptr %arrayidx169, align 1
  %and170 = shl nsw i32 %sub32, 2
  %shl171 = and i32 %and170, 128
  %and172 = and i32 %sub30, 31
  %or173 = or i32 %shl171, %and172
  %conv174 = trunc i32 %or173 to i8
  %arrayidx176 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 5
  %81 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv174, ptr %arrayidx176, align 2
  %conv177 = trunc i32 %vt.0 to i8
  %arrayidx179 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 6
  %82 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv177, ptr %arrayidx179, align 1
  %and180 = lshr i32 %vs.0, 2
  %shr181 = and i32 %and180, 128
  %and182 = and i32 %vd.0, 512
  %shr183 = lshr exact i32 %and182, 3
  %and185 = lshr i32 %vt.0, 4
  %shr186 = and i32 %and185, 32
  %and189 = and i32 %vd.0, 256
  %shr190 = lshr exact i32 %and189, 5
  %and192 = lshr i32 %vs.0, 6
  %shr193 = and i32 %and192, 4
  %shr196 = lshr exact i32 %and189, 7
  %and198 = lshr i32 %vt.0, 8
  %shr199 = and i32 %and198, 1
  %or184 = or i32 %shr190, %shr183
  %or187 = or i32 %or184, %shr196
  %or188 = or i32 %or187, %shr181
  %or191 = or i32 %or188, %shr193
  %or194 = or i32 %or191, %shr186
  %or197 = or i32 %or194, %shr199
  %83 = trunc i32 %or197 to i8
  %conv201 = or i8 %83, 16
  %arrayidx203 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 7
  %84 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv201, ptr %arrayidx203, align 4
  %shr205 = lshr exact i32 %and182, 4
  %arrayidx208 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 9
  %85 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx208, align 2
  %87 = trunc i32 %shr205 to i8
  %88 = or i8 %86, %87
  %conv211 = or i8 %88, 64
  store i8 %conv211, ptr %arrayidx208, align 2
  %conv212 = trunc i32 %vs.0 to i8
  %arrayidx214 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 16
  %89 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv212, ptr %arrayidx214, align 1
  %90 = trunc i32 %ve.0 to i8
  %91 = and i8 %90, 15
  %conv217 = or i8 %91, 32
  %arrayidx219 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 17
  %92 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv217, ptr %arrayidx219, align 2
  %conv220 = trunc i32 %vd.0 to i8
  %arrayidx222 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 18
  %93 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv220, ptr %arrayidx222, align 1
  %arrayidx225 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 19
  %94 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv156, ptr %arrayidx225, align 4
  %arrayidx228 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 21
  %95 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv220, ptr %arrayidx228, align 2
  %conv230 = add i8 %conv177, 1
  %arrayidx232 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 22
  %96 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv230, ptr %arrayidx232, align 1
  %arrayidx234 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 23
  %97 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -61, ptr %arrayidx234, align 4
  %arrayidx236 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 24
  %98 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %arrayidx236, align 1
  %and237 = lshr i32 %sub32, 8
  %shr238 = and i32 %and237, 1
  %and239 = and i32 %sub26, 256
  %shr240 = lshr exact i32 %and239, 6
  %shr243 = lshr exact i32 %and239, 4
  %and245 = lshr i32 %sub32, 1
  %shr246 = and i32 %and245, 32
  %and248 = lshr i32 %sub28, 2
  %shr249 = and i32 %and248, 64
  %and251 = shl nsw i32 %sub30, 2
  %shl252 = and i32 %and251, 128
  %or241 = or i32 %shl252, %shr249
  %or244 = or i32 %or241, %shr238
  %or247 = or i32 %or244, %shr246
  %or250 = or i32 %or247, %shr240
  %or253 = or i32 %or250, %shr243
  %conv254 = trunc i32 %or253 to i8
  %ext = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 5
  %99 = ptrtoint ptr %ext to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv254, ptr %ext, align 1
  %and256 = and i32 %vt.0, 1024
  %shr257 = lshr exact i32 %and256, 10
  %and258 = and i32 %vd.0, 1024
  %shr259 = lshr exact i32 %and258, 8
  %shr262 = lshr exact i32 %and258, 6
  %shr265 = lshr exact i32 %and256, 4
  %or260 = or i32 %shr262, %shr259
  %or263 = or i32 %or260, %shr257
  %or266 = or i32 %or263, %shr265
  %conv267 = trunc i32 %or266 to i8
  %arrayidx269 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 5, i32 1
  %100 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv267, ptr %arrayidx269, align 2
  %vgainit0 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 11
  %101 = ptrtoint ptr %vgainit0 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 5444, ptr %vgainit0, align 4
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %103, i32 44
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %105 = and i32 %104, -57600
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %vgainit1 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 12
  %107 = ptrtoint ptr %vgainit1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %vgainit1, align 4
  %108 = load i32, ptr @hwcursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not = icmp eq i32 %108, 0
  br i1 %tobool.not, label %cond.end97.if.end272_crit_edge, label %if.then271

cond.end97.if.end272_crit_edge:                   ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end272

if.then271:                                       ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #11
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %109 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %smem_len, align 4
  %curspataddr = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 16
  %111 = ptrtoint ptr %curspataddr to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %curspataddr, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %cond.end97.if.end272_crit_edge
  %cursloc = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 15
  %112 = ptrtoint ptr %cursloc to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %cursloc, align 4
  %cursc0 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 17
  %113 = ptrtoint ptr %cursc0 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %cursc0, align 4
  %cursc1 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 18
  %114 = ptrtoint ptr %cursc1 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 16777215, ptr %cursc1, align 4
  %115 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %var, align 4
  %mul = mul i32 %116, %shr
  %stride = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 14
  %117 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul, ptr %stride, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %118 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %yoffset, align 4
  %mul277 = mul i32 %119, %mul
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %120 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %xoffset, align 4
  %mul279 = mul i32 %121, %shr
  %add280 = add i32 %mul279, %mul277
  %startaddr = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 19
  %122 = ptrtoint ptr %startaddr to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add280, ptr %startaddr, align 4
  %mul.i = shl i32 %freq.0, 3
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.end.i.for.body3.i_crit_edge, %if.end272
  %m.084.i = phi i32 [ 63, %if.end272 ], [ %dec.i, %for.end.i.for.body3.i_crit_edge ]
  %best_m.183.i = phi i32 [ 0, %if.end272 ], [ %best_m.2.lcssa.i, %for.end.i.for.body3.i_crit_edge ]
  %best_error.182.i = phi i32 [ %freq.0, %if.end272 ], [ %best_error.2.lcssa.i, %for.end.i.for.body3.i_crit_edge ]
  %best_k.181.i = phi i32 [ 0, %if.end272 ], [ %best_k.2.lcssa.i, %for.end.i.for.body3.i_crit_edge ]
  %best_n.180.i = phi i32 [ 0, %if.end272 ], [ %best_n.2.lcssa.i, %for.end.i.for.body3.i_crit_edge ]
  %add.i = add nuw nsw i32 %m.084.i, 2
  %shl.i = mul i32 %mul.i, %add.i
  %div.i = sdiv i32 %shl.i, 14318
  call void @__sanitizer_cov_trace_const_cmp4(i32 28636, i32 %shl.i)
  %cmp4.i = icmp slt i32 %shl.i, 28636
  %sub.i = add nsw i32 %div.i, -2
  %cond.i = select i1 %cmp4.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3679725, i32 %shl.i)
  %cmp8.i = icmp sgt i32 %shl.i, 3679725
  %add6.i = add nsw i32 %div.i, -1
  %cond12.i = select i1 %cmp8.i, i32 255, i32 %add6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %cond12.i)
  %cmp13.not70.i = icmp sgt i32 %cond.i, %cond12.i
  br i1 %cmp13.not70.i, label %for.body3.i.for.end.i_crit_edge, label %for.body3.i.for.body14.i_crit_edge

for.body3.i.for.body14.i_crit_edge:               ; preds = %for.body3.i
  br label %for.body14.i

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body14.i:                                     ; preds = %if.end.i.for.body14.i_crit_edge, %for.body3.i.for.body14.i_crit_edge
  %n.075.i = phi i32 [ %inc.i, %if.end.i.for.body14.i_crit_edge ], [ %cond.i, %for.body3.i.for.body14.i_crit_edge ]
  %best_m.274.i = phi i32 [ %best_m.3.i, %if.end.i.for.body14.i_crit_edge ], [ %best_m.183.i, %for.body3.i.for.body14.i_crit_edge ]
  %best_error.273.i = phi i32 [ %best_error.3.i, %if.end.i.for.body14.i_crit_edge ], [ %best_error.182.i, %for.body3.i.for.body14.i_crit_edge ]
  %best_k.272.i = phi i32 [ %best_k.3.i, %if.end.i.for.body14.i_crit_edge ], [ %best_k.181.i, %for.body3.i.for.body14.i_crit_edge ]
  %best_n.271.i = phi i32 [ %best_n.3.i, %if.end.i.for.body14.i_crit_edge ], [ %best_n.180.i, %for.body3.i.for.body14.i_crit_edge ]
  %123 = mul i32 %n.075.i, 14318
  %mul16.i = add i32 %123, 28636
  %div18.i = sdiv i32 %mul16.i, %add.i
  %shr.i = ashr i32 %div18.i, 3
  %sub19.i = sub nsw i32 %shr.i, %freq.0
  %124 = tail call i32 @llvm.abs.i32(i32 %sub19.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %best_error.273.i)
  %cmp27.i = icmp slt i32 %124, %best_error.273.i
  br i1 %cmp27.i, label %if.then.i, label %for.body14.i.if.end.i_crit_edge

for.body14.i.if.end.i_crit_edge:                  ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body14.i.if.end.i_crit_edge
  %best_n.3.i = phi i32 [ %n.075.i, %if.then.i ], [ %best_n.271.i, %for.body14.i.if.end.i_crit_edge ]
  %best_k.3.i = phi i32 [ 3, %if.then.i ], [ %best_k.272.i, %for.body14.i.if.end.i_crit_edge ]
  %best_error.3.i = phi i32 [ %124, %if.then.i ], [ %best_error.273.i, %for.body14.i.if.end.i_crit_edge ]
  %best_m.3.i = phi i32 [ %m.084.i, %if.then.i ], [ %best_m.274.i, %for.body14.i.if.end.i_crit_edge ]
  %inc.i = add nsw i32 %n.075.i, 1
  %exitcond.i = icmp eq i32 %n.075.i, %cond12.i
  br i1 %exitcond.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body14.i_crit_edge

if.end.i.for.body14.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body3.i.for.end.i_crit_edge
  %best_n.2.lcssa.i = phi i32 [ %best_n.180.i, %for.body3.i.for.end.i_crit_edge ], [ %best_n.3.i, %if.end.i.for.end.i_crit_edge ]
  %best_k.2.lcssa.i = phi i32 [ %best_k.181.i, %for.body3.i.for.end.i_crit_edge ], [ %best_k.3.i, %if.end.i.for.end.i_crit_edge ]
  %best_error.2.lcssa.i = phi i32 [ %best_error.182.i, %for.body3.i.for.end.i_crit_edge ], [ %best_error.3.i, %if.end.i.for.end.i_crit_edge ]
  %best_m.2.lcssa.i = phi i32 [ %best_m.183.i, %for.body3.i.for.end.i_crit_edge ], [ %best_m.3.i, %if.end.i.for.end.i_crit_edge ]
  %dec.i = add nsw i32 %m.084.i, -1
  %cmp2.i.not = icmp eq i32 %m.084.i, 0
  br i1 %cmp2.i.not, label %for.body3.1.i.preheader, label %for.end.i.for.body3.i_crit_edge

for.end.i.for.body3.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.body3.1.i.preheader:                          ; preds = %for.end.i
  %mul.1.i = shl i32 %freq.0, 2
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %for.end.1.i.for.body3.1.i_crit_edge, %for.body3.1.i.preheader
  %m.084.1.i = phi i32 [ %dec.1.i, %for.end.1.i.for.body3.1.i_crit_edge ], [ 63, %for.body3.1.i.preheader ]
  %best_m.183.1.i = phi i32 [ %best_m.2.lcssa.1.i, %for.end.1.i.for.body3.1.i_crit_edge ], [ %best_m.2.lcssa.i, %for.body3.1.i.preheader ]
  %best_error.182.1.i = phi i32 [ %best_error.2.lcssa.1.i, %for.end.1.i.for.body3.1.i_crit_edge ], [ %best_error.2.lcssa.i, %for.body3.1.i.preheader ]
  %best_k.181.1.i = phi i32 [ %best_k.2.lcssa.1.i, %for.end.1.i.for.body3.1.i_crit_edge ], [ %best_k.2.lcssa.i, %for.body3.1.i.preheader ]
  %best_n.180.1.i = phi i32 [ %best_n.2.lcssa.1.i, %for.end.1.i.for.body3.1.i_crit_edge ], [ %best_n.2.lcssa.i, %for.body3.1.i.preheader ]
  %add.1.i = add nuw nsw i32 %m.084.1.i, 2
  %shl.1.i = mul i32 %mul.1.i, %add.1.i
  %div.1.i = sdiv i32 %shl.1.i, 14318
  call void @__sanitizer_cov_trace_const_cmp4(i32 28636, i32 %shl.1.i)
  %cmp4.1.i = icmp slt i32 %shl.1.i, 28636
  %sub.1.i = add nsw i32 %div.1.i, -2
  %cond.1.i = select i1 %cmp4.1.i, i32 0, i32 %sub.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3679725, i32 %shl.1.i)
  %cmp8.1.i = icmp sgt i32 %shl.1.i, 3679725
  %add6.1.i = add nsw i32 %div.1.i, -1
  %cond12.1.i = select i1 %cmp8.1.i, i32 255, i32 %add6.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.1.i, i32 %cond12.1.i)
  %cmp13.not70.1.i = icmp sgt i32 %cond.1.i, %cond12.1.i
  br i1 %cmp13.not70.1.i, label %for.body3.1.i.for.end.1.i_crit_edge, label %for.body3.1.i.for.body14.1.i_crit_edge

for.body3.1.i.for.body14.1.i_crit_edge:           ; preds = %for.body3.1.i
  br label %for.body14.1.i

for.body3.1.i.for.end.1.i_crit_edge:              ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1.i

for.body14.1.i:                                   ; preds = %if.end.1.i.for.body14.1.i_crit_edge, %for.body3.1.i.for.body14.1.i_crit_edge
  %n.075.1.i = phi i32 [ %inc.1.i, %if.end.1.i.for.body14.1.i_crit_edge ], [ %cond.1.i, %for.body3.1.i.for.body14.1.i_crit_edge ]
  %best_m.274.1.i = phi i32 [ %best_m.3.1.i, %if.end.1.i.for.body14.1.i_crit_edge ], [ %best_m.183.1.i, %for.body3.1.i.for.body14.1.i_crit_edge ]
  %best_error.273.1.i = phi i32 [ %best_error.3.1.i, %if.end.1.i.for.body14.1.i_crit_edge ], [ %best_error.182.1.i, %for.body3.1.i.for.body14.1.i_crit_edge ]
  %best_k.272.1.i = phi i32 [ %best_k.3.1.i, %if.end.1.i.for.body14.1.i_crit_edge ], [ %best_k.181.1.i, %for.body3.1.i.for.body14.1.i_crit_edge ]
  %best_n.271.1.i = phi i32 [ %best_n.3.1.i, %if.end.1.i.for.body14.1.i_crit_edge ], [ %best_n.180.1.i, %for.body3.1.i.for.body14.1.i_crit_edge ]
  %125 = mul i32 %n.075.1.i, 14318
  %mul16.1.i = add i32 %125, 28636
  %div18.1.i = sdiv i32 %mul16.1.i, %add.1.i
  %shr.1.i = ashr i32 %div18.1.i, 2
  %sub19.1.i = sub nsw i32 %shr.1.i, %freq.0
  %126 = tail call i32 @llvm.abs.i32(i32 %sub19.1.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %best_error.273.1.i)
  %cmp27.1.i = icmp slt i32 %126, %best_error.273.1.i
  br i1 %cmp27.1.i, label %if.then.1.i, label %for.body14.1.i.if.end.1.i_crit_edge

for.body14.1.i.if.end.1.i_crit_edge:              ; preds = %for.body14.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.body14.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.body14.1.i.if.end.1.i_crit_edge
  %best_n.3.1.i = phi i32 [ %n.075.1.i, %if.then.1.i ], [ %best_n.271.1.i, %for.body14.1.i.if.end.1.i_crit_edge ]
  %best_k.3.1.i = phi i32 [ 2, %if.then.1.i ], [ %best_k.272.1.i, %for.body14.1.i.if.end.1.i_crit_edge ]
  %best_error.3.1.i = phi i32 [ %126, %if.then.1.i ], [ %best_error.273.1.i, %for.body14.1.i.if.end.1.i_crit_edge ]
  %best_m.3.1.i = phi i32 [ %m.084.1.i, %if.then.1.i ], [ %best_m.274.1.i, %for.body14.1.i.if.end.1.i_crit_edge ]
  %inc.1.i = add nsw i32 %n.075.1.i, 1
  %exitcond.1.i = icmp eq i32 %n.075.1.i, %cond12.1.i
  br i1 %exitcond.1.i, label %if.end.1.i.for.end.1.i_crit_edge, label %if.end.1.i.for.body14.1.i_crit_edge

if.end.1.i.for.body14.1.i_crit_edge:              ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.1.i

if.end.1.i.for.end.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.1.i

for.end.1.i:                                      ; preds = %if.end.1.i.for.end.1.i_crit_edge, %for.body3.1.i.for.end.1.i_crit_edge
  %best_n.2.lcssa.1.i = phi i32 [ %best_n.180.1.i, %for.body3.1.i.for.end.1.i_crit_edge ], [ %best_n.3.1.i, %if.end.1.i.for.end.1.i_crit_edge ]
  %best_k.2.lcssa.1.i = phi i32 [ %best_k.181.1.i, %for.body3.1.i.for.end.1.i_crit_edge ], [ %best_k.3.1.i, %if.end.1.i.for.end.1.i_crit_edge ]
  %best_error.2.lcssa.1.i = phi i32 [ %best_error.182.1.i, %for.body3.1.i.for.end.1.i_crit_edge ], [ %best_error.3.1.i, %if.end.1.i.for.end.1.i_crit_edge ]
  %best_m.2.lcssa.1.i = phi i32 [ %best_m.183.1.i, %for.body3.1.i.for.end.1.i_crit_edge ], [ %best_m.3.1.i, %if.end.1.i.for.end.1.i_crit_edge ]
  %dec.1.i = add nsw i32 %m.084.1.i, -1
  %cmp2.1.i.not = icmp eq i32 %m.084.1.i, 0
  br i1 %cmp2.1.i.not, label %for.body3.2.i.preheader, label %for.end.1.i.for.body3.1.i_crit_edge

for.end.1.i.for.body3.1.i_crit_edge:              ; preds = %for.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.1.i

for.body3.2.i.preheader:                          ; preds = %for.end.1.i
  %mul.2.i = shl nsw i32 %freq.0, 1
  br label %for.body3.2.i

for.body3.2.i:                                    ; preds = %for.end.2.i.for.body3.2.i_crit_edge, %for.body3.2.i.preheader
  %m.084.2.i = phi i32 [ %dec.2.i, %for.end.2.i.for.body3.2.i_crit_edge ], [ 63, %for.body3.2.i.preheader ]
  %best_m.183.2.i = phi i32 [ %best_m.2.lcssa.2.i, %for.end.2.i.for.body3.2.i_crit_edge ], [ %best_m.2.lcssa.1.i, %for.body3.2.i.preheader ]
  %best_error.182.2.i = phi i32 [ %best_error.2.lcssa.2.i, %for.end.2.i.for.body3.2.i_crit_edge ], [ %best_error.2.lcssa.1.i, %for.body3.2.i.preheader ]
  %best_k.181.2.i = phi i32 [ %best_k.2.lcssa.2.i, %for.end.2.i.for.body3.2.i_crit_edge ], [ %best_k.2.lcssa.1.i, %for.body3.2.i.preheader ]
  %best_n.180.2.i = phi i32 [ %best_n.2.lcssa.2.i, %for.end.2.i.for.body3.2.i_crit_edge ], [ %best_n.2.lcssa.1.i, %for.body3.2.i.preheader ]
  %add.2.i = add nuw nsw i32 %m.084.2.i, 2
  %shl.2.i = mul i32 %mul.2.i, %add.2.i
  %div.2.i = sdiv i32 %shl.2.i, 14318
  call void @__sanitizer_cov_trace_const_cmp4(i32 28636, i32 %shl.2.i)
  %cmp4.2.i = icmp slt i32 %shl.2.i, 28636
  %sub.2.i = add nsw i32 %div.2.i, -2
  %cond.2.i = select i1 %cmp4.2.i, i32 0, i32 %sub.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3679725, i32 %shl.2.i)
  %cmp8.2.i = icmp sgt i32 %shl.2.i, 3679725
  %add6.2.i = add nsw i32 %div.2.i, -1
  %cond12.2.i = select i1 %cmp8.2.i, i32 255, i32 %add6.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.2.i, i32 %cond12.2.i)
  %cmp13.not70.2.i = icmp sgt i32 %cond.2.i, %cond12.2.i
  br i1 %cmp13.not70.2.i, label %for.body3.2.i.for.end.2.i_crit_edge, label %for.body3.2.i.for.body14.2.i_crit_edge

for.body3.2.i.for.body14.2.i_crit_edge:           ; preds = %for.body3.2.i
  br label %for.body14.2.i

for.body3.2.i.for.end.2.i_crit_edge:              ; preds = %for.body3.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2.i

for.body14.2.i:                                   ; preds = %if.end.2.i.for.body14.2.i_crit_edge, %for.body3.2.i.for.body14.2.i_crit_edge
  %n.075.2.i = phi i32 [ %inc.2.i, %if.end.2.i.for.body14.2.i_crit_edge ], [ %cond.2.i, %for.body3.2.i.for.body14.2.i_crit_edge ]
  %best_m.274.2.i = phi i32 [ %best_m.3.2.i, %if.end.2.i.for.body14.2.i_crit_edge ], [ %best_m.183.2.i, %for.body3.2.i.for.body14.2.i_crit_edge ]
  %best_error.273.2.i = phi i32 [ %best_error.3.2.i, %if.end.2.i.for.body14.2.i_crit_edge ], [ %best_error.182.2.i, %for.body3.2.i.for.body14.2.i_crit_edge ]
  %best_k.272.2.i = phi i32 [ %best_k.3.2.i, %if.end.2.i.for.body14.2.i_crit_edge ], [ %best_k.181.2.i, %for.body3.2.i.for.body14.2.i_crit_edge ]
  %best_n.271.2.i = phi i32 [ %best_n.3.2.i, %if.end.2.i.for.body14.2.i_crit_edge ], [ %best_n.180.2.i, %for.body3.2.i.for.body14.2.i_crit_edge ]
  %127 = mul i32 %n.075.2.i, 14318
  %mul16.2.i = add i32 %127, 28636
  %div18.2.i = sdiv i32 %mul16.2.i, %add.2.i
  %shr.2.i = ashr i32 %div18.2.i, 1
  %sub19.2.i = sub nsw i32 %shr.2.i, %freq.0
  %128 = tail call i32 @llvm.abs.i32(i32 %sub19.2.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %best_error.273.2.i)
  %cmp27.2.i = icmp slt i32 %128, %best_error.273.2.i
  br i1 %cmp27.2.i, label %if.then.2.i, label %for.body14.2.i.if.end.2.i_crit_edge

for.body14.2.i.if.end.2.i_crit_edge:              ; preds = %for.body14.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %for.body14.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %for.body14.2.i.if.end.2.i_crit_edge
  %best_n.3.2.i = phi i32 [ %n.075.2.i, %if.then.2.i ], [ %best_n.271.2.i, %for.body14.2.i.if.end.2.i_crit_edge ]
  %best_k.3.2.i = phi i32 [ 1, %if.then.2.i ], [ %best_k.272.2.i, %for.body14.2.i.if.end.2.i_crit_edge ]
  %best_error.3.2.i = phi i32 [ %128, %if.then.2.i ], [ %best_error.273.2.i, %for.body14.2.i.if.end.2.i_crit_edge ]
  %best_m.3.2.i = phi i32 [ %m.084.2.i, %if.then.2.i ], [ %best_m.274.2.i, %for.body14.2.i.if.end.2.i_crit_edge ]
  %inc.2.i = add nsw i32 %n.075.2.i, 1
  %exitcond.2.i = icmp eq i32 %n.075.2.i, %cond12.2.i
  br i1 %exitcond.2.i, label %if.end.2.i.for.end.2.i_crit_edge, label %if.end.2.i.for.body14.2.i_crit_edge

if.end.2.i.for.body14.2.i_crit_edge:              ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.2.i

if.end.2.i.for.end.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.2.i

for.end.2.i:                                      ; preds = %if.end.2.i.for.end.2.i_crit_edge, %for.body3.2.i.for.end.2.i_crit_edge
  %best_n.2.lcssa.2.i = phi i32 [ %best_n.180.2.i, %for.body3.2.i.for.end.2.i_crit_edge ], [ %best_n.3.2.i, %if.end.2.i.for.end.2.i_crit_edge ]
  %best_k.2.lcssa.2.i = phi i32 [ %best_k.181.2.i, %for.body3.2.i.for.end.2.i_crit_edge ], [ %best_k.3.2.i, %if.end.2.i.for.end.2.i_crit_edge ]
  %best_error.2.lcssa.2.i = phi i32 [ %best_error.182.2.i, %for.body3.2.i.for.end.2.i_crit_edge ], [ %best_error.3.2.i, %if.end.2.i.for.end.2.i_crit_edge ]
  %best_m.2.lcssa.2.i = phi i32 [ %best_m.183.2.i, %for.body3.2.i.for.end.2.i_crit_edge ], [ %best_m.3.2.i, %if.end.2.i.for.end.2.i_crit_edge ]
  %dec.2.i = add nsw i32 %m.084.2.i, -1
  %cmp2.2.i.not = icmp eq i32 %m.084.2.i, 0
  br i1 %cmp2.2.i.not, label %for.end.2.i.for.body3.3.i_crit_edge, label %for.end.2.i.for.body3.2.i_crit_edge

for.end.2.i.for.body3.2.i_crit_edge:              ; preds = %for.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.2.i

for.end.2.i.for.body3.3.i_crit_edge:              ; preds = %for.end.2.i
  br label %for.body3.3.i

for.body3.3.i:                                    ; preds = %for.end.3.i.for.body3.3.i_crit_edge, %for.end.2.i.for.body3.3.i_crit_edge
  %m.084.3.i = phi i32 [ %dec.3.i, %for.end.3.i.for.body3.3.i_crit_edge ], [ 63, %for.end.2.i.for.body3.3.i_crit_edge ]
  %best_m.183.3.i = phi i32 [ %best_m.2.lcssa.3.i, %for.end.3.i.for.body3.3.i_crit_edge ], [ %best_m.2.lcssa.2.i, %for.end.2.i.for.body3.3.i_crit_edge ]
  %best_error.182.3.i = phi i32 [ %best_error.2.lcssa.3.i, %for.end.3.i.for.body3.3.i_crit_edge ], [ %best_error.2.lcssa.2.i, %for.end.2.i.for.body3.3.i_crit_edge ]
  %best_k.181.3.i = phi i32 [ %best_k.2.lcssa.3.i, %for.end.3.i.for.body3.3.i_crit_edge ], [ %best_k.2.lcssa.2.i, %for.end.2.i.for.body3.3.i_crit_edge ]
  %best_n.180.3.i = phi i32 [ %best_n.2.lcssa.3.i, %for.end.3.i.for.body3.3.i_crit_edge ], [ %best_n.2.lcssa.2.i, %for.end.2.i.for.body3.3.i_crit_edge ]
  %add.3.i = add nuw nsw i32 %m.084.3.i, 2
  %mul.3.i = mul i32 %add.3.i, %freq.0
  %div.3.i = sdiv i32 %mul.3.i, 14318
  call void @__sanitizer_cov_trace_const_cmp4(i32 28636, i32 %mul.3.i)
  %cmp4.3.i = icmp slt i32 %mul.3.i, 28636
  %sub.3.i = add nsw i32 %div.3.i, -2
  %cond.3.i = select i1 %cmp4.3.i, i32 0, i32 %sub.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3679725, i32 %mul.3.i)
  %cmp8.3.i = icmp sgt i32 %mul.3.i, 3679725
  %add6.3.i = add nsw i32 %div.3.i, -1
  %cond12.3.i = select i1 %cmp8.3.i, i32 255, i32 %add6.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.3.i, i32 %cond12.3.i)
  %cmp13.not70.3.i = icmp sgt i32 %cond.3.i, %cond12.3.i
  br i1 %cmp13.not70.3.i, label %for.body3.3.i.for.end.3.i_crit_edge, label %for.body3.3.i.for.body14.3.i_crit_edge

for.body3.3.i.for.body14.3.i_crit_edge:           ; preds = %for.body3.3.i
  br label %for.body14.3.i

for.body3.3.i.for.end.3.i_crit_edge:              ; preds = %for.body3.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.3.i

for.body14.3.i:                                   ; preds = %if.end.3.i.for.body14.3.i_crit_edge, %for.body3.3.i.for.body14.3.i_crit_edge
  %n.075.3.i = phi i32 [ %inc.3.i, %if.end.3.i.for.body14.3.i_crit_edge ], [ %cond.3.i, %for.body3.3.i.for.body14.3.i_crit_edge ]
  %best_m.274.3.i = phi i32 [ %best_m.3.3.i, %if.end.3.i.for.body14.3.i_crit_edge ], [ %best_m.183.3.i, %for.body3.3.i.for.body14.3.i_crit_edge ]
  %best_error.273.3.i = phi i32 [ %best_error.3.3.i, %if.end.3.i.for.body14.3.i_crit_edge ], [ %best_error.182.3.i, %for.body3.3.i.for.body14.3.i_crit_edge ]
  %best_k.272.3.i = phi i32 [ %best_k.3.3.i, %if.end.3.i.for.body14.3.i_crit_edge ], [ %best_k.181.3.i, %for.body3.3.i.for.body14.3.i_crit_edge ]
  %best_n.271.3.i = phi i32 [ %best_n.3.3.i, %if.end.3.i.for.body14.3.i_crit_edge ], [ %best_n.180.3.i, %for.body3.3.i.for.body14.3.i_crit_edge ]
  %129 = mul i32 %n.075.3.i, 14318
  %mul16.3.i = add i32 %129, 28636
  %div18.3.i = sdiv i32 %mul16.3.i, %add.3.i
  %sub19.3.i = sub i32 %div18.3.i, %freq.0
  %130 = tail call i32 @llvm.abs.i32(i32 %sub19.3.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %best_error.273.3.i)
  %cmp27.3.i = icmp slt i32 %130, %best_error.273.3.i
  br i1 %cmp27.3.i, label %if.then.3.i, label %for.body14.3.i.if.end.3.i_crit_edge

for.body14.3.i.if.end.3.i_crit_edge:              ; preds = %for.body14.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %for.body14.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %for.body14.3.i.if.end.3.i_crit_edge
  %best_n.3.3.i = phi i32 [ %n.075.3.i, %if.then.3.i ], [ %best_n.271.3.i, %for.body14.3.i.if.end.3.i_crit_edge ]
  %best_k.3.3.i = phi i32 [ 0, %if.then.3.i ], [ %best_k.272.3.i, %for.body14.3.i.if.end.3.i_crit_edge ]
  %best_error.3.3.i = phi i32 [ %130, %if.then.3.i ], [ %best_error.273.3.i, %for.body14.3.i.if.end.3.i_crit_edge ]
  %best_m.3.3.i = phi i32 [ %m.084.3.i, %if.then.3.i ], [ %best_m.274.3.i, %for.body14.3.i.if.end.3.i_crit_edge ]
  %inc.3.i = add nsw i32 %n.075.3.i, 1
  %exitcond.3.i = icmp eq i32 %n.075.3.i, %cond12.3.i
  br i1 %exitcond.3.i, label %if.end.3.i.for.end.3.i_crit_edge, label %if.end.3.i.for.body14.3.i_crit_edge

if.end.3.i.for.body14.3.i_crit_edge:              ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.3.i

if.end.3.i.for.end.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.3.i

for.end.3.i:                                      ; preds = %if.end.3.i.for.end.3.i_crit_edge, %for.body3.3.i.for.end.3.i_crit_edge
  %best_n.2.lcssa.3.i = phi i32 [ %best_n.180.3.i, %for.body3.3.i.for.end.3.i_crit_edge ], [ %best_n.3.3.i, %if.end.3.i.for.end.3.i_crit_edge ]
  %best_k.2.lcssa.3.i = phi i32 [ %best_k.181.3.i, %for.body3.3.i.for.end.3.i_crit_edge ], [ %best_k.3.3.i, %if.end.3.i.for.end.3.i_crit_edge ]
  %best_error.2.lcssa.3.i = phi i32 [ %best_error.182.3.i, %for.body3.3.i.for.end.3.i_crit_edge ], [ %best_error.3.3.i, %if.end.3.i.for.end.3.i_crit_edge ]
  %best_m.2.lcssa.3.i = phi i32 [ %best_m.183.3.i, %for.body3.3.i.for.end.3.i_crit_edge ], [ %best_m.3.3.i, %if.end.3.i.for.end.3.i_crit_edge ]
  %dec.3.i = add nsw i32 %m.084.3.i, -1
  %cmp2.3.i.not = icmp eq i32 %m.084.3.i, 0
  br i1 %cmp2.3.i.not, label %do_calc_pll.exit, label %for.end.3.i.for.body3.3.i_crit_edge

for.end.3.i.for.body3.3.i_crit_edge:              ; preds = %for.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.3.i

do_calc_pll.exit:                                 ; preds = %for.end.3.i
  %shl38.i = shl i32 %best_n.2.lcssa.3.i, 8
  %shl39.i = shl i32 %best_m.2.lcssa.3.i, 2
  %or.i = or i32 %best_k.2.lcssa.3.i, %shl38.i
  %or40.i = or i32 %or.i, %shl39.i
  %vidpll = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 7
  %131 = ptrtoint ptr %vidpll to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or40.i, ptr %vidpll, align 4
  %132 = ptrtoint ptr %vmode to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vmode, align 4
  %and284 = and i32 %133, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and284)
  %cmp285 = icmp eq i32 %and284, 1
  br i1 %cmp285, label %if.then287, label %do_calc_pll.exit.if.end290_crit_edge

do_calc_pll.exit.if.end290_crit_edge:             ; preds = %do_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end290

if.then287:                                       ; preds = %do_calc_pll.exit
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %vidcfg to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vidcfg, align 4
  %or289 = or i32 %135, 8
  store i32 %or289, ptr %vidcfg, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then287, %do_calc_pll.exit.if.end290_crit_edge
  %136 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i413 = getelementptr i8, ptr %137, i32 16
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i413) #9, !srcloc !182
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %miscinit0 = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 24
  %140 = ptrtoint ptr %miscinit0 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %miscinit0, align 4
  %141 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bits_per_pixel, align 4
  %143 = add i32 %142, -8
  %144 = tail call i32 @llvm.fshl.i32(i32 %143, i32 %143, i32 29)
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %144, label %if.end290.sw.epilog_crit_edge [
    i32 0, label %if.end290.sw.bb_crit_edge
    i32 2, label %if.end290.sw.bb_crit_edge415
    i32 1, label %sw.bb298
    i32 3, label %sw.bb303
  ]

if.end290.sw.bb_crit_edge415:                     ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end290.sw.bb_crit_edge:                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end290.sw.epilog_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end290.sw.bb_crit_edge, %if.end290.sw.bb_crit_edge415
  %and297 = and i32 %139, 1073741823
  br label %sw.epilog.sink.split

sw.bb298:                                         ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  %or302 = or i32 %139, -1073741824
  br label %sw.epilog.sink.split

sw.bb303:                                         ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  %or305 = and i32 %139, 1073741823
  %and307 = or i32 %or305, 1073741824
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb303, %sw.bb298, %sw.bb
  %and307.sink = phi i32 [ %and307, %sw.bb303 ], [ %or302, %sw.bb298 ], [ %and297, %sw.bb ]
  %146 = ptrtoint ptr %miscinit0 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and307.sink, ptr %miscinit0, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end290.sw.epilog_crit_edge
  %147 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %par1, align 4
  %regbase_virt.i.i.i.i = getelementptr inbounds %struct.tdfx_par, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %152 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %153, i32 2097440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !185
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %sw.epilog
  %i.0.i.i = phi i32 [ 0, %sw.epilog ], [ %spec.select.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %154 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %157 = lshr i32 %156, 17
  %.lobit.i.i = and i32 %157, 1
  %158 = xor i32 %.lobit.i.i, 1
  %spec.select.i.i = add nuw nsw i32 %158, %i.0.i.i
  %cmp2.i.i = icmp ult i32 %spec.select.i.i, 3
  br i1 %cmp2.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %banshee_wait_idle.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

banshee_wait_idle.exit.i:                         ; preds = %do.body.i.i
  %159 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %160, i32 20
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %162 = or i32 %161, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %163 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %164, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %162) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %iobase.i.i.i = getelementptr inbounds %struct.tdfx_par, ptr %148, i32 0, i32 3
  %165 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i.i = add i32 %166, 212
  %and.i.i.i = and i32 %sub.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %167 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 17) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %168 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i2.i.i = add i32 %169, 213
  %and.i3.i.i = and i32 %sub.i2.i.i, 1048575
  %add1.i4.i.i = or i32 %and.i3.i.i, -18874368
  %170 = inttoptr i32 %add1.i4.i.i to ptr
  %171 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %170) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %172 = and i8 %171, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %173 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i119.i = add i32 %174, 212
  %and.i.i120.i = and i32 %sub.i.i119.i, 1048575
  %add1.i.i121.i = or i32 %and.i.i120.i, -18874368
  %175 = inttoptr i32 %add1.i.i121.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %175, i8 17) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %176 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i.i = add i32 %177, 213
  %and.i6.i.i = and i32 %sub.i5.i.i, 1048575
  %add1.i7.i.i = or i32 %and.i6.i.i, -18874368
  %178 = inttoptr i32 %add1.i7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %178, i8 %172) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %179 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %182 = and i32 %181, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %cmp6.i.i = icmp eq i32 %182, 0
  br i1 %cmp6.i.i, label %banshee_wait_idle.exit.i.do.end.i.i_crit_edge, label %banshee_wait_idle.exit.i.banshee_make_room.exit.i_crit_edge

banshee_wait_idle.exit.i.banshee_make_room.exit.i_crit_edge: ; preds = %banshee_wait_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit.i

banshee_wait_idle.exit.i.do.end.i.i_crit_edge:    ; preds = %banshee_wait_idle.exit.i
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %banshee_wait_idle.exit.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %183 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %186 = and i32 %185, 503316480
  %cmp.i.i = icmp eq i32 %186, 0
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.banshee_make_room.exit.i_crit_edge

do.end.i.i.banshee_make_room.exit.i_crit_edge:    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit.i

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

banshee_make_room.exit.i:                         ; preds = %do.end.i.i.banshee_make_room.exit.i_crit_edge, %banshee_wait_idle.exit.i.banshee_make_room.exit.i_crit_edge
  %187 = ptrtoint ptr %vgainit1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %vgainit1, align 4
  %and5.i = and i32 %188, 2097151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %189 = tail call i32 @llvm.bswap.i32(i32 %and5.i) #9
  %190 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %191, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %189) #9, !srcloc !185
  %192 = ptrtoint ptr %vidcfg to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %vidcfg, align 4
  %and6.i = and i32 %193, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %194 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #9
  %195 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %196, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %194) #9, !srcloc !185
  %197 = ptrtoint ptr %vidpll to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %vidpll, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #9
  %200 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %201, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %199) #9, !srcloc !185
  %202 = ptrtoint ptr %misc to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %misc, align 1
  %204 = or i8 %203, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %205 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i = add i32 %206, 194
  %and.i128.i = and i32 %sub.i.i, 1048575
  %add1.i.i = or i32 %and.i128.i, -18874368
  %207 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %207, i8 %204) #9, !srcloc !187
  %208 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %seq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %210 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i130.i = add i32 %211, 196
  %and.i.i131.i = and i32 %sub.i.i130.i, 1048575
  %add1.i.i132.i = or i32 %and.i.i131.i, -18874368
  %212 = inttoptr i32 %add1.i.i132.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %212, i8 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %213 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i133.i = add i32 %214, 197
  %and.i6.i134.i = and i32 %sub.i5.i133.i, 1048575
  %add1.i7.i135.i = or i32 %and.i6.i134.i, -18874368
  %215 = inttoptr i32 %add1.i7.i135.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %215, i8 %209) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %216 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx145, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %218 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i130.1.i = add i32 %219, 196
  %and.i.i131.1.i = and i32 %sub.i.i130.1.i, 1048575
  %add1.i.i132.1.i = or i32 %and.i.i131.1.i, -18874368
  %220 = inttoptr i32 %add1.i.i132.1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %220, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %221 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i133.1.i = add i32 %222, 197
  %and.i6.i134.1.i = and i32 %sub.i5.i133.1.i, 1048575
  %add1.i7.i135.1.i = or i32 %and.i6.i134.1.i, -18874368
  %223 = inttoptr i32 %add1.i7.i135.1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %223, i8 %217) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %224 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx147, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %226 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i130.2.i = add i32 %227, 196
  %and.i.i131.2.i = and i32 %sub.i.i130.2.i, 1048575
  %add1.i.i132.2.i = or i32 %and.i.i131.2.i, -18874368
  %228 = inttoptr i32 %add1.i.i132.2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %228, i8 2) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %229 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i133.2.i = add i32 %230, 197
  %and.i6.i134.2.i = and i32 %sub.i5.i133.2.i, 1048575
  %add1.i7.i135.2.i = or i32 %and.i6.i134.2.i, -18874368
  %231 = inttoptr i32 %add1.i7.i135.2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %231, i8 %225) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %232 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx149, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %234 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i130.3.i = add i32 %235, 196
  %and.i.i131.3.i = and i32 %sub.i.i130.3.i, 1048575
  %add1.i.i132.3.i = or i32 %and.i.i131.3.i, -18874368
  %236 = inttoptr i32 %add1.i.i132.3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %236, i8 3) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %237 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i133.3.i = add i32 %238, 197
  %and.i6.i134.3.i = and i32 %sub.i5.i133.3.i, 1048575
  %add1.i7.i135.3.i = or i32 %and.i6.i134.3.i, -18874368
  %239 = inttoptr i32 %add1.i7.i135.3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %239, i8 %233) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  %240 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx151, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %242 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i130.4.i = add i32 %243, 196
  %and.i.i131.4.i = and i32 %sub.i.i130.4.i, 1048575
  %add1.i.i132.4.i = or i32 %and.i.i131.4.i, -18874368
  %244 = inttoptr i32 %add1.i.i132.4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 4) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %245 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i133.4.i = add i32 %246, 197
  %and.i6.i134.4.i = and i32 %sub.i5.i133.4.i, 1048575
  %add1.i7.i135.4.i = or i32 %and.i6.i134.4.i, -18874368
  %247 = inttoptr i32 %add1.i7.i135.4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %247, i8 %241) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %banshee_make_room.exit.i
  %i.1234.i = phi i32 [ %inc18.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %banshee_make_room.exit.i ]
  %arrayidx16.i = getelementptr %struct.banshee_reg, ptr %reg, i32 0, i32 1, i32 %i.1234.i
  %248 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx16.i, align 1
  %conv.i136.i = trunc i32 %i.1234.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %250 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i138.i = add i32 %251, 212
  %and.i.i139.i = and i32 %sub.i.i138.i, 1048575
  %add1.i.i140.i = or i32 %and.i.i139.i, -18874368
  %252 = inttoptr i32 %add1.i.i140.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %252, i8 %conv.i136.i) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %253 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i141.i = add i32 %254, 213
  %and.i6.i142.i = and i32 %sub.i5.i141.i, 1048575
  %add1.i7.i143.i = or i32 %and.i6.i142.i, -18874368
  %255 = inttoptr i32 %add1.i7.i143.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %255, i8 %249) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %inc18.i = add nuw nsw i32 %i.1234.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, 25
  br i1 %exitcond.not.i, label %for.body15.i.for.body23.i_crit_edge, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

for.body15.i.for.body23.i_crit_edge:              ; preds = %for.body15.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.body15.i.for.body23.i_crit_edge
  %i.2235.i = phi i32 [ %inc26.i, %for.body23.i.for.body23.i_crit_edge ], [ 0, %for.body15.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.banshee_reg, ptr %reg, i32 0, i32 2, i32 %i.2235.i
  %256 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx24.i, align 1
  %conv.i144.i = trunc i32 %i.2235.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %258 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i146.i = add i32 %259, 206
  %and.i.i147.i = and i32 %sub.i.i146.i, 1048575
  %add1.i.i148.i = or i32 %and.i.i147.i, -18874368
  %260 = inttoptr i32 %add1.i.i148.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %260, i8 %conv.i144.i) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %261 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i149.i = add i32 %262, 207
  %and.i6.i150.i = and i32 %sub.i5.i149.i, 1048575
  %add1.i7.i151.i = or i32 %and.i6.i150.i, -18874368
  %263 = inttoptr i32 %add1.i7.i151.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %263, i8 %257) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  tail call void @arm_heavy_mb() #9
  %inc26.i = add nuw nsw i32 %i.2235.i, 1
  %exitcond237.not.i = icmp eq i32 %inc26.i, 9
  br i1 %exitcond237.not.i, label %for.body23.i.for.body31.i_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

for.body23.i.for.body31.i_crit_edge:              ; preds = %for.body23.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body23.i.for.body31.i_crit_edge
  %i.3236.i = phi i32 [ %inc34.i, %for.body31.i.for.body31.i_crit_edge ], [ 0, %for.body23.i.for.body31.i_crit_edge ]
  %arrayidx32.i = getelementptr [21 x i8], ptr %reg, i32 0, i32 %i.3236.i
  %264 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx32.i, align 1
  %266 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i153.i = add i32 %267, 218
  %and.i.i154.i = and i32 %sub.i.i153.i, 1048575
  %add1.i.i155.i = or i32 %and.i.i154.i, -18874368
  %268 = inttoptr i32 %add1.i.i155.i to ptr
  %269 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %268) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %conv.i156.i = trunc i32 %i.3236.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %270 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i4.i.i = add i32 %271, 192
  %and.i5.i.i = and i32 %sub.i4.i.i, 1048575
  %add1.i6.i.i = or i32 %and.i5.i.i, -18874368
  %272 = inttoptr i32 %add1.i6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %272, i8 %conv.i156.i) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %273 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i8.i.i = add i32 %274, 192
  %and.i9.i.i = and i32 %sub.i8.i.i, 1048575
  %add1.i10.i.i = or i32 %and.i9.i.i, -18874368
  %275 = inttoptr i32 %add1.i10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %275, i8 %265) #9, !srcloc !187
  %inc34.i = add nuw nsw i32 %i.3236.i, 1
  %exitcond238.not.i = icmp eq i32 %inc34.i, 21
  br i1 %exitcond238.not.i, label %for.end35.i, label %for.body31.i.for.body31.i_crit_edge

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

for.end35.i:                                      ; preds = %for.body31.i
  %276 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %ext, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %278 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i158.i = add i32 %279, 212
  %and.i.i159.i = and i32 %sub.i.i158.i, 1048575
  %add1.i.i160.i = or i32 %and.i.i159.i, -18874368
  %280 = inttoptr i32 %add1.i.i160.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %280, i8 26) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %281 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i161.i = add i32 %282, 213
  %and.i6.i162.i = and i32 %sub.i5.i161.i, 1048575
  %add1.i7.i163.i = or i32 %and.i6.i162.i, -18874368
  %283 = inttoptr i32 %add1.i7.i163.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %283, i8 %277) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %284 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx269, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %286 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i165.i = add i32 %287, 212
  %and.i.i166.i = and i32 %sub.i.i165.i, 1048575
  %add1.i.i167.i = or i32 %and.i.i166.i, -18874368
  %288 = inttoptr i32 %add1.i.i167.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %288, i8 27) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %289 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i168.i = add i32 %290, 213
  %and.i6.i169.i = and i32 %sub.i5.i168.i, 1048575
  %add1.i7.i170.i = or i32 %and.i6.i169.i, -18874368
  %291 = inttoptr i32 %add1.i7.i170.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %291, i8 %285) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  tail call void @arm_heavy_mb() #9
  %292 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i172.i = add i32 %293, 218
  %and.i.i173.i = and i32 %sub.i.i172.i, 1048575
  %add1.i.i174.i = or i32 %and.i.i173.i, -18874368
  %294 = inttoptr i32 %add1.i.i174.i to ptr
  %295 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %294) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %296 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i3.i.i = add i32 %297, 192
  %and.i4.i.i = and i32 %sub.i3.i.i, 1048575
  %add1.i5.i.i = or i32 %and.i4.i.i, -18874368
  %298 = inttoptr i32 %add1.i5.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %298, i8 32) #9, !srcloc !187
  tail call fastcc void @vga_enable_video(ptr noundef %148) #9
  %299 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %302 = and i32 %301, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp6.i177.i = icmp eq i32 %302, 0
  br i1 %cmp6.i177.i, label %for.end35.i.do.end.i180.i_crit_edge, label %for.end35.i.banshee_make_room.exit181.i_crit_edge

for.end35.i.banshee_make_room.exit181.i_crit_edge: ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit181.i

for.end35.i.do.end.i180.i_crit_edge:              ; preds = %for.end35.i
  br label %do.end.i180.i

do.end.i180.i:                                    ; preds = %do.end.i180.i.do.end.i180.i_crit_edge, %for.end35.i.do.end.i180.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %303 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %306 = and i32 %305, 402653184
  %cmp.i179.i = icmp eq i32 %306, 0
  br i1 %cmp.i179.i, label %do.end.i180.i.do.end.i180.i_crit_edge, label %do.end.i180.i.banshee_make_room.exit181.i_crit_edge

do.end.i180.i.banshee_make_room.exit181.i_crit_edge: ; preds = %do.end.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit181.i

do.end.i180.i.do.end.i180.i_crit_edge:            ; preds = %do.end.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i180.i

banshee_make_room.exit181.i:                      ; preds = %do.end.i180.i.banshee_make_room.exit181.i_crit_edge, %for.end35.i.banshee_make_room.exit181.i_crit_edge
  %307 = ptrtoint ptr %vgainit0 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %vgainit0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %309 = tail call i32 @llvm.bswap.i32(i32 %308) #9
  %310 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i183.i = getelementptr i8, ptr %311, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183.i, i32 %309) #9, !srcloc !185
  %dacmode.i = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 10
  %312 = ptrtoint ptr %dacmode.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %dacmode.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #9
  %315 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i185.i = getelementptr i8, ptr %316, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185.i, i32 %314) #9, !srcloc !185
  %317 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %stride, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %319 = tail call i32 @llvm.bswap.i32(i32 %318) #9
  %320 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %321, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187.i, i32 %319) #9, !srcloc !185
  %curspataddr.i = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 16
  %322 = ptrtoint ptr %curspataddr.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %curspataddr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %324 = tail call i32 @llvm.bswap.i32(i32 %323) #9
  %325 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %326, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i, i32 %324) #9, !srcloc !185
  %screensize.i = getelementptr inbounds %struct.banshee_reg, ptr %reg, i32 0, i32 13
  %327 = ptrtoint ptr %screensize.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %screensize.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %329 = tail call i32 @llvm.bswap.i32(i32 %328) #9
  %330 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i191.i = getelementptr i8, ptr %331, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191.i, i32 %329) #9, !srcloc !185
  %332 = ptrtoint ptr %startaddr to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %startaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %334 = tail call i32 @llvm.bswap.i32(i32 %333) #9
  %335 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i193.i = getelementptr i8, ptr %336, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193.i, i32 %334) #9, !srcloc !185
  %337 = ptrtoint ptr %vidcfg to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %vidcfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %339 = tail call i32 @llvm.bswap.i32(i32 %338) #9
  %340 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i195.i = getelementptr i8, ptr %341, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195.i, i32 %339) #9, !srcloc !185
  %342 = ptrtoint ptr %vgainit1 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %vgainit1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %344 = tail call i32 @llvm.bswap.i32(i32 %343) #9
  %345 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i197.i = getelementptr i8, ptr %346, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197.i, i32 %344) #9, !srcloc !185
  %347 = ptrtoint ptr %miscinit0 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %miscinit0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %349 = tail call i32 @llvm.bswap.i32(i32 %348) #9
  %350 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i199.i = getelementptr i8, ptr %351, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199.i, i32 %349) #9, !srcloc !185
  %352 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %355 = and i32 %354, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %355)
  %cmp6.i202.i = icmp ult i32 %355, 117440512
  br i1 %cmp6.i202.i, label %banshee_make_room.exit181.i.do.end.i205.i_crit_edge, label %banshee_make_room.exit181.i.banshee_make_room.exit206.i_crit_edge

banshee_make_room.exit181.i.banshee_make_room.exit206.i_crit_edge: ; preds = %banshee_make_room.exit181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit206.i

banshee_make_room.exit181.i.do.end.i205.i_crit_edge: ; preds = %banshee_make_room.exit181.i
  br label %do.end.i205.i

do.end.i205.i:                                    ; preds = %do.end.i205.i.do.end.i205.i_crit_edge, %banshee_make_room.exit181.i.do.end.i205.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %356 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %359 = and i32 %358, 520093696
  %cmp.i204.i = icmp ult i32 %359, 117440512
  br i1 %cmp.i204.i, label %do.end.i205.i.do.end.i205.i_crit_edge, label %do.end.i205.i.banshee_make_room.exit206.i_crit_edge

do.end.i205.i.banshee_make_room.exit206.i_crit_edge: ; preds = %do.end.i205.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit206.i

do.end.i205.i.do.end.i205.i_crit_edge:            ; preds = %do.end.i205.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i205.i

banshee_make_room.exit206.i:                      ; preds = %do.end.i205.i.banshee_make_room.exit206.i_crit_edge, %banshee_make_room.exit181.i.banshee_make_room.exit206.i_crit_edge
  %360 = ptrtoint ptr %startaddr to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %startaddr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %362 = tail call i32 @llvm.bswap.i32(i32 %361) #9
  %363 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %364, i32 1048628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 %362) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %365 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %366, i32 1048592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 %362) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %367 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %368, i32 1048632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 0) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %369 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %370, i32 1048584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 0) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %371 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i216.i = getelementptr i8, ptr %372, i32 1048588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216.i, i32 -15728881) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %373 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i218.i = getelementptr i8, ptr %374, i32 1048652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218.i, i32 0) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %375 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i220.i = getelementptr i8, ptr %376, i32 1048656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220.i, i32 -15728881) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %377 = ptrtoint ptr %regbase_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %regbase_virt.i.i.i.i, align 4
  %add.ptr.i222.i = getelementptr i8, ptr %378, i32 1048668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222.i, i32 0) #9, !srcloc !185
  %379 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %par1, align 4
  %regbase_virt.i.i.i224.i = getelementptr inbounds %struct.tdfx_par, ptr %380, i32 0, i32 2
  %381 = ptrtoint ptr %regbase_virt.i.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %regbase_virt.i.i.i224.i, align 4
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %382) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %384 = ptrtoint ptr %regbase_virt.i.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %regbase_virt.i.i.i224.i, align 4
  %add.ptr.i.i225.i = getelementptr i8, ptr %385, i32 2097440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i225.i, i32 0) #9, !srcloc !185
  br label %do.body.i230.i

do.body.i230.i:                                   ; preds = %do.body.i230.i.do.body.i230.i_crit_edge, %banshee_make_room.exit206.i
  %i.0.i226.i = phi i32 [ 0, %banshee_make_room.exit206.i ], [ %spec.select.i228.i, %do.body.i230.i.do.body.i230.i_crit_edge ]
  %386 = ptrtoint ptr %regbase_virt.i.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %regbase_virt.i.i.i224.i, align 4
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %389 = lshr i32 %388, 17
  %.lobit.i227.i = and i32 %389, 1
  %390 = xor i32 %.lobit.i227.i, 1
  %spec.select.i228.i = add nuw nsw i32 %390, %i.0.i226.i
  %cmp2.i229.i = icmp ult i32 %spec.select.i228.i, 3
  br i1 %cmp2.i229.i, label %do.body.i230.i.do.body.i230.i_crit_edge, label %do_write_regs.exit

do.body.i230.i.do.body.i230.i_crit_edge:          ; preds = %do.body.i230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i230.i

do_write_regs.exit:                               ; preds = %do.body.i230.i
  %391 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %stride, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %393 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %392, ptr %line_length, align 4
  %394 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %395)
  %cmp312 = icmp eq i32 %395, 8
  %cond314 = select i1 %cmp312, i32 3, i32 2
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %396 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %cond314, ptr %visual, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_set_par.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_set_par, %if.then320)) #9
          to label %do.end [label %if.then320], !srcloc !181

if.then320:                                       ; preds = %do_write_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %397 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %var, align 4
  %yres324 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %399 = ptrtoint ptr %yres324 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %yres324, align 4
  %401 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_set_par.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef %398, i32 noundef %400, i32 noundef %402) #9
  br label %do.end

do.end:                                           ; preds = %if.then320, %do_write_regs.exit
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %reg) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #2 align 64 {
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
  %cmp.not = icmp ule i32 %3, %regno
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %regno)
  %cmp2 = icmp ugt i32 %regno, 255
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %4 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %red, 77
  %mul4 = mul i32 %green, 151
  %add = add i32 %mul4, %mul
  %mul5 = mul i32 %blue, 28
  %add6 = add i32 %add, %mul5
  %shr = lshr i32 %add6, 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then3 ], [ %blue, %if.end.if.end7_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then3 ], [ %green, %if.end.if.end7_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then3 ], [ %red, %if.end.if.end7_crit_edge ]
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %visual, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %7, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end7
  %and = shl i32 %red.addr.0, 8
  %shl = and i32 %and, 16711680
  %and8 = and i32 %green.addr.0, 65280
  %and10 = lshr i32 %blue.addr.0, 8
  %shr11 = and i32 %and10, 255
  %or = or i32 %shr11, %and8
  %or12 = or i32 %or, %shl
  %regbase_virt.i.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regbase_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase_virt.i.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %12 = and i32 %11, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.i.i = icmp eq i32 %12, 0
  br i1 %cmp6.i.i, label %sw.bb.do.end.i.i_crit_edge, label %sw.bb.do_setpalentry.exit_crit_edge

sw.bb.do_setpalentry.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_setpalentry.exit

sw.bb.do.end.i.i_crit_edge:                       ; preds = %sw.bb
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %sw.bb.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %13 = ptrtoint ptr %regbase_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase_virt.i.i.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %16 = and i32 %15, 520093696
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %do.end.i.i.do.end.i.i_crit_edge, label %do.end.i.i.do_setpalentry.exit_crit_edge

do.end.i.i.do_setpalentry.exit_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_setpalentry.exit

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do_setpalentry.exit:                              ; preds = %do.end.i.i.do_setpalentry.exit_crit_edge, %sw.bb.do_setpalentry.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %regno) #9
  %18 = ptrtoint ptr %regbase_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase_virt.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #9, !srcloc !185
  %20 = ptrtoint ptr %regbase_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase_virt.i.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %21, i32 80
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %or12) #9
  %24 = ptrtoint ptr %regbase_virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase_virt.i.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %23) #9, !srcloc !185
  br label %cleanup

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %regno)
  %cmp14 = icmp ult i32 %regno, 16
  br i1 %cmp14, label %if.then15, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %red17 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %shl18 = shl i32 %red.addr.0, %27
  %add19 = sub i32 32767, %red.addr.0
  %sub = add i32 %add19, %shl18
  %shr20 = lshr i32 %sub, 16
  %28 = ptrtoint ptr %red17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %red17, align 4
  %shl23 = shl i32 %shr20, %29
  %green25 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length26 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %30 = ptrtoint ptr %length26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length26, align 4
  %shl27 = shl i32 %green.addr.0, %31
  %add28 = sub i32 32767, %green.addr.0
  %sub29 = add i32 %add28, %shl27
  %shr30 = lshr i32 %sub29, 16
  %32 = ptrtoint ptr %green25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %green25, align 4
  %shl34 = shl i32 %shr30, %33
  %or35 = or i32 %shl34, %shl23
  %blue37 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length38 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %34 = ptrtoint ptr %length38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length38, align 4
  %shl39 = shl i32 %blue.addr.0, %35
  %add40 = sub i32 32767, %blue.addr.0
  %sub41 = add i32 %add40, %shl39
  %shr42 = lshr i32 %sub41, 16
  %36 = ptrtoint ptr %blue37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blue37, align 4
  %shl46 = shl i32 %shr42, %37
  %or47 = or i32 %or35, %shl46
  %transp49 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length50 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %38 = ptrtoint ptr %length50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length50, align 4
  %shl51 = shl i32 %transp, %39
  %add52 = sub i32 32767, %transp
  %sub53 = add i32 %add52, %shl51
  %shr54 = lshr i32 %sub53, 16
  %40 = ptrtoint ptr %transp49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transp49, align 4
  %shl58 = shl i32 %shr54, %41
  %or59 = or i32 %or47, %shl58
  %arrayidx = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 1, i32 %regno
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or59, ptr %arrayidx, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tdfxfb_setcolreg.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tdfxfb_setcolreg, %if.then64)) #9
          to label %cleanup [label %if.then64], !srcloc !181

if.then64:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %43 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bits_per_pixel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tdfxfb_setcolreg.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body, %if.then15, %sw.bb13.cleanup_crit_edge, %do_setpalentry.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %sw.bb13.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %do_setpalentry.exit ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_blank(i32 noundef %blank, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %and = and i32 %5, -11
  %6 = zext i32 %blank to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %blank, label %if.then.critedge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb5
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase_virt.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %11 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %10) #9, !srcloc !185
  tail call fastcc void @vga_enable_video(ptr noundef %1)
  br label %if.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %and, 8
  %13 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase_virt.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %17 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %18, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %16) #9, !srcloc !185
  br label %if.then

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or4 = or i32 %and, 2
  %19 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase_virt.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or4) #9
  %23 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %24, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %22) #9, !srcloc !185
  br label %if.then

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or6 = or i32 %5, 10
  %25 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase_virt.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or6) #9
  %29 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %30, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %28) #9, !srcloc !185
  br label %if.then

if.then.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase_virt.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %35 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %36, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %34) #9, !srcloc !185
  br label %if.then

if.then:                                          ; preds = %if.then.critedge, %sw.bb5, %sw.bb3, %sw.bb2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %iobase.i.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i.i = add i32 %38, 196
  %and.i.i.i = and i32 %sub.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %39 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i2.i.i = add i32 %41, 197
  %and.i3.i.i = and i32 %sub.i2.i.i, 1048575
  %add1.i4.i.i = or i32 %and.i3.i.i, -18874368
  %42 = inttoptr i32 %add1.i4.i.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %44 = or i8 %43, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i6.i = add i32 %46, 196
  %and.i.i7.i = and i32 %sub.i.i6.i, 1048575
  %add1.i.i8.i = or i32 %and.i.i7.i, -18874368
  %47 = inttoptr i32 %add1.i.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i.i = add i32 %49, 197
  %and.i6.i.i = and i32 %sub.i5.i.i, 1048575
  %add1.i7.i.i = or i32 %and.i6.i.i, -18874368
  %50 = inttoptr i32 %add1.i7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i10.i = add i32 %52, 196
  %and.i.i11.i = and i32 %sub.i.i10.i, 1048575
  %add1.i.i12.i = or i32 %and.i.i11.i, -18874368
  %53 = inttoptr i32 %add1.i.i12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i13.i = add i32 %55, 197
  %and.i6.i14.i = and i32 %sub.i5.i13.i, 1048575
  %add1.i7.i15.i = or i32 %and.i6.i14.i, -18874368
  %56 = inttoptr i32 %add1.i7.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %44) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i.i17.i = add i32 %58, 196
  %and.i.i18.i = and i32 %sub.i.i17.i, 1048575
  %add1.i.i19.i = or i32 %and.i.i18.i, -18874368
  %59 = inttoptr i32 %add1.i.i19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %iobase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i.i.i, align 8
  %sub.i5.i20.i = add i32 %61, 197
  %and.i6.i21.i = and i32 %sub.i5.i20.i, 1048575
  %add1.i7.i22.i = or i32 %and.i6.i21.i, -18874368
  %62 = inttoptr i32 %add1.i7.i22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 3) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %.b = load i1, ptr @nopan, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %6 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %regbase_virt.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase_virt.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %mul) #9
  %12 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #9, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_fillrect(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits_per_pixel, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  %cond = select i1 %cmp, i32 0, i32 8
  %add = add i32 %cond, %3
  %shl = shl i32 %add, 13
  %or = or i32 %shl, %5
  %6 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rect, align 4
  %dy3 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %8 = ptrtoint ptr %dy3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy3, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %10 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rop, align 4
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %regbase_virt.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase_virt.i.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %19 = and i32 %18, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %19)
  %cmp6.i = icmp ult i32 %19, 83886080
  br i1 %cmp6.i, label %entry.do.end.i_crit_edge, label %entry.banshee_make_room.exit_crit_edge

entry.banshee_make_room.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %20 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase_virt.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %23 = and i32 %22, 520093696
  %cmp.i = icmp ult i32 %23, 83886080
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.banshee_make_room.exit_crit_edge

do.end.i.banshee_make_room.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

banshee_make_room.exit:                           ; preds = %do.end.i.banshee_make_room.exit_crit_edge, %entry.banshee_make_room.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %25 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 1048596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #9, !srcloc !185
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %27 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp16 = icmp eq i32 %28, 3
  %color = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %29 = ptrtoint ptr %color to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %color, align 4
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %banshee_make_room.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %33, i32 1048676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %31) #9, !srcloc !185
  br label %if.end20

if.else18:                                        ; preds = %banshee_make_room.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 1, i32 %30
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %38, i32 1048676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %36) #9, !srcloc !185
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then17
  %add9 = add i32 %15, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add9)
  %cmp10 = icmp ugt i32 %add9, 4095
  %add5 = add i32 %13, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add5)
  %cmp6 = icmp ugt i32 %add5, 4095
  %mul = mul i32 %9, %5
  %dstbase.0 = select i1 %cmp6, i32 %mul, i32 0
  %mul12 = mul i32 %7, %3
  %shr = lshr i32 %mul12, 3
  %add13 = select i1 %cmp10, i32 %shr, i32 0
  %dstbase.1 = add i32 %add13, %dstbase.0
  %dx.0 = select i1 %cmp10, i32 0, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp eq i32 %11, 0
  %. = select i1 %cmp4, i32 -872415227, i32 1711276037
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %.) #9
  %40 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %41, i32 1048688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %39) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %dstbase.1) #9
  %43 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %44, i32 1048592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %42) #9, !srcloc !185
  %45 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width, align 4
  %47 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height, align 4
  %shl25 = shl i32 %48, 16
  %or26 = or i32 %shl25, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %or26) #9
  %50 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %51, i32 1048680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %49) #9, !srcloc !185
  %.op = shl i32 %9, 16
  %shl27 = select i1 %cmp6, i32 0, i32 %.op
  %or28 = or i32 %dx.0, %shl27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %or28) #9
  %53 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %54, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %52) #9, !srcloc !185
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_copyarea(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %sx2 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 4
  %2 = ptrtoint ptr %sx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sx2, align 4
  %sy3 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 5
  %4 = ptrtoint ptr %sy3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sy3, align 4
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %area, align 4
  %dy5 = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 1
  %8 = ptrtoint ptr %dy5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dy5, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line_length, align 4
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 3
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %area, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %regbase_virt.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase_virt.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %21 = and i32 %20, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %21)
  %cmp6.i = icmp ult i32 %21, 117440512
  br i1 %cmp6.i, label %entry.do.end.i_crit_edge, label %entry.banshee_make_room.exit_crit_edge

entry.banshee_make_room.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %22 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase_virt.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %25 = and i32 %24, 520093696
  %cmp.i = icmp ult i32 %25, 117440512
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.banshee_make_room.exit_crit_edge

do.end.i.banshee_make_room.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

banshee_make_room.exit:                           ; preds = %do.end.i.banshee_make_room.exit_crit_edge, %entry.banshee_make_room.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp = icmp eq i32 %11, 8
  %cond = select i1 %cmp, i32 0, i32 8
  %add = add i32 %cond, %11
  %shl = shl i32 %add, 13
  %or = or i32 %shl, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp41.not = icmp ugt i32 %5, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp30.not = icmp ugt i32 %3, %7
  %blitcmd.0 = select i1 %cmp30.not, i32 -872415231, i32 -872398847
  %or43 = or i32 %blitcmd.0, 32768
  %blitcmd.1 = select i1 %cmp41.not, i32 %blitcmd.0, i32 %or43
  %add15 = add i32 %15, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add15)
  %cmp16 = icmp ugt i32 %add15, 4095
  %dy.0 = select i1 %cmp16, i32 0, i32 %9
  %sub45 = add i32 %15, -1
  %add49 = select i1 %cmp41.not, i32 0, i32 %sub45
  %dy.1 = add i32 %dy.0, %add49
  %add6 = add i32 %15, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add6)
  %cmp7 = icmp ugt i32 %add6, 4095
  %spec.select = select i1 %cmp7, i32 0, i32 %5
  %sy.1 = add i32 %spec.select, %add49
  %add21 = add i32 %17, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add21)
  %cmp22 = icmp ugt i32 %add21, 4095
  %dx.0 = select i1 %cmp22, i32 0, i32 %7
  %sub = add i32 %17, -1
  %add37 = select i1 %cmp30.not, i32 0, i32 %sub
  %dx.1 = add i32 %dx.0, %add37
  %add8 = add i32 %17, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add8)
  %cmp9 = icmp ugt i32 %add8, 4095
  %sx.0 = select i1 %cmp9, i32 0, i32 %3
  %sx.1 = add i32 %sx.0, %add37
  %mul18 = mul i32 %13, %9
  %dstbase.0 = select i1 %cmp16, i32 %mul18, i32 0
  %mul24 = mul i32 %11, %7
  %shr25 = lshr i32 %mul24, 3
  %add26 = select i1 %cmp22, i32 %shr25, i32 0
  %dstbase.1 = add i32 %add26, %dstbase.0
  %mul = mul i32 %13, %5
  %spec.select108 = select i1 %cmp7, i32 %mul, i32 0
  %mul11 = mul i32 %11, %3
  %shr = lshr i32 %mul11, 3
  %add12 = select i1 %cmp9, i32 %shr, i32 0
  %srcbase.1 = add i32 %add12, %spec.select108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %27 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 1048660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %30, i32 1048596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %26) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %31 = tail call i32 @llvm.bswap.i32(i32 %blitcmd.1) #9
  %32 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %33, i32 1048688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %31) #9, !srcloc !185
  %34 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %width, align 4
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %shl53 = shl i32 %37, 16
  %or54 = or i32 %shl53, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %or54) #9
  %39 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %40, i32 1048680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %38) #9, !srcloc !185
  %shl55 = shl i32 %dy.1, 16
  %or56 = or i32 %dx.1, %shl55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %or56) #9
  %42 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %43, i32 1048684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %41) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %srcbase.1) #9
  %45 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %46, i32 1048628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %44) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %dstbase.1) #9
  %48 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %49, i32 1048592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %47) #9, !srcloc !185
  %shl57 = shl i32 %sy.1, 16
  %or58 = or i32 %sx.1, %shl57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %or58) #9
  %51 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %52, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %50) #9, !srcloc !185
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %height = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %depth, align 4
  %conv = zext i8 %7 to i32
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, 7
  %shr = lshr i32 %add, 3
  %mul2 = mul i32 %shr, %3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %8 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %line_length, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %10 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp = icmp eq i32 %11, 8
  %cond = select i1 %cmp, i32 0, i32 8
  %add4 = add i32 %cond, %11
  %shl = shl i32 %add4, 13
  %or = or i32 %shl, %9
  %data = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %image, align 4
  %dy6 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %16 = ptrtoint ptr %dy6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dy6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp9.not = icmp eq i8 %7, 1
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regbase_virt.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase_virt.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %21 = and i32 %20, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6.i = icmp eq i32 %21, 0
  br i1 %cmp6.i, label %if.end.do.end.i_crit_edge, label %if.end.banshee_make_room.exit_crit_edge

if.end.banshee_make_room.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %22 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase_virt.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %25 = and i32 %24, 402653184
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.banshee_make_room.exit_crit_edge

do.end.i.banshee_make_room.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

banshee_make_room.exit:                           ; preds = %do.end.i.banshee_make_room.exit_crit_edge, %if.end.banshee_make_room.exit_crit_edge
  %visual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %26 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %visual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cond69 = icmp eq i32 %27, 3
  %fg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %28 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fg_color, align 4
  br i1 %cond69, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %banshee_make_room.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 1048676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #9, !srcloc !185
  %bg_color = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %33 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bg_color, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %37, i32 1048672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %35) #9, !srcloc !185
  br label %sw.epilog

sw.default:                                       ; preds = %banshee_make_room.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 1, i32 %29
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %42, i32 1048676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %40) #9, !srcloc !185
  %bg_color15 = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %43 = ptrtoint ptr %bg_color15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bg_color15, align 4
  %arrayidx16 = getelementptr %struct.tdfx_par, ptr %1, i32 0, i32 1, i32 %44
  %45 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %49, i32 1048672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %47) #9, !srcloc !185
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %50 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height, align 4
  %add18 = add i32 %51, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add18)
  %cmp19 = icmp ugt i32 %add18, 4095
  %mul22 = mul i32 %17, %9
  %spec.select124 = select i1 %cmp19, i32 %mul22, i32 0
  %52 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %width, align 4
  %add25 = add i32 %53, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add25)
  %cmp26 = icmp ugt i32 %add25, 4095
  %mul29 = mul i32 %15, %11
  %shr30 = lshr i32 %mul29, 3
  %dx.0 = select i1 %cmp26, i32 0, i32 %15
  %add31 = select i1 %cmp26, i32 %shr30, i32 0
  %dstbase.1 = add i32 %add31, %spec.select124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %dstbase.1) #9
  %55 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %56, i32 1048592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %54) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %58, i32 1048668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 0) #9, !srcloc !185
  %.op = shl i32 %17, 16
  %shl33 = select i1 %cmp19, i32 0, i32 %.op
  %or34 = or i32 %dx.0, %shl33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %or34) #9
  %60 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %61, i32 1048684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %59) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %63, i32 1048688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 50331852) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %65, i32 1048660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 20480) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %66 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %67 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %68, i32 1048596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %66) #9, !srcloc !185
  %69 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %width, align 4
  %71 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %height, align 4
  %shl37 = shl i32 %72, 16
  %or38 = or i32 %shl37, %70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %73 = tail call i32 @llvm.bswap.i32(i32 %or38) #9
  %74 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %75, i32 1048680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %73) #9, !srcloc !185
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mul2)
  %cmp40167 = icmp sgt i32 %mul2, 3
  br i1 %cmp40167, label %for.body.preheader, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %sw.epilog
  %shr39171 = lshr i32 %mul2, 2
  br label %for.body

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %for.body.preheader
  %chardata.0170 = phi ptr [ %add.ptr, %if.end45.for.body_crit_edge ], [ %13, %for.body.preheader ]
  %i.0169 = phi i32 [ %dec46, %if.end45.for.body_crit_edge ], [ %shr39171, %for.body.preheader ]
  %fifo_free.0168 = phi i32 [ %fifo_free.1, %if.end45.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dec = add i32 %fifo_free.0168, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp42 = icmp slt i32 %dec, 0
  br i1 %cmp42, label %if.then44, label %for.body.if.end45_crit_edge

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %for.body
  %76 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regbase_virt.i.i, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %79 = and i32 %78, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 503316480, i32 %79)
  %cmp6.i147.not = icmp eq i32 %79, 503316480
  br i1 %cmp6.i147.not, label %if.then44.if.end45_crit_edge, label %if.then44.do.end.i150_crit_edge

if.then44.do.end.i150_crit_edge:                  ; preds = %if.then44
  br label %do.end.i150

if.then44.if.end45_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end.i150:                                      ; preds = %do.end.i150.do.end.i150_crit_edge, %if.then44.do.end.i150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %80 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regbase_virt.i.i, align 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %83 = and i32 %82, 503316480
  %cmp.i149.not = icmp eq i32 %83, 503316480
  br i1 %cmp.i149.not, label %do.end.i150.if.end45_crit_edge, label %do.end.i150.do.end.i150_crit_edge

do.end.i150.do.end.i150_crit_edge:                ; preds = %do.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i150

do.end.i150.if.end45_crit_edge:                   ; preds = %do.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %do.end.i150.if.end45_crit_edge, %if.then44.if.end45_crit_edge, %for.body.if.end45_crit_edge
  %fifo_free.1 = phi i32 [ %dec, %for.body.if.end45_crit_edge ], [ 31, %if.then44.if.end45_crit_edge ], [ 31, %do.end.i150.if.end45_crit_edge ]
  %84 = ptrtoint ptr %chardata.0170 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %chardata.0170, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  %87 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %88, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %86) #9, !srcloc !185
  %add.ptr = getelementptr i8, ptr %chardata.0170, i32 4
  %dec46 = add nsw i32 %i.0169, -1
  %cmp40 = icmp sgt i32 %i.0169, 1
  br i1 %cmp40, label %if.end45.for.body_crit_edge, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end45.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %chardata.0.lcssa = phi ptr [ %13, %sw.epilog.for.end_crit_edge ], [ %add.ptr, %if.end45.for.end_crit_edge ]
  %89 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regbase_virt.i.i, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %92 = and i32 %91, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp6.i156 = icmp eq i32 %92, 0
  br i1 %cmp6.i156, label %for.end.do.end.i159_crit_edge, label %for.end.banshee_make_room.exit160_crit_edge

for.end.banshee_make_room.exit160_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit160

for.end.do.end.i159_crit_edge:                    ; preds = %for.end
  br label %do.end.i159

do.end.i159:                                      ; preds = %do.end.i159.do.end.i159_crit_edge, %for.end.do.end.i159_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %93 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regbase_virt.i.i, align 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %96 = and i32 %95, 503316480
  %cmp.i158 = icmp eq i32 %96, 0
  br i1 %cmp.i158, label %do.end.i159.do.end.i159_crit_edge, label %do.end.i159.banshee_make_room.exit160_crit_edge

do.end.i159.banshee_make_room.exit160_crit_edge:  ; preds = %do.end.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit160

do.end.i159.do.end.i159_crit_edge:                ; preds = %do.end.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i159

banshee_make_room.exit160:                        ; preds = %do.end.i159.banshee_make_room.exit160_crit_edge, %for.end.banshee_make_room.exit160_crit_edge
  %rem = srem i32 %mul2, 4
  %97 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %rem, label %banshee_make_room.exit160.cleanup_crit_edge [
    i32 3, label %sw.bb51
    i32 1, label %sw.bb47
    i32 2, label %sw.bb49
  ]

banshee_make_room.exit160.cleanup_crit_edge:      ; preds = %banshee_make_room.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb47:                                          ; preds = %banshee_make_room.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %chardata.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %chardata.0.lcssa, align 1
  %conv48 = zext i8 %99 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %100 = shl nuw i32 %conv48, 24
  %101 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %102, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %100) #9, !srcloc !185
  br label %cleanup

sw.bb49:                                          ; preds = %banshee_make_room.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %chardata.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %chardata.0.lcssa, align 2
  %conv50 = zext i16 %104 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %105 = tail call i32 @llvm.bswap.i32(i32 %conv50) #9
  %106 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %107, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %105) #9, !srcloc !185
  br label %cleanup

sw.bb51:                                          ; preds = %banshee_make_room.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %chardata.0.lcssa to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %chardata.0.lcssa, align 2
  %conv52 = zext i16 %109 to i32
  %arrayidx53 = getelementptr i8, ptr %chardata.0.lcssa, i32 3
  %110 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %111 to i32
  %shl55 = shl nuw i32 %conv54, 24
  %or56 = or i32 %shl55, %conv52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %112 = tail call i32 @llvm.bswap.i32(i32 %or56) #9
  %113 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %114, i32 1048704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %112) #9, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %sw.bb51, %sw.bb49, %sw.bb47, %banshee_make_room.exit160.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_cursor(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cursor) #2 align 64 {
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
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 92
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %enable = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %enable, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool10.not = icmp eq i16 %14, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %12, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %16 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %17, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %15) #9, !srcloc !185
  br label %if.end12

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %12, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %19 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %20, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %18) #9, !srcloc !185
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %21 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool13.not = icmp eq i16 %22, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %23 = and i16 %22, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool19.not = icmp eq i16 %23, 0
  br i1 %tobool19.not, label %if.end15.if.end54_crit_edge, label %if.then20

if.end15.if.end54_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then20:                                        ; preds = %if.end15
  %cmap.sroa.5.0.cmap21.sroa_idx = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %24 = ptrtoint ptr %cmap.sroa.5.0.cmap21.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %cmap.sroa.5.0.copyload = load ptr, ptr %cmap.sroa.5.0.cmap21.sroa_idx, align 4
  %cmap.sroa.8.0.cmap21.sroa_idx = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %25 = ptrtoint ptr %cmap.sroa.8.0.cmap21.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %cmap.sroa.8.0.copyload = load ptr, ptr %cmap.sroa.8.0.cmap21.sroa_idx, align 4
  %cmap.sroa.11.0.cmap21.sroa_idx = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %26 = ptrtoint ptr %cmap.sroa.11.0.cmap21.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %cmap.sroa.11.0.copyload = load ptr, ptr %cmap.sroa.11.0.cmap21.sroa_idx, align 4
  %bg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 5
  %27 = ptrtoint ptr %bg_color to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bg_color, align 4
  %fg_color = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 4
  %29 = ptrtoint ptr %fg_color to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fg_color, align 4
  %arrayidx = getelementptr i16, ptr %cmap.sroa.5.0.copyload, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %33 = and i16 %32, -256
  %and27 = zext i16 %33 to i32
  %shl = shl nuw nsw i32 %and27, 8
  %arrayidx28 = getelementptr i16, ptr %cmap.sroa.8.0.copyload, i32 %30
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx28, align 2
  %36 = and i16 %35, -256
  %and30 = zext i16 %36 to i32
  %or32 = or i32 %shl, %and30
  %arrayidx33 = getelementptr i16, ptr %cmap.sroa.11.0.copyload, i32 %30
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx33, align 2
  %39 = lshr i16 %38, 8
  %shr = zext i16 %39 to i32
  %or36 = or i32 %or32, %shr
  %arrayidx38 = getelementptr i16, ptr %cmap.sroa.5.0.copyload, i32 %28
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx38, align 2
  %42 = and i16 %41, -256
  %and40 = zext i16 %42 to i32
  %shl41 = shl nuw nsw i32 %and40, 8
  %arrayidx43 = getelementptr i16, ptr %cmap.sroa.8.0.copyload, i32 %28
  %43 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx43, align 2
  %45 = and i16 %44, -256
  %and45 = zext i16 %45 to i32
  %or47 = or i32 %shl41, %and45
  %arrayidx49 = getelementptr i16, ptr %cmap.sroa.11.0.copyload, i32 %28
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx49, align 2
  %48 = lshr i16 %47, 8
  %shr52 = zext i16 %48 to i32
  %or53 = or i32 %or47, %shr52
  %49 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase_virt.i, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %52 = and i32 %51, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp6.i = icmp eq i32 %52, 0
  br i1 %cmp6.i, label %if.then20.do.end.i_crit_edge, label %if.then20.banshee_make_room.exit_crit_edge

if.then20.banshee_make_room.exit_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

if.then20.do.end.i_crit_edge:                     ; preds = %if.then20
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then20.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !194
  %53 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regbase_virt.i, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %56 = and i32 %55, 520093696
  %cmp.i = icmp eq i32 %56, 0
  br i1 %cmp.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.banshee_make_room.exit_crit_edge

do.end.i.banshee_make_room.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %banshee_make_room.exit

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

banshee_make_room.exit:                           ; preds = %do.end.i.banshee_make_room.exit_crit_edge, %if.then20.banshee_make_room.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %57 = tail call i32 @llvm.bswap.i32(i32 %or53) #9
  %58 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %59, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %57) #9, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %or36) #9
  %61 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %62, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %60) #9, !srcloc !185
  br label %if.end54

if.end54:                                         ; preds = %banshee_make_room.exit, %if.end15.if.end54_crit_edge
  %63 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %cursor, align 4
  %65 = and i16 %64, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool58.not = icmp eq i16 %65, 0
  br i1 %tobool58.not, label %if.end54.if.end65_crit_edge, label %if.then59

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %image, align 4
  %dy = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dy, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %70 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %yoffset, align 4
  %sub = sub i32 %69, %71
  %72 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regbase_virt.i, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %add62 = shl i32 %sub, 16
  %add = add i32 %67, 4128831
  %add64 = add i32 %add, %add62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %add64) #9
  %76 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %77, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 %75) #9, !srcloc !185
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %if.end54.if.end65_crit_edge
  %78 = ptrtoint ptr %cursor to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cursor, align 4
  %80 = and i16 %79, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool69.not = icmp eq i16 %80, 0
  br i1 %tobool69.not, label %if.end65.cleanup_crit_edge, label %if.then70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then70:                                        ; preds = %if.end65
  %81 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %84 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %smem_len, align 4
  %add.ptr = getelementptr i8, ptr %83, i32 %85
  %data = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 5, i32 7
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data, align 4
  %mask72 = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 3
  %88 = ptrtoint ptr %mask72 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mask72, align 4
  tail call void @mmioset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1024) #9
  %90 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp75177.not = icmp eq i32 %91, 0
  br i1 %cmp75177.not, label %if.then70.cleanup_crit_edge, label %for.body.lr.ph

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then70
  %rop = getelementptr inbounds %struct.fb_cursor, ptr %cursor, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %inc104, %for.end.for.body_crit_edge ]
  %mask.0180 = phi ptr [ %89, %for.body.lr.ph ], [ %mask.1.lcssa, %for.end.for.body_crit_edge ]
  %bitmap.0179 = phi ptr [ %87, %for.body.lr.ph ], [ %bitmap.1.lcssa, %for.end.for.body_crit_edge ]
  %cursorbase.0178 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr102, %for.end.for.body_crit_edge ]
  %92 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %width, align 4
  %add79 = add i32 %93, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add79)
  %cmp82171.not = icmp ult i32 %add79, 8
  br i1 %cmp82171.not, label %for.body.for.end_crit_edge, label %for.body84.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body84.preheader:                             ; preds = %for.body
  %shr80 = lshr i32 %add79, 3
  br label %for.body84

for.body84:                                       ; preds = %for.body84.for.body84_crit_edge, %for.body84.preheader
  %h.0174 = phi i32 [ %inc, %for.body84.for.body84_crit_edge ], [ 0, %for.body84.preheader ]
  %mask.1173 = phi ptr [ %incdec.ptr, %for.body84.for.body84_crit_edge ], [ %mask.0180, %for.body84.preheader ]
  %bitmap.1172 = phi ptr [ %incdec.ptr101, %for.body84.for.body84_crit_edge ], [ %bitmap.0179, %for.body84.preheader ]
  %94 = ptrtoint ptr %mask.1173 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mask.1173, align 1
  %96 = ptrtoint ptr %bitmap.1172 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bitmap.1172, align 1
  %xor157 = xor i8 %97, %95
  %98 = ptrtoint ptr %rop to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp90 = icmp eq i16 %99, 0
  %and95158 = and i8 %97, %95
  %spec.select = select i1 %cmp90, i8 %and95158, i8 %xor157
  %add.ptr98 = getelementptr i8, ptr %cursorbase.0178, i32 %h.0174
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr98, i8 %95) #9, !srcloc !187
  %incdec.ptr = getelementptr i8, ptr %mask.1173, i32 1
  %add.ptr100 = getelementptr i8, ptr %add.ptr98, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100, i8 %spec.select) #9, !srcloc !187
  %incdec.ptr101 = getelementptr i8, ptr %bitmap.1172, i32 1
  %inc = add nuw nsw i32 %h.0174, 1
  %exitcond.not = icmp eq i32 %inc, %shr80
  br i1 %exitcond.not, label %for.body84.for.end_crit_edge, label %for.body84.for.body84_crit_edge

for.body84.for.body84_crit_edge:                  ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body84

for.body84.for.end_crit_edge:                     ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body84.for.end_crit_edge, %for.body.for.end_crit_edge
  %bitmap.1.lcssa = phi ptr [ %bitmap.0179, %for.body.for.end_crit_edge ], [ %incdec.ptr101, %for.body84.for.end_crit_edge ]
  %mask.1.lcssa = phi ptr [ %mask.0180, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.body84.for.end_crit_edge ]
  %add.ptr102 = getelementptr i8, ptr %cursorbase.0178, i32 16
  %inc104 = add nuw i32 %i.0181, 1
  %100 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height, align 4
  %cmp75 = icmp ult i32 %inc104, %101
  br i1 %cmp75, label %for.end.for.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %if.then70.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @banshee_wait_idle(ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %regbase_virt.i.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase_virt.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2097440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !185
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %spec.select, %do.body.do.body_crit_edge ]
  %7 = ptrtoint ptr %regbase_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regbase_virt.i.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %10 = lshr i32 %9, 17
  %.lobit = and i32 %10, 1
  %11 = xor i32 %.lobit, 1
  %spec.select = add nuw nsw i32 %11, %i.0
  %cmp2 = icmp ult i32 %spec.select, 3
  br i1 %cmp2, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vga_enable_video(ptr nocapture noundef readonly %par) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %iobase.i.i = getelementptr inbounds %struct.tdfx_par, ptr %par, i32 0, i32 3
  %0 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i.i, align 8
  %sub.i.i = add i32 %1, 196
  %and.i.i = and i32 %sub.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i.i, align 8
  %sub.i2.i = add i32 %4, 197
  %and.i3.i = and i32 %sub.i2.i, 1048575
  %add1.i4.i = or i32 %and.i3.i, -18874368
  %5 = inttoptr i32 %add1.i4.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %7 = and i8 %6, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i.i, align 8
  %sub.i.i6 = add i32 %9, 196
  %and.i.i7 = and i32 %sub.i.i6, 1048575
  %add1.i.i8 = or i32 %and.i.i7, -18874368
  %10 = inttoptr i32 %add1.i.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i.i, align 8
  %sub.i5.i = add i32 %12, 197
  %and.i6.i = and i32 %sub.i5.i, 1048575
  %add1.i7.i = or i32 %and.i6.i, -18874368
  %13 = inttoptr i32 %add1.i7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i.i, align 8
  %sub.i.i10 = add i32 %15, 196
  %and.i.i11 = and i32 %sub.i.i10, 1048575
  %add1.i.i12 = or i32 %and.i.i11, -18874368
  %16 = inttoptr i32 %add1.i.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 1) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i.i, align 8
  %sub.i5.i13 = add i32 %18, 197
  %and.i6.i14 = and i32 %sub.i5.i13, 1048575
  %add1.i7.i15 = or i32 %and.i6.i14, -18874368
  %19 = inttoptr i32 %add1.i7.i15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %7) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i.i, align 8
  %sub.i.i17 = add i32 %21, 196
  %and.i.i18 = and i32 %sub.i.i17, 1048575
  %add1.i.i19 = or i32 %and.i.i18, -18874368
  %22 = inttoptr i32 %add1.i.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i.i, align 8
  %sub.i5.i20 = add i32 %24, 197
  %and.i6.i21 = and i32 %sub.i5.i20, 1048575
  %add1.i7.i22 = or i32 %and.i6.i21, -18874368
  %25 = inttoptr i32 %add1.i7.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 3) #9, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  tail call void @arm_heavy_mb() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_ddc_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %5 = and i32 %4, -4097
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 1048576
  %r.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0) #9
  %8 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %7) #9, !srcloc !185
  %10 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_ddc_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %5 = and i32 %4, -2049
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 524288
  %r.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0) #9
  %8 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %7) #9, !srcloc !185
  %10 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_ddc_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %5 = lshr i32 %4, 14
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_ddc_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %5 = lshr i32 %4, 13
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_i2c_setsda(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %5 = and i32 %4, -3
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 33554432
  %r.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0) #9
  %8 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %7) #9, !srcloc !185
  %10 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tdfxfb_i2c_setscl(ptr nocapture noundef readonly %data, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %5 = and i32 %4, -2
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 16777216
  %r.0 = or i32 %6, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %r.0) #9
  %8 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %7) #9, !srcloc !185
  %10 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %11, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_i2c_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %5 = lshr i32 %4, 3
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfxfb_i2c_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %regbase_virt.i = getelementptr inbounds %struct.tdfx_par, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regbase_virt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  %5 = lshr i32 %4, 2
  %and.lobit = and i32 %5, 1
  ret i32 %and.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_ddc_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_edid_to_monspecs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_validate_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tdfxfb_setup(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
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
  %call31 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.60) #9
  %cmp.not32 = icmp eq ptr %call31, null
  br i1 %cmp.not32, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call33 = phi ptr [ %call, %while.cond.backedge.while.body_crit_edge ], [ %call31, %while.cond.preheader.while.body_crit_edge ]
  %3 = ptrtoint ptr %call33 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @strcmp(ptr noundef nonnull %call33, ptr noundef nonnull dereferenceable(6) @.str.61) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nopan, align 4
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end4
  %call8 = call i32 @strcmp(ptr noundef nonnull %call33, ptr noundef nonnull dereferenceable(7) @.str.62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.while.cond.backedge_crit_edge, label %if.else11

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strncmp(ptr noundef nonnull %call33, ptr noundef nonnull dereferenceable(10) @.str.63, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call33, i32 9
  %call15 = call i32 @simple_strtoul(ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #9
  store i32 %call15, ptr @hwcursor, align 4
  br label %while.cond.backedge

if.else16:                                        ; preds = %if.else11
  %call17 = call i32 @strncmp(ptr noundef nonnull %call33, ptr noundef nonnull dereferenceable(7) @.str.64, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  store i8 1, ptr @nomtrr, align 1
  br label %while.cond.backedge

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call33, ptr @mode_option, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else20, %if.then19, %if.then14, %if.else.while.cond.backedge_crit_edge, %if.then7, %while.body.while.cond.backedge_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.60) #9
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
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__UNIQUE_ID_author324, !1, !"__UNIQUE_ID_author324", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1644, i32 1}
!2 = !{ptr @__UNIQUE_ID_description325, !3, !"__UNIQUE_ID_description325", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1645, i32 1}
!4 = !{ptr @__UNIQUE_ID_file326, !5, !"__UNIQUE_ID_file326", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1646, i32 1}
!6 = !{ptr @__UNIQUE_ID_license327, !5, !"__UNIQUE_ID_license327", i1 false, i1 false}
!7 = !{ptr @__param_hwcursor, !8, !"__param_hwcursor", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1648, i32 1}
!9 = !{ptr @__UNIQUE_ID_hwcursortype328, !8, !"__UNIQUE_ID_hwcursortype328", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_hwcursor329, !11, !"__UNIQUE_ID_hwcursor329", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1649, i32 1}
!12 = !{ptr @__param_mode_option, !13, !"__param_mode_option", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1651, i32 1}
!14 = !{ptr @__UNIQUE_ID_mode_optiontype330, !13, !"__UNIQUE_ID_mode_optiontype330", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_mode_option331, !16, !"__UNIQUE_ID_mode_option331", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1652, i32 1}
!17 = !{ptr @__param_nomtrr, !18, !"__param_nomtrr", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1653, i32 1}
!19 = !{ptr @__UNIQUE_ID_nomtrrtype332, !18, !"__UNIQUE_ID_nomtrrtype332", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_nomtrr333, !21, !"__UNIQUE_ID_nomtrr333", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1654, i32 1}
!22 = !{ptr @__initcall__kmod_tdfxfb__334_1656_tdfxfb_init6, !23, !"__initcall__kmod_tdfxfb__334_1656_tdfxfb_init6", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1656, i32 1}
!24 = !{ptr @__exitcall_tdfxfb_exit, !25, !"__exitcall_tdfxfb_exit", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1657, i32 1}
!26 = !{ptr @mode_option, !27, !"mode_option", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 152, i32 14}
!28 = !{ptr @nomtrr, !29, !"nomtrr", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 153, i32 13}
!30 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 138, i32 11}
!32 = !{ptr @tdfxfb_driver, !33, !"tdfxfb_driver", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 137, i32 26}
!34 = !{ptr @tdfxfb_id_table, !35, !"tdfxfb_id_table", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 124, i32 35}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1381, i32 3}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tdfxfb_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @tdfxfb_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1396, i32 24}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1400, i32 24}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1404, i32 24}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1411, i32 7}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1413, i32 3}
!52 = !{ptr @tdfxfb_probe._entry.8, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tdfxfb_probe._entry_ptr.10, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1420, i32 3}
!56 = !{ptr @tdfxfb_probe._entry.11, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tdfxfb_probe._entry_ptr.13, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1428, i32 3}
!60 = !{ptr @tdfxfb_probe._entry.14, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tdfxfb_probe._entry_ptr.16, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1432, i32 7}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1434, i32 3}
!66 = !{ptr @tdfxfb_probe._entry.18, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tdfxfb_probe._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1441, i32 3}
!70 = !{ptr @tdfxfb_probe._entry.21, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tdfxfb_probe._entry_ptr.23, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1448, i32 7}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1450, i32 3}
!76 = !{ptr @tdfxfb_probe._entry.25, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tdfxfb_probe._entry_ptr.27, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1454, i32 2}
!80 = !{ptr @tdfxfb_probe._entry.28, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tdfxfb_probe._entry_ptr.30, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1487, i32 4}
!84 = !{ptr @tdfxfb_probe.__UNIQUE_ID_ddebug323, !83, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1507, i32 17}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1529, i32 3}
!89 = !{ptr @tdfxfb_probe._entry.33, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tdfxfb_probe._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1534, i32 3}
!93 = !{ptr @tdfxfb_probe._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tdfxfb_probe._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @tdfx_fix, !96, !"tdfx_fix", i1 false, i1 false}
!96 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 86, i32 39}
!97 = distinct !{null, !98, !"nopan", i1 false, i1 false}
!98 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 149, i32 12}
!99 = distinct !{null, !100, !"nowrap", i1 false, i1 false}
!100 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 150, i32 12}
!101 = !{ptr @tdfxfb_ops, !102, !"tdfxfb_ops", i1 false, i1 false}
!102 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1142, i32 28}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 730, i32 2}
!105 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tdfxfb_set_par.__UNIQUE_ID_ddebug318, !104, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 779, i32 3}
!109 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tdfxfb_setcolreg.__UNIQUE_ID_ddebug319, !108, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1329, i32 38}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1330, i32 38}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1284, i32 3}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @tdfxfb_setup_ddc_bus.__UNIQUE_ID_ddebug320, !116, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1312, i32 3}
!121 = !{ptr @tdfxfb_setup_i2c_bus.__UNIQUE_ID_ddebug321, !120, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1349, i32 2}
!124 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @tdfxfb_probe_i2c_connector.__UNIQUE_ID_ddebug322, !123, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 441, i32 3}
!128 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug309, !127, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 452, i32 3}
!132 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug310, !131, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 465, i32 3}
!135 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug311, !134, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 471, i32 3}
!138 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug312, !137, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 479, i32 3}
!141 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug313, !140, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 484, i32 3}
!144 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug314, !143, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 491, i32 4}
!147 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug315, !146, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 499, i32 3}
!150 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug316, !149, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 537, i32 2}
!153 = !{ptr @tdfxfb_check_var.__UNIQUE_ID_ddebug317, !152, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!154 = !{ptr @tdfx_var, !155, !"tdfx_var", i1 false, i1 false}
!155 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 94, i32 39}
!156 = !{ptr @__param_str_hwcursor, !8, !"__param_str_hwcursor", i1 false, i1 false}
!157 = !{ptr @hwcursor, !158, !"hwcursor", i1 false, i1 false}
!158 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 151, i32 12}
!159 = !{ptr @__param_str_mode_option, !13, !"__param_str_mode_option", i1 false, i1 false}
!160 = !{ptr @__param_str_nomtrr, !18, !"__param_str_nomtrr", i1 false, i1 false}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1575, i32 38}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1578, i32 25}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1580, i32 32}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1582, i32 33}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/video/fbdev/tdfxfb.c", i32 1584, i32 33}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i8 0, i8 2}
!181 = !{i64 2148994481, i64 2148994486, i64 2148994499, i64 2148994543, i64 2148994577, i64 2148994598}
!182 = !{i64 6246708}
!183 = !{i64 2156238473}
!184 = !{i64 2156238862}
!185 = !{i64 6246290}
!186 = !{i64 2156234732}
!187 = !{i64 6246093}
!188 = !{i64 2156236939}
!189 = !{i64 6246488}
!190 = !{i64 2156234337}
!191 = !{i64 2156236467}
!192 = !{i64 2156236621}
!193 = !{i64 2156239492}
!194 = !{i64 2156239334}
!195 = !{i64 2156235666}
!196 = !{i64 2156235820}
!197 = !{i64 2156235189}
!198 = !{i64 2156235343}
!199 = !{i64 2156237788}
!200 = !{i64 2156236138}
